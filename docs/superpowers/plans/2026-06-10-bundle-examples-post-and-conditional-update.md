# Bundle examples — plain POST + conditional-update Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make the basic Diagnostic Request Bundle examples use plain `POST` (create new), refocus the PUT example to conditional-update of the Organization only, document the cross-request side effect, and update the proposal deck — removing the invariant that currently forbids plain POST.

**Architecture:** A FHIR Implementation Guide built with SUSHI + the HL7 IG Publisher. "Tests" are the publisher's QA validation (`output/qa.txt`); fast intermediate checks use `grep`/`xmllint` on the source files. Changes touch one FSH profile, three raw-XML example bundles, one narrative page, the SUSHI config, and one PowerPoint deck.

**Tech Stack:** FSH (FHIR Shorthand), FHIR R4 XML, Markdown, YAML, HL7 IG Publisher (Java jar in `input-cache/`), `python-pptx`.

**Conventions for this plan:**
- Run all commands from the repo root: `/Users/andy.bond2/src/github/au-fhir-erequesting`.
- A full IG build takes ~2.5 min: `export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8" && java -jar input-cache/publisher.jar -ig . > /tmp/ig-build.log 2>&1`. We build once at the end (Task 7), not per task.
- Baseline before this work: **35 errors, 25 warnings** (the 35 are pre-existing `PGN`/`payconc`/`SMSWRIT` terminology errors, out of scope). Success = error count **does not exceed 35** and the 3 bundle examples carry **no new errors**.
- The working branch is `ft-bundle-support`.

---

### Task 1: Remove invariant `au-ereq-bundle-05` and update the abstract profile description

**Files:**
- Modify: `input/fsh/au-erequesting-bundle-diagnosticrequest.fsh` (line 11 `obeys` list, line 5 `Description`, invariant block lines ~537–540)

- [ ] **Step 1: Remove `au-ereq-bundle-05` from the `obeys` list (line 11)**

Change:
```fsh
* obeys au-ereq-bundle-01 and au-ereq-bundle-02 and au-ereq-bundle-03 and au-ereq-bundle-04 and au-ereq-bundle-05 and au-ereq-bundle-06
```
to:
```fsh
* obeys au-ereq-bundle-01 and au-ereq-bundle-02 and au-ereq-bundle-03 and au-ereq-bundle-04 and au-ereq-bundle-06
```

- [ ] **Step 2: Delete the invariant definition block (lines ~537–540)**

Remove these four lines in full:
```fsh
Invariant: au-ereq-bundle-05
Description: "Actor resource entries (Patient, Practitioner, PractitionerRole, Organization) shall use HTTP POST with ifNoneExist for conditional create, or HTTP PUT (without ifNoneExist) for conditional update by identifier."
Severity: #error
Expression: "entry.where(resource is Patient or resource is Practitioner or resource is PractitionerRole or resource is Organization).all((request.method = 'POST' and request.ifNoneExist.exists()) or (request.method = 'PUT' and request.ifNoneExist.empty()))"
```
Also remove the blank line that separated it from `au-ereq-bundle-06` so there is exactly one blank line between the `au-ereq-bundle-04` and `au-ereq-bundle-06` blocks.

- [ ] **Step 3: Update the `Description` final sentence (line 5)**

Find this exact substring inside the `Description:` string:
```
Entries use `urn:uuid:` fullUrls and `POST` request methods, with `ifNoneExist` populated on actor entries so the server only creates resources that don't already exist.
```
Replace with:
```
Entries use `urn:uuid:` fullUrls and `POST` request methods to create new resources. Actor entries may optionally use conditional create (`POST` with `ifNoneExist`) or conditional update (`PUT`) when the placer knows the actor's identifier on the target server.
```

- [ ] **Step 4: Verify the changes textually**

Run:
```bash
grep -n "au-ereq-bundle-05" input/fsh/au-erequesting-bundle-diagnosticrequest.fsh; echo "exit:$?"
```
Expected: no match in the FSH file, `exit:1`. (A match in `workflow.md` is fine — that is fixed in Task 5.)

Run:
```bash
grep -c "obeys au-ereq-bundle-01 and au-ereq-bundle-02 and au-ereq-bundle-03 and au-ereq-bundle-04 and au-ereq-bundle-06" input/fsh/au-erequesting-bundle-diagnosticrequest.fsh
```
Expected: `1`.

- [ ] **Step 5: Commit**

