# Job request summary

Summary of the request in the *Engineer in perth* and *Excavator report* email chains (12–23 October 2026), with [B2600003A.pdf](B2600003A.pdf) as the example report HSE Pacific asked Switch to match.

Switch has been asked to agree a statement of work and take the job on. No quote or commercial terms have been agreed in these chains.

## What HSE asked for

HSE Pacific needs an engineer in Western Australia to produce a report on a Liebherr excavator auto-stop / camera installation, in the same form as Comptune Engineering report B2600003A (a front-end loader). Tom King described the attachment as “something like the attached so that I can satisfy the report requirements for the 922s.”

On 20 October he asked for a quote to look at HSE’s drawings and validate the solution the way that loader report does. The validation is expected on a machine, with the report written from the site visit. Rio Tinto wants it as soon as possible, ahead of a wider rollout.

Gareth Topham (CWG Projects), who introduced the work, described it as a technical review of a camera installation on an excavator for a Rio Tinto hi-rail.

## Parties

| Who | Role on this request |
| --- | --- |
| Tom King, HSE Pacific (tomk@hsepacific.com.au, 0427 863 937) | WA business development. Raised the request and is the day-to-day contact. |
| Chris Newton, HSE Pacific (chris@hsepacific.com.au, 0400 988 920) | CEO. Asked Switch for a green light and set the Rio timing. |
| Mick Dalton, HSE Pacific (Mickd@hsepacific.com.au) | Holds the drawings and paperwork already given to Liebherr, and the machine videos. |
| Paul Rozier, HSE Pacific (paulr@hsepacific.com.au) | Copied on the excavator-report thread. |
| Gareth Topham, CWG Projects (g.topham@cwgprojects.com.au) | Introduced Tom’s request to Switch on 12 October. |
| Mike O'Hanlon, Switch | Accepted the work and asked Sean to own the SOW. |
| Sean Bourke, Switch | Asked to agree the SOW and take ownership (23 October). |

## Site and timing

- HSE has not yet found a machine in Perth. Karratha is the fallback. Switch has said Karratha is acceptable.
- Rio needs the work done quickly. Chris Newton’s note on 22 October is that Rio has to be taken through the final stages before a mass rollout, and that Switch’s green light is needed as soon as possible.
- Switch is not yet onboarded with Rio. Tom forwarded Rio’s mobilisation list on 22 October and asked for names and dates of availability.

Mike’s indicative effort, sent to Tom on 21 October and not a quote: a couple of days of preparation and familiarisation, a day on site, and a day or two to write the report.

## What Rio asked HSE to supply before the test

Tom forwarded this list for approval and mobilisation:

- Names of people coming to site, and confirmation that required qualifications are current.
- Certificate of currency (liability, and indemnity where it applies).
- A test plan: description of the equipment being installed, the tasks, and the days or hours to complete them.
- A JHA completed on site before the retrofit / test starts.

## Material HSE will provide

Mick Dalton and Tom King can provide:

- Drawings and paperwork already supplied to Liebherr. The approach is to tap into safety stopping systems already on the machine. Chris Newton’s account is that Liebherr are content with that approach and will not endorse a third-party safety system.
- Videos of how the machines function.

Those drawings, the paperwork, and the videos were offered on 22 October. They are not in this folder yet.

## Example report — B2600003A

Comptune Engineering, signed by Bradley Aiken (VSCCS No. 150017, Engineers Australia No. 4169858) on 3 July 2026. Five pages. This is the loader report Tom pointed to. It is not a report on the Liebherr.

| Item | As stated in the report |
| --- | --- |
| Client | HSE Pacific |
| Title | Auto-Stop Modifications |
| Sample machine | Komatsu WA470-8, SN 100804, PIN KMTWA129KNA100804 |
| Document | B2600003A |
| Inspection | 1 July 2026, Veolia Chullora, 75 Anzac Street, Chullora NSW 2190 |
| Standard reviewed | AS 3450:2021, *Earth-moving machinery — Wheeled or high-speed rubber-tracked machines — Performance requirements and test procedures for brake systems* |

AS 3450:2021 is the standard the loader report reviews. It applies to wheeled or high-speed rubber-tracked machines. The Liebherr 922 is an excavator, so that standard does not automatically carry across.

### What the inspected kit does

The device is meant to detect a pedestrian in the path of the machine and apply the service brakes to slow it.

On the WA470-8 the kit had already been fitted. Findings in the report:

