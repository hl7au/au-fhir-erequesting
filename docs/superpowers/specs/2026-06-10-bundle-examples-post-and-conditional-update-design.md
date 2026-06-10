# Design: Bundle examples — plain POST default + targeted conditional-update example

**Date:** 2026-06-10
**Status:** Approved (design)
**Supersedes (in part):** decisions in `2026-04-30-diagnosticrequest-transaction-bundle-design.md` regarding actor-entry HTTP methods.

## Background

Reviewer feedback on the Diagnostic Request transaction Bundle examples questioned the
use of conditional create / conditional update on actor entries. The current "basic"
examples (`bundle-imaging-1`, `bundle-pathology-multitest-1`) use `POST` with
`ifNoneExist` (conditional create) on every actor entry (Patient, Practitioner,
PractitionerRole, Organization). Reviewers asked that:

1. The **basic examples use plain `POST`**, creating new resources — the simplest,
   most deterministic semantics to understand.
2. A **separate example demonstrate conditional update (`PUT`)** for a single shared
   resource type (the Organization), showing the distinct semantics.
3. The narrative **explain that conditional update reuses/modifies an existing shared
   resource**, so it affects the data set for *other* diagnostic requests that reference
   that resource — not just the request being submitted.
4. The proposal **presentation** (`docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx`)
   be updated to match.

## Key finding

Invariant `au-ereq-bundle-05` on the abstract bundle profile currently *requires* actor
entries to use either `POST` + `ifNoneExist` (conditional create) **or** `PUT` without
`ifNoneExist` (conditional update). Plain unconditional `POST` therefore **fails
validation** today.

The element-level constraints on the actor slices are permissive:
`entry[<actor>].request.method` is `MS` only (no fixed value) and
`entry[<actor>].request.ifNoneExist` is `0..1 MS` with a `SHALL:populate-if-known`
obligation. So **invariant `au-ereq-bundle-05` is the sole gate** blocking plain POST.
Removing it is sufficient — no further profile surgery is required.

## Decisions

- **Remove invariant `au-ereq-bundle-05` entirely** (chosen over relaxing it to permit
  all three forms). The method/`ifNoneExist` pairing becomes non-normative guidance
  rather than an enforced constraint.
- **Conditional-update example uses `PUT` on the Organization entries only**; all other
  actors use plain `POST`.

## Changes

### 1. Profile (`input/fsh/au-erequesting-bundle-diagnosticrequest.fsh`)

- Delete invariant `au-ereq-bundle-05` (definition block, lines ~537–540).
- Leave the remaining invariant keys unchanged (`au-ereq-bundle-01/02/03/04/06`) — do
  **not** renumber `06`, to avoid breaking references; the numbering gap is harmless.
- Update the abstract profile `Description` (line 5): the current wording states actor
  entries use `ifNoneExist` "so the server only creates resources that don't already
  exist." Rework so the default is plain `POST` (create new), with conditional create
  and conditional update described as optional patterns.

### 2. Examples (`input/examples/`)

| Example | Current | Target |
|---|---|---|
| `bundle-imaging-1.xml` (basic) | `POST` + `ifNoneExist` on 5 actors | Plain `POST` — remove all `ifNoneExist`; `request.url` stays the resource type |
| `bundle-pathology-multitest-1.xml` (basic, multi-test) | `POST` + `ifNoneExist` on 5 actors | Plain `POST` — remove all `ifNoneExist` |
| `bundle-imaging-put-1.xml` (conditional update) | `PUT` on all 5 actors | `PUT` on the **2 Organization entries only** (`Organization?identifier=…\|HPI-O`); Patient / Practitioner / PractitionerRole become plain `POST` (drop the `?identifier=…` query from `request.url`) |

Workflow resources (ServiceRequest, Task, Encounter, Coverage, etc.) remain plain
`POST` in all examples — unchanged.

### 3. Narrative (`input/pagecontent/workflow.md`, "Transaction Bundle Assembly")

- Rewrite the actor-method bullets (lines ~372–376):
  - **Default: plain `POST`** — creates a new resource every time; simplest and
    deterministic.
  - **Optional: conditional create** (`POST` + `ifNoneExist`) when the placer knows the
    actor's identifier on the target server.
  - **Optional: conditional update** (`PUT … ?identifier=…`) — creates if no match,
    updates if exactly one match.
  - Remove the reference to the deleted invariant `au-ereq-bundle-05`.
- **Add the cross-request caveat:** conditional update to a shared resource (e.g. the
  requesting Organization) modifies the stored resource in place, so it changes the data
  seen by **every other diagnostic request that references that Organization**, not only
  the request being submitted. Plain `POST` avoids this by always creating a fresh
  resource.
- Update the *Example bundles* list: add `bundle-imaging-put-1` (one-line description as
  the conditional-update example) and re-describe `bundle-imaging-1` as plain `POST`.

### 4. `sushi-config.yaml`

Update the three `resources:` descriptions added earlier so they match the new
semantics: `bundle-imaging-1` = plain create (not conditional create);
`bundle-imaging-put-1` = "conditional update of the Organization entries."

### 5. Presentation (`…-2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx`)

- `pip install python-pptx`; copy the file to `.bak` first; edit in place.
- **Slide 9 (Issue 1 – Bundle entry methods):** reframe from open question to
  resolution — basic bundles use plain `POST`; conditional update (`PUT`) is an advanced
  pattern for shared resources, with the cross-request side-effect noted.
- **Slide 7 (Worked examples):** reflect the three examples — two plain-`POST` basics
  plus the Organization-`PUT` conditional-update example.
- **Slide 5 (Transaction semantics):** adjust any "conditional create on actors" wording
  to "plain `POST` by default."

## Verification

- Rebuild the IG (`java -jar input-cache/publisher.jar -ig .`).
- Confirm the three bundle examples validate (they will, with `au-ereq-bundle-05` gone).
- Confirm the total error count does not rise above the existing 35 terminology errors
  (`PGN` / `payconc` / `SMSWRIT`), which are unrelated to this change.
- Confirm bundle invariants `01–04` and `06` still pass on all examples.

## Out of scope

- The 35 pre-existing terminology errors (`PGN` / `payconc` / `SMSWRIT`) — tracked
  separately.
- Any change to workflow-resource methods or to the Task / ServiceRequest profiles.