```bash
git add input/fsh/au-erequesting-bundle-diagnosticrequest.fsh
git commit -m "Remove invariant au-ereq-bundle-05; allow plain POST on actor entries"
```

---

### Task 2: Convert `bundle-imaging-1` to plain POST

**Files:**
- Modify: `input/examples/bundle-imaging-1.xml`

This example currently has 5 actor entries using `POST` + `<ifNoneExist .../>`. Plain POST = delete every `<ifNoneExist>` element; leave `<method value="POST"/>` and `<url .../>` untouched.

- [ ] **Step 1: Confirm the starting state**

Run:
```bash
grep -c "ifNoneExist" input/examples/bundle-imaging-1.xml
```
Expected: `5`.

- [ ] **Step 2: Delete every `<ifNoneExist .../>` line**

Each occurrence looks like (indentation may vary):
```xml
                <ifNoneExist value="identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608500314661"/>
```
Remove all 5 such lines (the whole `<ifNoneExist .../>` element). Do not change `<method>` or `<url>`.

- [ ] **Step 3: Verify ifNoneExist is gone and POST count unchanged**

Run:
```bash
grep -c "ifNoneExist" input/examples/bundle-imaging-1.xml; grep -c '<method value="POST"' input/examples/bundle-imaging-1.xml
```
Expected: `0` then `10`.

- [ ] **Step 4: Verify the XML is still well-formed**

Run:
```bash
xmllint --noout input/examples/bundle-imaging-1.xml && echo OK
```
Expected: `OK`.

- [ ] **Step 5: Commit**

```bash
git add input/examples/bundle-imaging-1.xml
git commit -m "bundle-imaging-1: use plain POST for actor entries"
```

---

### Task 3: Convert `bundle-pathology-multitest-1` to plain POST

**Files:**
- Modify: `input/examples/bundle-pathology-multitest-1.xml`

Same change as Task 2: this example has 5 actor entries using `POST` + `<ifNoneExist .../>`. Delete every `<ifNoneExist>` element.

- [ ] **Step 1: Confirm the starting state**

Run:
```bash
grep -c "ifNoneExist" input/examples/bundle-pathology-multitest-1.xml
```
Expected: `5`.

- [ ] **Step 2: Delete every `<ifNoneExist .../>` line**

Remove all 5 `<ifNoneExist value="..."/>` elements. Leave `<method value="POST"/>` and `<url .../>` untouched.

- [ ] **Step 3: Verify**

Run:
```bash
grep -c "ifNoneExist" input/examples/bundle-pathology-multitest-1.xml; grep -c '<method value="POST"' input/examples/bundle-pathology-multitest-1.xml
```
Expected: `0` then `20`.

- [ ] **Step 4: Verify well-formed XML**

Run:
```bash
xmllint --noout input/examples/bundle-pathology-multitest-1.xml && echo OK
```
Expected: `OK`.

- [ ] **Step 5: Commit**

```bash
git add input/examples/bundle-pathology-multitest-1.xml
git commit -m "bundle-pathology-multitest-1: use plain POST for actor entries"
```

---

### Task 4: Refocus `bundle-imaging-put-1` to conditional-update of the Organization only

**Files:**
- Modify: `input/examples/bundle-imaging-put-1.xml`

Currently all 5 actor entries use `PUT` with a conditional `url`. Target: only the **2 Organization** entries keep `PUT`; the **Patient, Practitioner, PractitionerRole** entries become plain `POST`.

Current actor entries (verified):
| Resource | method | url |
|---|---|---|
| Patient | PUT | `Patient?identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608500314661` |
| Practitioner | PUT | `Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0\|8003611566718288` |
| PractitionerRole | PUT | `PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|2448301T` |
| Organization | PUT | `Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003629900040359` |
| Organization | PUT | `Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003623233373306` |

- [ ] **Step 1: Confirm the starting state**

Run:
```bash
grep -c '<method value="PUT"' input/examples/bundle-imaging-put-1.xml; grep -c '<method value="POST"' input/examples/bundle-imaging-put-1.xml
```
Expected: `5` then `5`.

- [ ] **Step 2: Change the Patient entry to plain POST**

In the Patient entry's `<request>` block, change:
```xml
                <method value="PUT"/>
                <url value="Patient?identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608500314661"/>
```
to:
```xml
                <method value="POST"/>
                <url value="Patient"/>
```

