# Information and decisions for the statement of work

Internal checklist for issuing [`docs/sow.md`](../docs/sow.md). The draft already describes the job. This note is what still has to be decided or supplied before that draft can go to HSE Pacific.

The generator always prints a resource-budget table and a Master Services Agreement date. Unset fees render as `[Insert]`. An unset agreement date renders as `[insert date]`. Those two blanks, and the wording of the opinion, are what block issue. Machine identity, drawings, and the host site can stay as assumptions.

Sources: [`project-background.md`](project-background.md), [`job-request-summary.md`](job-request-summary.md), [`safety-summary.md`](safety-summary.md), [`B2600003A.pdf`](B2600003A.pdf), and the `sow` schema in `switch-document-gen`.

## Already in the draft

Leave these as they stand unless a decision below changes them.

- Parties, addresses, title, reference `SOW-HSE-001`, and the date 23 October 2026.
- One sample Liebherr 922. Perth preferred. Karratha if Perth cannot be found. Travel and accommodation outside Perth at cost.
- Work is a document review, one inspection, and one engineering report in the form of B2600003A. Design, supply, installation, a fleet rollout, a Liebherr endorsement, a regulatory type approval, and Rio Tinto’s acceptance of the report are out of scope.
- The report names the standard reviewed for the machine it finds, and describes the stopping arrangement on that machine. Findings cover the sample machine and the same method on machines with a similar arrangement, subject to fitment and verification.
- HSE Pacific supplies the Liebherr drawings, paperwork, and videos, access to one machine, and approval for Switch to attend.
- Rio’s mobilisation list is in scope: names and dates, qualifications, certificates of currency, a test plan, and a job hazard analysis on site.
- No bill of materials. No warranty period. No kick-off payment. The default rate card would apply if `rates` stays unset (Director $420 through Administrative Support $105, 1 July 2026 – 30 June 2027).
- Acceptance of the report is the scoped inspection and report, unless a material deficiency is raised within 10 business days.

Mike’s effort note of 21 October — a couple of days of preparation, a day on site, a day or two to write the report — is not a quote. It stays out of the fee table until the commercial decision below is made.

## Decisions before issue

Each item changes the front-matter or the deliverable wording. Record the answer here, then update the draft.

### 1. Fee basis

Tom King asked for a quote on 20 October. On 15 October Mike O'Hanlon was willing to take the work on hourly rates, and named Sean Bourke and possibly Matthew Buss.

Decide:

- Time and materials against Appendix A, or a fixed fee.
- The rows in the resource-budget table: role or phase, hours, rate, and total, plus `fees_total`.
- Whether any kick-off payment is invoiced on execution.
- Whether this job uses the default rate card or a `rates` override.
- Who the hours are for.

### 2. Master Services Agreement

The template states that this statement of work forms part of a Master Services Agreement, and that the agreement prevails if the two conflict. No agreement with HSE Pacific is on file. Until one exists, no liability cap, exclusion, or insurance obligation applies to this job. A cap agreed later with HSE Pacific would limit claims by HSE Pacific. It would not bind Rio Tinto or a person injured by the machine.

Decide:

- Whether an agreement already exists, and its date (`msa_date`).
- If none exists, whether one is signed with this statement of work or before it.
- The cap, the exclusions, and the insurance obligation that agreement will carry for a signed engineering opinion.

### 3. What the report is allowed to conclude

The draft commits Switch to a report in the form of B2600003A. The example, signed by Bradley Aiken on 3 July 2026, goes further than a note on one machine. Its summary says the install method could be used on machines with a similar hydraulically actuated braking system, provided the kits are fitted with care and function is verified by a test drive. It states that the original brake system and its set pressures stay as they were, that a camera detection applies the service brakes at a reduced flow, and that the operator can still demand more with the pedal. It names AS 3450:2021 as the standard reviewed against the modification, and records no brake-performance test from that standard.

Those sentences are the liability described in [`safety-summary.md`](safety-summary.md). They are also the sentences least likely to survive a move from the Komatsu WA470-8 brake tee to a Liebherr 922. On the 922 the kit may tee into a travel-brake circuit, disengage hydraulics, or request a stop over CAN. Rail-wheel drum brakes and the wagon air brake sit outside a road-brake tee. AS 3450:2021 applies to wheeled or high-speed rubber-tracked machines. It covers road travel on an A 922 Rail. It does not cover an R 922 crawler, swing, equipment, a hydraulic lockout, or a CAN intervention.

Decide, and write the decision into the deliverable description:

