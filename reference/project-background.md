# Project background

Internal briefing for the HSE Pacific engagement. The client document is [sow.md](../docs/sow.md). The October 2026 email chain is summarised in [job-request-summary.md](job-request-summary.md). The report HSE Pacific asked Switch to match is [B2600003A.pdf](B2600003A.pdf).

No quote has been agreed. Fees in the statement of work are unset.

## The job

HSE Pacific is fitting a camera and auto-stop system to Liebherr 922 excavators for Rio Tinto. The system is intended to detect a person in the machine's path and stop the machine, using stopping systems already on the machine. Liebherr will not endorse the third-party system. Chris Newton's account is that Liebherr are content with the use of stopping systems already fitted, and that the engineering report is how HSE Pacific will satisfy Rio ahead of a wider rollout.

Switch reviews the drawings and paperwork already given to Liebherr, inspects one sample machine, and writes a report in the form of Comptune Engineering report B2600003A. The report identifies the machine, describes what is fitted and how it joins the existing stopping systems, names the standard reviewed, and states whether the method is suitable and on what conditions.

The sample machine is still to be confirmed. Perth is preferred. Karratha is acceptable if a machine in Perth cannot be found.

## Client

HSE Pacific Pty Ltd, ACN 649 643 005, ABN 33 649 643 005. Registered 22 April 2021 and registered for GST from that date. Former names are Solution Technology Hire Pty Limited and Earthmoving Technology Solutions Pty Ltd. The HSE Pacific name dates from 2025.

| | |
| --- | --- |
| Head office | 15 Stanton Road, Seven Hills NSW 2147 |
| Perth | 25 Hensbrook Loop, Forrestdale WA 6112 |
| Also | Brisbane (Bundamba), Melbourne (Epping) |
| Phone | 1800 473 722 |

Publicly, HSE Pacific distributes Safety Shield, an AI camera system made by Safety Shield Global in the United Kingdom. Cameras alert on a human form only. Detection zones are set between 0.5 m and 50 m. The published auto-stop disengages the machine's hydraulics when a person enters the red zone, and restores them when the zone is clear. An in-cab Digital Thumbs Up button disables the machine so a person can approach. HSE Pacific also sells Ogden radar, including a version that applies the brakes if the driver does not react. The request and the example report are about the camera installation.

Chris Newton's email of 22 October 2026 adds a product move that is not on the public site. HSE Pacific has been installing AI safety systems with tier-one clients, including Rio and BHP, and is moving from the resold Safety Shield product to its own product with Autobrains, aimed at the market in mid-December 2026. For this job he named the machine interface: hardware, install method, and middleware onto the CAN bus, using stopping systems already on the machine.

## Parties on this request

| Who | Role |
| --- | --- |
| Tom King, HSE Pacific (tomk@hsepacific.com.au, 0427 863 937) | WA business development. Day-to-day contact. Asked for a report "something like" B2600003A for the 922s. |
| Chris Newton, HSE Pacific (chris@hsepacific.com.au, 0400 988 920) | CEO. Set the Rio timing and offered the Liebherr drawings, paperwork, and videos. |
| Mick Dalton, HSE Pacific (Mickd@hsepacific.com.au) | Holds those drawings, the paperwork already given to Liebherr, and the machine videos. |
| Paul Rozier, HSE Pacific (paulr@hsepacific.com.au) | Copied on the excavator-report thread. |
| Gareth Topham, CWG Projects (g.topham@cwgprojects.com.au) | Introduced the request on 12 October as a technical review of a camera installation on an excavator for a Rio Tinto hi-rail. |
| Mike O'Hanlon, Switch | Accepted the work and asked Sean Bourke to agree the statement of work and own the job. |

## The machine

The request names Liebherr 922s and a Rio Tinto hi-rail excavator. The Liebherr machine that matches both is the **A 922 Rail Litronic**, a wheeled excavator with rail wheels, built to run on road and on track. The crawler in the same size class is the R 922. It has no rail gear. The serial and PIN on the sample machine confirm which one is presented.