- [ ] **Step 3: Change the Practitioner entry to plain POST**

Change:
```xml
                <method value="PUT"/>
                <url value="Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003611566718288"/>
```
to:
```xml
                <method value="POST"/>
                <url value="Practitioner"/>
```

- [ ] **Step 4: Change the PractitionerRole entry to plain POST**

Change:
```xml
                <method value="PUT"/>
                <url value="PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|2448301T"/>
```
to:
```xml
                <method value="POST"/>
                <url value="PractitionerRole"/>
```

Leave both `Organization` entries (the two `PUT … Organization?identifier=…|HPI-O` requests) exactly as they are.

- [ ] **Step 5: Verify method counts and that only Organizations remain PUT**

Run:
```bash
grep -c '<method value="PUT"' input/examples/bundle-imaging-put-1.xml; grep -c '<method value="POST"' input/examples/bundle-imaging-put-1.xml
```
Expected: `2` then `8`.

Run:
```bash
grep -B1 '<url value="Organization?identifier' input/examples/bundle-imaging-put-1.xml | grep -c '<method value="PUT"'
```
Expected: `2` (both PUT requests target Organizations).

- [ ] **Step 6: Verify well-formed XML**

Run:
```bash
xmllint --noout input/examples/bundle-imaging-put-1.xml && echo OK
```
Expected: `OK`.

- [ ] **Step 7: Commit**

```bash
git add input/examples/bundle-imaging-put-1.xml
git commit -m "bundle-imaging-put-1: conditional update Organization only; rest plain POST"
```

---

### Task 5: Update the narrative in `workflow.md`

**Files:**
- Modify: `input/pagecontent/workflow.md` (Transaction semantics bullets ~372–376; Example bundles list ~378–381)

- [ ] **Step 1: Replace the actor-method bullets and add the cross-request caveat**

Find this block (lines ~372–376):
```markdown
- **Workflow** resources (`ServiceRequest`, `Task`, `Encounter`, `Coverage`, `DocumentReference`, `CommunicationRequest`, `Observation`) use `POST` only — they are created unconditionally as new resources.
- **Actor** resources (`Patient`, `Practitioner`, `PractitionerRole`, `Organization`) may use either:
  - `POST` with `entry.request.ifNoneExist` populated — conditional create. The server creates the resource only if no existing identifier match is found. The `ifNoneExist` query is typically an identifier search (e.g., HPI-I, HPI-O, IHI, Medicare Provider Number).
  - `PUT` with the search query embedded in `entry.request.url` (for example, `Patient?identifier=...`) — conditional update by identifier. The server creates if no match, updates if exactly one match.
- The choice depends on what the placer knows about the actors on the target server. Invariant `au-ereq-bundle-05` enforces the relationship between `request.method` and `request.ifNoneExist`.
```
Replace with:
```markdown
- **Workflow** resources (`ServiceRequest`, `Task`, `Encounter`, `Coverage`, `DocumentReference`, `CommunicationRequest`, `Observation`) use `POST` only — they are created unconditionally as new resources.
- **Actor** resources (`Patient`, `Practitioner`, `PractitionerRole`, `Organization`) use plain `POST` by default — each submission creates a new resource. This is the simplest and most deterministic behaviour and is recommended unless there is a specific reason to reuse a server-side resource.
- Two optional patterns are available when the placer knows the actor's identifier on the target server:
  - `POST` with `entry.request.ifNoneExist` populated — conditional create. The server creates the resource only if no existing identifier match is found. The `ifNoneExist` query is typically an identifier search (e.g., HPI-I, HPI-O, IHI, Medicare Provider Number).
  - `PUT` with the search query embedded in `entry.request.url` (for example, `Organization?identifier=...`) — conditional update by identifier. The server creates if no match, updates if exactly one match.
- **Caution — conditional update has cross-request effects.** A `PUT` (conditional update) to a shared resource such as the requesting `Organization` modifies the stored resource in place. That change is then seen by **every other diagnostic request that references that Organization**, not just the request being submitted. Plain `POST` avoids this because it always creates a fresh resource. Choose conditional update only when updating the shared resource for all of its consumers is the intended outcome.
```

- [ ] **Step 2: Update the Example bundles list**