- Whether the conclusion may say the method is suitable for a class of machines, or only for the sample machine.
- That “brakes unaltered” and “the operator can still command a stop beyond the kit” appear only when the inspection supports them for the circuit actually found.
- Which standards the report may name. AS 3450:2021 for road travel on a wheeled A 922 Rail. ISO 10265 if the sample is an R 922 crawler. ISO 21815 if the kit intervenes over CAN. EN 15746 only where the report is describing railroad-machine equipment limits Liebherr already cites. The report names a standard that covers the machine and the intervention it finds.
- Who signs the report, and with which registration. The example carries a Vehicle Safety Compliance Certification Scheme appointment and an Engineers Australia number. Western Australia does not generally licence professional engineers. An Engineers Australia number is membership. The statement of work should ask for the registration the Switch engineer holds.
- That the opinion sits inside Switch’s professional indemnity policy, and for what limit. The limit is not in this repository. Rio’s certificate of currency evidences cover. It does not set the amount of the opinion. Confirm this before anyone signs the report.

### 4. Boundary with HSE Pacific’s product

Chris Newton’s email of 22 October is a partnership note as well as this job. HSE Pacific is moving from the resold Safety Shield product to its own product with Autobrains, aimed at the market in mid-December 2026. He named the machine interface as hardware, install method, and middleware onto the CAN bus, using stopping systems already on the machine.

Decide whether this statement of work stays a review of one installation, which is what the draft says, or whether any of that interface work is pulled into the scope. Product development and training stay out either way.

### 5. Who signs, and the mobilisation pack

Decide:

- Switch’s authorised signatory: name and title. The execution block is filled by hand.
- HSE Pacific’s authorised signatory: name and title. Tom King is the day-to-day contact. Chris Newton is the CEO. Paul Rozier is copied on the thread.
- Whether Rio’s mobilisation pack is paid work inside the fee, which is how the draft treats it, or material Switch supplies as a condition of attendance.
- Whether the cover waits for an HSE Pacific logo. None is in `switch-document-gen/assets/customers/`. Until `customer_image` is set, the cover shows the placeholder.

## Information the draft can leave open

These block the inspection and the report. They do not block issue while the assumptions in the draft stay.

| Item                                                                                         | Holder                                  | What it settles                                                                                                                                                              |
| -------------------------------------------------------------------------------------------- | --------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sample machine: site, serial, P/N, and whether it is an A 922 Rail, an R 922, or another 922 | HSE Pacific (Tom King, Mick Dalton)     | Cover identity, and which standard can be named                                                                                                                              |
| Road and rail configuration on that machine: gauge, Speeder option, wagon brake              | The machine and its specification sheet | Which circuits sit outside a road-brake tee                                                                                                                                  |
| Drawings and paperwork already given to Liebherr                                             | Mick Dalton                             | How the kit joins the machine. Appendix wiring. Offered 22 October and not yet received                                                                                      |
| Videos of how the machines function                                                          | Mick Dalton                             | Preparation before the visit. Offered with the drawings                                                                                                                      |
| Circuit the kit joins, and the motion it stops                                               | The drawings, confirmed on the machine  | Inspection findings. Arrangements in view are a solenoid teed after the service-brake accumulator, a hydraulic disengage in the detection zone, and a request on the CAN bus |
| Host site, and approval for Switch to attend, including any Rio Tinto requirement            | HSE Pacific                             | The visit. Switch is not onboarded with Rio Tinto                                                                                                                            |
| Perth or Karratha                                                                            | HSE Pacific. No Perth machine found yet | Whether travel is at cost                                                                                                                                                    |
| Qualifications Rio requires, and the insurance types and limits on the certificate           | Tom King, from Rio Tinto                | The mobilisation pack                                                                                                                                                        |
| Switch attendees, dates of availability, and confirmation that qualifications are current    | Switch                                  | Tom asked for this on 22 October                                                                                                                                             |
| Switch certificates of currency for the insurances the site requires                         | Switch                                  | The same pack                                                                                                                                                                |

## Order

1. Decide the opinion limits, the signing engineer and registration, and confirm the indemnity position.
2. Set the fee basis, the hours and rate, and the Master Services Agreement path.
3. Ask HSE Pacific for the drawing pack, the machine, the signatory, and a logo if the cover should carry one.
4. Update [`docs/sow.md`](../docs/sow.md) so the deliverable wording and the front-matter match those decisions.
5. Generate from `switch-document-gen` into `build/` and send.