- Detection cameras on the rear, and on both sides facing rearward, to detect pedestrians the operator may not see. Photos show one camera centred on the rear grille and one on each rear corner of the cab.
- Service brakes are hydraulically actuated wet disc brakes on all four wheels. The parking brake is a wet disc brake. The emergency brake is commonly the parking brake. Appendix A is the WA470-8 specification sheet (engine, transmission, axles, brakes, steering, hydraulics, refill capacities).
- A relay is wired from the detection cameras to a solenoid teed into the brake circuit after the accumulator. A signal from the cameras applies the service brakes.
- A manual knob on the solenoid sets brake-line flow within the accumulator’s maximum output on the new circuit. Flow is set for the weight of the machine and the speeds it is used at: higher speed needs higher flow to stop in time; lower speed can use less flow so the stop is easier on the operator.
- The tee is downstream of the service-brake accumulator, so the original brake system and its OEM set pressures stay as they were. The added circuit applies the brakes at a lower flow. The report’s example is a camera detection set to about 50% line flow, with the operator still able to press the pedal and get a higher flow.
- After fitment, a test drive is required to confirm the system and to set the solenoid knob.

### Conclusion of the example

The install method could be used on machines with a similar hydraulically actuated braking system. AS 3450:2021 was reviewed against the modification. Kits need care in fitting, and function has to be verified by a test drive after installation.

### How the example is put together

The report HSE wants is this shape:

1. Cover block: client, modification, sample machine (make, model, serial, PIN), document reference, inspection date and location, standard reviewed.
2. Background: what the device is intended to do, with a photo of the machine and its identification plate.
3. Inspection findings: what is fitted, where the cameras are, how the brakes work, how the kit joins the brake circuit, and that the operator can still brake harder than the kit.
4. Requirement for a test drive after fitment, and the standard reviewed.
5. Short summary of whether the method is suitable, and the conditions on fitment and verification.
6. Named engineer, registration numbers, signature, and date.
7. Appendices: OEM specification sheet, and a wiring diagram of the kit (Appendix B: camera, relay, solenoid, host, screen, ignition supply, and fuse panel).

## Client context that sits beside the job

Chris Newton’s 22 October email is a partnership note as well as a chase for the Rio work. The parts that bear on this job:

- HSE has been installing AI safety systems with tier-one clients, including Rio and BHP, and is moving from a resold product to its own product with Autobrains, aimed at the market in mid-December 2026.
- The near-term engineering subject is the interface into the machine: hardware, install method, and middleware onto the CAN bus so the system can act on the machine, using stopping systems already there.
- Liebherr will not endorse the third-party system. The report is the route HSE is using to satisfy Rio.

The same email covers HSE’s wider product, training, and company plans. That material is not part of the report request.

## Position already taken inside Switch

These points are from internal mail, not from an agreement with HSE:

- 15 October: Mike is willing to take the work on an hourly-rates basis, and suggested Sean and possibly Matthew Buss look at it. He then told Gareth that Switch would take it on.
- 23 October: Mike asked Sean to agree an SOW with HSE and to own the job.

## Open points

- No machine is confirmed. Perth is preferred; Karratha is accepted if Perth cannot be found.
- Drawings, Liebherr paperwork, and functionality videos have been offered and not yet received.
- Switch is not onboarded with Rio. The mobilisation pack and dates of availability are still outstanding.
- A quote was requested on 20 October. None has been sent in this chain.
- The example report is a wheel loader under AS 3450:2021. The target is a Liebherr 922 excavator, using existing stopping systems rather than necessarily the same post-accumulator brake tee.

## Source emails

| Date (AWST) | From | Subject | What it adds |
| --- | --- | --- | --- |
| 12 Oct, 08:59 | Tom King | Engineer in perth | Asks Gareth for a WA engineer to do this report on the Liebherr. |
| 12 Oct, 09:56 | Gareth Topham | RE: Engineer in perth | Asks whether Tom means the warranty report or the S7 relay report. |
| 12 Oct, 12:15 | Tom King | Re: Engineer in perth | Attaches B2600003A. Wants that kind of report for the 922s. |
| 12 Oct, 16:37 | Gareth Topham | FW: Engineer in perth | Forwards the request to Sean: technical review of a camera installation on an excavator, for a Rio Tinto hi-rail. |
| 15 Oct | Sean Bourke, Mike O'Hanlon, Gareth Topham | RE: Engineer in perth | Switch reviews it and accepts the work. |
| 20 Oct, 11:32 | Tom King | Excavator report | Asks Mike for a quote to review the drawings and validate the solution as in the loader report. Machine may be in Karratha. Rio needs it soon. |
| 20 Oct, 11:37 | Mike O'Hanlon | Re: Excavator report | Karratha is acceptable. |
| 21 Oct, 13:29 | Tom King | Re: Excavator report | Asks if Switch is onboarded with Rio, and how long an on-site report would take. |
| 21 Oct, 15:11 | Mike O'Hanlon | Re: Excavator report | Not onboarded with Rio. Indicative effort as above. |
| 22 Oct, 17:48 | Tom King | Re: Excavator report | Forwards Rio’s mobilisation and test-plan requirements. Asks for availability. |
| 22 Oct, 20:59 | Chris Newton | RE: Excavator report | Asks for a green light. Offers Liebherr drawings, paperwork, and videos. Sets the Rio rollout context. |
| 23 Oct, 08:24 | Mike O'Hanlon | Fw: Excavator report | Asks Sean to agree an SOW and own the job. |