Find (lines ~378–381):
```markdown
#### Example bundles

- [bundle-pathology-multitest-1](Bundle-bundle-pathology-multitest-1.html) — four pathology ServiceRequests for an obstetric clinic visit.
- [bundle-imaging-1](Bundle-bundle-imaging-1.html) — single chest X-ray imaging request.
```
Replace with:
```markdown
#### Example bundles

- [bundle-pathology-multitest-1](Bundle-bundle-pathology-multitest-1.html) — four pathology ServiceRequests for an obstetric clinic visit; all entries use plain `POST` (create new).
- [bundle-imaging-1](Bundle-bundle-imaging-1.html) — single chest X-ray imaging request; all entries use plain `POST` (create new).
- [bundle-imaging-put-1](Bundle-bundle-imaging-put-1.html) — the same chest X-ray request, but the `Organization` entries use `PUT` (conditional update by identifier) to demonstrate reuse of an existing shared resource and its cross-request effects.
```

- [ ] **Step 3: Verify the invariant reference is gone and the caveat is present**

Run:
```bash
grep -c "au-ereq-bundle-05" input/pagecontent/workflow.md; grep -c "cross-request effects" input/pagecontent/workflow.md; grep -c "bundle-imaging-put-1" input/pagecontent/workflow.md
```
Expected: `0`, `1`, `1`.

- [ ] **Step 4: Commit**

```bash
git add input/pagecontent/workflow.md
git commit -m "workflow.md: document plain POST default and conditional-update cross-request effects"
```

---

### Task 6: Update the `sushi-config.yaml` example descriptions

**Files:**
- Modify: `sushi-config.yaml` (the `resources:` block)

- [ ] **Step 1: Replace the three Bundle descriptions**

Find the `resources:` block and replace its three `description:` values so they match the new semantics. The block should read:
```yaml
resources:
  Bundle/bundle-imaging-1:
    name: Imaging Request Bundle Example
    description: "Example AU eRequesting Imaging Request Bundle: a transaction Bundle that places a new imaging diagnostic request with a single ServiceRequest. All entries use plain POST, creating new resources."
    exampleCanonical: http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-bundle-imagingrequest
  Bundle/bundle-imaging-put-1:
    name: Imaging Request Bundle Example (conditional update)
    description: "Example AU eRequesting Imaging Request Bundle demonstrating conditional update: the same single-imaging-request scenario as bundle-imaging-1, but the Organization entries use HTTP PUT (conditional update by identifier) while all other entries use plain POST. Illustrates reuse of an existing shared Organization and its effect on other requests."
    exampleCanonical: http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-bundle-imagingrequest
  Bundle/bundle-pathology-multitest-1:
    name: Pathology Request Bundle Example (multiple tests)
    description: "Example AU eRequesting Pathology Request Bundle with multiple tests: a transaction Bundle placing four pathology ServiceRequests in a single order, each with its own per-test placer identifier and Task Diagnostic Request, sharing one Task Group. All entries use plain POST, creating new resources."
    exampleCanonical: http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-bundle-pathologyrequest
```

- [ ] **Step 2: Verify YAML still parses**

Run:
```bash
python3 -c "import yaml; yaml.safe_load(open('sushi-config.yaml')); print('YAML OK')"
```
Expected: `YAML OK`.

- [ ] **Step 3: Commit**

```bash
git add sushi-config.yaml
git commit -m "sushi-config: align Bundle example descriptions with plain POST / Organization PUT"
```

---

### Task 7: Build the IG and verify QA

**Files:**
- Generated: `output/qa.txt`, `fsh-generated/**` (regenerated, not hand-edited)

- [ ] **Step 1: Run the full build**

Run:
```bash
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8" && java -jar input-cache/publisher.jar -ig . > /tmp/ig-build.log 2>&1; echo "EXIT_CODE=$?"
```
Expected: `EXIT_CODE=0`.

- [ ] **Step 2: Check the QA totals**

Run:
```bash
grep -E "^Errors: " /tmp/ig-build.log | tail -1
```
Expected: errors **≤ 35** (the pre-existing terminology errors). If the number is **higher than 35**, a bundle example now fails validation — STOP and inspect (see Step 4).

- [ ] **Step 3: Confirm the three bundle examples have no errors**

Run:
```bash
grep -E "^ERROR: Bundle/(bundle-imaging-1|bundle-imaging-put-1|bundle-pathology-multitest-1)" output/qa.txt | grep -v "PGN\|payconc\|SMSWRIT" ; echo "exit:$?"
```
Expected: no lines other than the known `PGN`/`payconc`/`SMSWRIT` terminology errors. Any *other* error on these bundles is a regression to fix.