Published data for the current A 922 Rail Litronic (Liebherr brochure; confirm against the sample machine and its specification sheet):

| Item | Published figure |
| --- | --- |
| Operating weight | 20,400–23,400 kg |
| Engine | 120 kW / 163 HP |
| Road travel | Stepless to 20 km/h. Speeder option 25 or 30 km/h |
| Off-road | 7 km/h, with a slower creeper |
| Hydraulics | Two variable-displacement pumps, 2 × 220 l/min, 350 bar (PowerLift 375 bar) |
| Rail gauge | 1,435 mm standard. Narrow gauge is an option. Pilbara iron-ore rail is 1,435 mm |
| Tail swing | 2,000 mm |

Stopping systems already on that machine, from the same published data:

- **Travel brakes.** Two-circuit system with an accumulator. Road axles use wet, backlash-free disc brakes. Rail wheels use drum brakes, which Liebherr says remain effective when the machine is raised.
- **Holding brake.** Wet multi-disc, spring applied and pressure released.
- **Travel drive.** Axial-piston motor with a functional brake valve on both sides.
- **Swing.** Axial-piston motor with an integrated brake valve, a wet multi-disc holding brake, and a pedal positioning brake. Published swing speed is 0–9 rpm.
- **Wagon brake.** A separate single-circuit compressed-air brake for a railway wagon. Two-circuit air or hydraulic trailer brakes are options. Braking the excavator does not brake a coupled wagon unless that circuit is included.
- **Co-driver emergency brake** and horn, in the two-seat cab.
- **Equipment protection already fitted by Liebherr.** Pipe-fracture valves on the hoist and stick cylinders, electronic lift and slew limits, a virtual wall, and load-moment limitation to EN 15746-2. These limit the working equipment. They are not a pedestrian detection stop.

## What the inspection has to establish

The drawings Mick Dalton holds are the source for how this kit joins the machine. They were offered on 22 October and are not in this repository yet. Two arrangements are in view, and they stop different motions:

- The loader report tees a solenoid into the service-brake circuit after the accumulator. A knob sets flow. OEM brake pressures stay as they were, and the operator can still demand more flow with the pedal.
- HSE Pacific's published Safety Shield auto-stop disengages the hydraulics in the red zone. That removes command from the equipment and swing. It is a different intervention from applying the travel brakes.

The site inspection records which arrangement is fitted, where the cameras look, which motion actually stops (road travel, rail travel, swing, equipment, or a hydraulic pilot), and whether the operator can still command a stop beyond the kit. If the kit tees into the travel-brake accumulator, the loader report's constraint applies: the original brake system and its set pressures stay as they were. ISO 3450 treats a failure in another system that takes power from the service brakes, and that reduces braking, as a service-brake failure.

On rail, two further circuits sit outside a road-brake tee. The rail-wheel drum brakes are the travel brake on track, including when the machine is raised. The wagon air brake is separate.

## The example report

Comptune Engineering, signed by Bradley Aiken (VSCCS No. 150017, Engineers Australia No. 4169858) on 3 July 2026. Five pages. Client HSE Pacific. Title *Auto-Stop Modifications*. Sample machine Komatsu WA470-8, SN 100804, PIN KMTWA129KNA100804. Inspection 1 July 2026 at Veolia Chullora, 75 Anzac Street, Chullora NSW. Standard reviewed: AS 3450:2021.

The report HSE Pacific wants has this shape:

1. Cover block: client, modification, sample machine (make, model, serial, PIN), document reference, inspection date and location, standard reviewed.
2. Background: what the device is intended to do, with a photo of the machine and its identification plate.
3. Inspection findings: what is fitted, where the cameras are, how the stopping systems work, how the kit joins them, and whether the operator can still stop harder than the kit.
4. Verification after fitment, and the standard reviewed.
5. A short conclusion on whether the method is suitable, and the conditions on fitment and verification.
6. Named engineer, registration numbers, signature, and date.
7. Appendices: OEM specification sheet, and a wiring diagram of the kit.

