# Generate Switch-branded PDF and Word from docs/sow.md
# using the sibling switch-document-gen repository.
param(
    [string]$InputFile = "docs/sow.md",
    [ValidateSet("pdf", "docx", "both")]
    [string]$Format = "both"
)

$ErrorActionPreference = "Stop"

$RepoRoot = $PSScriptRoot
$DocGen = Join-Path (Split-Path $RepoRoot -Parent) "switch-document-gen"
$InputPath = Join-Path $RepoRoot $InputFile
$OutDir = Join-Path $RepoRoot "build"
$Stem = [System.IO.Path]::GetFileNameWithoutExtension($InputPath)
$OutPath = Join-Path $OutDir "$Stem.pdf"

if (-not (Test-Path $DocGen)) {
    throw "switch-document-gen not found at $DocGen. Clone it as a sibling of this repository."
}
if (-not (Test-Path $InputPath)) {
    throw "Input not found: $InputPath"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$env:PYTHONUTF8 = "1"
$env:PYTHONIOENCODING = "utf-8"

$GtkBin = "C:\Program Files\GTK3-Runtime Win64\bin"
if (Test-Path $GtkBin) {
    $env:Path = "$GtkBin;$env:Path"
}

Push-Location $DocGen
try {
    # Native stderr (WeasyPrint/GTK warnings) must not abort the script;
    # only a non-zero exit from switchdoc.cli is a real failure.
    $prevEap = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    python -X utf8 -m switchdoc.cli $InputPath --format $Format -o $OutPath
    $exit = $LASTEXITCODE
    $ErrorActionPreference = $prevEap
    if ($exit -ne 0) {
        throw "switchdoc.cli failed with exit code $exit"
    }
}
finally {
    Pop-Location
}