- [ ] **Step 4: (If regressions) inspect**

If new errors appear, read them:
```bash
grep -E "^ERROR: (StructureDefinition/au-erequesting-bundle|Bundle/bundle-)" output/qa.txt
```
Common cause: a leftover `ifNoneExist` (Task 2/3) or a method/url mismatch (Task 4). Fix the offending example and re-run Step 1.

- [ ] **Step 5: Commit regenerated output (only if the repo tracks `output/`/`fsh-generated/`)**

Run:
```bash
git status --short output fsh-generated | head
```
If git reports tracked changes there, commit them; if those directories are gitignored, skip this step.
```bash
git add fsh-generated output 2>/dev/null; git commit -m "Rebuild IG after Bundle example method changes" || echo "nothing tracked to commit"
```

---

### Task 8: Update the proposal presentation

**Files:**
- Modify: `docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx`
- Create (backup): `docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx.bak`
- Create (temporary helper): `/tmp/edit_pptx.py`

- [ ] **Step 1: Install python-pptx and back up the deck**

Run:
```bash
pip install python-pptx >/tmp/pip-pptx.log 2>&1 && python3 -c "import pptx; print('python-pptx', pptx.__version__)"
cp "docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx" "docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx.bak"
```
Expected: a `python-pptx <version>` line and no error from `cp`.

- [ ] **Step 2: Write the edit script**

Create `/tmp/edit_pptx.py` with this content:
```python
from pptx import Presentation

PATH = "docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx"

# (old paragraph text, new paragraph text). Match is on stripped full-paragraph text.
REPLACEMENTS = [
    # --- Slide 5: Transaction semantics ---
    ("■  POST for everything; ifNoneExist for actors",
     "■  POST by default; conditional create/update optional for actors"),
    ("•  Actor resources (Patient, Practitioner, PractitionerRole, Organization, Location): POST with ifNoneExist on identifier (HPI-I, HPI-O, IHI, MPN, ...). Server only creates if no match.",
     "•  Actor resources (Patient, Practitioner, PractitionerRole, Organization, Location): plain POST by default (always create new). Optionally POST + ifNoneExist (conditional create) or PUT (conditional update) when the placer knows the actor's identifier on the server."),
    # --- Slide 7: Worked examples (two identical "Method:" lines both update) ---
    ("Method: POST + ifNoneExist for actors",
     "Method: plain POST (create new) for all entries"),
    ("Examples reuse data from existing IG resources; references rewritten to urn:uuid form. POST and PUT examples cover both methods permitted on actor entries.",
     "Examples reuse data from existing IG resources; references rewritten to urn:uuid form. The basic examples use plain POST; the PUT example shows conditional update of the Organization only."),
    ("Method: PUT (conditional update by identifier) for actors",
     "Method: PUT (conditional update) for the Organization only; other entries plain POST"),
    ("ifNoneExist not used; identifier search embedded in entry.request.url",
     "Updating the shared Organization affects every other request that references it, not just this one"),
    # --- Slide 9: Issue 1 - Bundle entry methods (reframe to resolution) ---
    ("FHIR transactions support several methods for creating or referencing resources. The bundle permits a mix of methods so placers can express what they know about each actor on the target server. Workflow resources are always POST; actor resources may use POST + ifNoneExist or PUT.",
     "FHIR transactions support several methods for creating or referencing resources. Workflow resources are always POST. For actor resources the group's direction is plain POST by default, with conditional create or conditional update as optional patterns."),
    ("●  POST (unconditional) — server assigns id; risks duplicating actors that already exist on the server.",
     "●  POST (unconditional) [default] — server assigns id; simplest, deterministic; may duplicate actors already on the server."),
    ("●  Mix per slice [chosen] — POST mandatory for workflow resources; POST + ifNoneExist or PUT permitted for actor resources, depending on what the placer knows.",
     "●  Resolution — plain POST is the default for actor resources; conditional create/update remain optional patterns, not enforced by an invariant."),
    ("Implemented: Workflow entries (ServiceRequest, Task, Encounter, Coverage, DocumentReference, CommunicationRequest, Observation): POST only. Actor entries (Patient, Practitioner, PractitionerRole, Organization): POST + ifNoneExist or PUT (conditional update by identifier). Enforced by invariant au-ereq-bundle-05.",
     "Implemented: Workflow entries (ServiceRequest, Task, Encounter, Coverage, DocumentReference, CommunicationRequest, Observation): POST only. Actor entries (Patient, Practitioner, PractitionerRole, Organization): plain POST by default; conditional create (POST + ifNoneExist) or conditional update (PUT) optional. Invariant au-ereq-bundle-05 removed — methods are now guidance only."),
]

def replace_paragraph(p, new_text):
    # Put all text into the first run; clear the rest. Preserves the first run's formatting.
    runs = p.runs
    if not runs:
        return
    runs[0].text = new_text
    for r in runs[1:]:
        r.text = ""

prs = Presentation(PATH)
done = {old: 0 for old, _ in REPLACEMENTS}
for slide in prs.slides:
    for shape in slide.shapes:
        if not shape.has_text_frame:
            continue
        for p in shape.text_frame.paragraphs:
            txt = "".join(r.text for r in p.runs).strip()
            for old, new in REPLACEMENTS:
                if txt == old.strip():
                    replace_paragraph(p, new)
                    done[old] += 1

prs.save(PATH)
print("Replacement counts:")
for old, n in done.items():
    print(f"  {n}x  {old[:60]}")
```