Findings in B2600003A are for that loader and for the same method on machines with a similar hydraulically actuated braking system, subject to care in fitting and a test drive after installation. The statement of work carries the same limit across: the sample machine, and the same method on machines with a similar arrangement.

## Standard to review

AS 3450:2021, *Earth-moving machinery — Wheeled or high-speed rubber-tracked machines — Performance requirements and test procedures for brake systems*, is the standard the loader report reviews. It is the Australian adoption, with modifications, of ISO 3450:2011. It applies to rubber-tyred earth-moving machines, including on work sites, in mining, and on public roads.

The A 922 Rail is a rubber-tyred machine with a published road speed of 20 km/h, and 25 or 30 km/h with the Speeder option. Road travel sits inside that scope. The statement of work leaves the standard to be named in the report once the sample machine and the interface are known.

AS 3450 covers service, secondary, and parking brake performance for that road travel. The rail-wheel drum brakes, the wagon air brake, the swing holding brake, and a hydraulic lockout are separate. EN 15746 is the railroad-machine standard Liebherr cites for load-moment limitation. ISO 21815 is the collision warning and avoidance series, including the onboard interface between a collision system and the machine. It is the series to consider if the kit intervenes over CAN rather than through a solenoid in a brake or pilot line.

Crawler braking is ISO 10265, for steel or rubber tracks at under 20 km/h. That standard applies if the sample machine is an R 922 crawler rather than the A 922 Rail.

## Site and mobilisation

Rio's list, forwarded by Tom King on 22 October, asks for the following before the test:

- Names of people coming to site, and confirmation that required qualifications are current.
- Certificate of currency for liability, and for indemnity where it applies.
- A test plan: the equipment being installed, the tasks, and the days or hours to complete them.
- A job hazard analysis completed on site before the retrofit or test starts.

Switch is not onboarded with Rio. HSE Pacific arranges approval for Switch to attend, including any requirement of the host site. Where the machine is outside Perth, travel and accommodation are charged at cost.

Mike O'Hanlon's indicative effort, sent on 21 October and not a quote: a couple of days of preparation and familiarisation, a day on site, and a day or two to write the report.

## Open points

- The sample machine, its serial and PIN, and whether it is an A 922 Rail or another 922.
- Road and rail configuration on that machine: gauge, Speeder, and whether a wagon brake is fitted.
- Drawings, Liebherr paperwork, and functionality videos, offered and not yet received.
- Which circuit the kit joins, and which motion it stops.
- The standard the report will name, once the machine and the interface are known.
- A host site. Perth is preferred. Karratha is the fallback.
- Switch names, dates, qualifications, insurances, and the test plan for Rio's mobilisation list.
- A quote. None has been sent.

## Sources

- HSE Pacific site and contact page, [hsepacific.com.au](https://hsepacific.com.au/), including the Safety Shield and auto-stop descriptions.
- ASIC / ABR public extracts for HSE Pacific Pty Ltd, ABN 33 649 643 005.
- Liebherr A 922 Rail Litronic brochure and product page, including travel speeds, the two-circuit travel brake, rail-wheel drum brakes, swing brake, and wagon brake. Liebherr cites EN 15746-2 for load-moment limitation on this machine.
- [Liebherr's A 922 Rail Litronic brings flexibility to the fore](https://www.railexpress.com.au/liebherrs-a-922-rail-litronic-brings-flexibility-to-the-fore/), Rail Express, 19 November 2025.
- AS 3450:2021 / ISO 3450:2011. ISO 10265:2008 for crawler braking. ISO 21815 series for collision warning and avoidance.
- Email chains *Engineer in perth* and *Excavator report*, 12–23 October 2026, as summarised in the reference note.
