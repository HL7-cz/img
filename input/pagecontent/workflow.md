A typical, standard course of the examination takes place gradually, where the individual steps follow each other in sequence, as shown in the following figure of the sequence diagram. This diagram does not include the extended Imaging Methods Report and its storage in the EHR repository and sending to the external examination orderer.

<div>
<img src="workflow-1-en.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 1: STANDARD WORKFLOW FOR IMAGING METHODS</strong></p>
<p> </p>
</div>

The individual phases of the examination represent the state of development of the examination. The phase, the state in which the examination is, is informed by the so-called DICOM Modality Performed Procedure Step (MPPS) messages.

<div>
<img src="workflow-2-en.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 2: PHASE AND STATES OF THE EXAMINATION PROCESS</strong></p>
<p> </p>
</div>

The target concept of the extended Report from imaging methods, including storage in the EHR repository, is shown in the following figure. The actor "healthcare professional" (HP) is either the indicating physician, radiology assistant or physician - radiologist, depending on the interaction with the relevant IS.

1. The performer plans, performs and describes the instrumental examination in the IS of the originator.
2. The author performs the observation, writes the result of the observation and the finding. He signs the completed Report (with a recognized electronic signature). The IS of the originator attaches the electronic name tag of the author and a time stamp to the Report.
3. The author attaches attachments to the Report.
4. The validator (in the case of a “second reading”) performs a control observation and writes new findings as an addition to the Report. The completed addition to the Report is signed (with a recognized electronic signature). The originator’s IS attaches the validator’s electronic name tag and time stamp to the addition.
5. The author, in the case of a “second reading”, the Validator closes the Report. The originator’s IS attaches the metadata from the DICOM study and the electronic time stamp and name tag of the person closing the Report to the Report.
6. The originator’s IS stores the complete Report, including the attached metadata, in the document repository, and if the Report contains components with an electronic signature, also in a trusted repository.
7. The document repository registers the Report in the document registry.

<div>
<img src="workflow-3-en.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 3: EXTENDED CONCEPT OF REPORTING FROM IMAGING METHODS</strong></p>
<p> </p>
</div>