- [ ] **Step 3: Run the edit script**

Run:
```bash
python3 /tmp/edit_pptx.py
```
Expected: every replacement reports `1x` **except** `Method: POST + ifNoneExist for actors`, which must report `2x` (it appears on slide 7 under both the pathology and imaging columns). If any line reports `0x`, the source text drifted — re-dump that slide's text (Step 5 command) and correct the `old` string, then restore from `.bak` and re-run.

- [ ] **Step 4: Verify no stale wording remains**

Run:
```bash
python3 - <<'PY'
from pptx import Presentation
prs = Presentation("docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx")
stale = ["POST + ifNoneExist for actors", "Enforced by invariant au-ereq-bundle-05", "[chosen]"]
hits = []
for i, slide in enumerate(prs.slides, 1):
    for shape in slide.shapes:
        if shape.has_text_frame:
            t = shape.text_frame.text
            for s in stale:
                if s in t:
                    hits.append((i, s))
print("stale hits:", hits)
PY
```
Expected: `stale hits: []`.

- [ ] **Step 5: Spot-check the edited slide text (visual sanity)**

Run (re-dumps slides 5, 7, 9 as plain text for a quick read):
```bash
python3 - <<'PY'
from pptx import Presentation
prs = Presentation("docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx")
for idx in (4, 6, 8):  # zero-based -> slides 5,7,9
    print(f"==== slide {idx+1} ====")
    for shape in prs.slides[idx].shapes:
        if shape.has_text_frame:
            for line in shape.text_frame.text.splitlines():
                if line.strip():
                    print("  ", line)
PY
```
Expected: the new wording is present and the slides read sensibly. (PowerPoint is not available here; the author should open the deck later to confirm layout/wrapping is acceptable.)

- [ ] **Step 6: Commit (and remove the helper script)**

```bash
rm -f /tmp/edit_pptx.py
git add "docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx" "docs/superpowers/presentations/2026-05-01-diagnosticrequest-transaction-bundle-v2.pptx.bak"
git commit -m "Presentation v2: reflect plain POST default and Organization-only conditional update"
```

---

## Final verification checklist

- [ ] `grep -rn "au-ereq-bundle-05" input/` returns **no** matches (FSH and workflow.md both clean).
- [ ] `bundle-imaging-1` and `bundle-pathology-multitest-1` contain **0** `ifNoneExist`; `bundle-imaging-put-1` has **2** PUT (both Organizations) and **8** POST.
- [ ] IG build exits 0 with errors **≤ 35** and no new errors on the three bundles.
- [ ] `workflow.md` documents the plain-POST default and the conditional-update cross-request caveat.
- [ ] The deck's slides 5/7/9 reflect the resolution; a `.bak` of the original is committed alongside.

## Notes / risks

- **PPTX run-splitting:** `replace_paragraph` collapses each edited paragraph into its first run. If a paragraph mixed bold/colour mid-line, that nuance is lost (text and the run's own formatting are preserved). The target paragraphs are plain body text, so this is low-risk; the author should still open the deck once to confirm.
- **`output/`/`fsh-generated/` tracking:** Task 7 Step 5 only commits these if the repo already tracks them; otherwise they are build artifacts and skipped.
