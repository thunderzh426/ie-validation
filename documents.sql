delimiter $$

CREATE TABLE `documents` (
  `document_id` bigint(20) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `doc_text` text,
  `date` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `mrn` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$





/*
-- Query: SELECT * FROM validator.documents
-- Date: 2016-06-09 09:05
*/
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (1,'0200967-aaron.txt','EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00
 
COMPARE:  Noncontrast chest CT 01/01/2015
 
HISTORY:  This is a 55 year-old male with a 20 p/y history. Incidence lung cancer screening for previous LUNGRads Category 2 scan.
 
TECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 30 cm using a low radiation dose technique.   
Coronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.
 
RADIATION DOSE:  1 Volumetric series was performed for this exam.  
 CTDIvol (CT dose Index-volume) = 1.4 mG
 DLP (Dose Length Product) = 48  mG cm  
 
FINDINGS:
Indeterminate or Suspicious Lung Nodules (Category 3-4B): None
 
Benign Appearing/Non-actionable Nodules (Category 2):  Present
 Faint ground glass nodule in right upper lobe measuring 6.3 mm (2-113).  Evolution = stable
 Faint groundglass nodule in left upper lobe measuring 12 mm (2-71).  Evolution = stable
 Faint groundglass small nodule (< 5 mm) in superior RLL (2-128). Evolution = stable
 Two additional faint groundglass nodules in RLL and LLL have resolved, likely inflammatory.
 Pericentimeter septated cyst in RUL is stable (2-75)
 
Benign nodules (Category 1):  None
 
LUNG PARENCHYMA
Emphysema:  Absent
Airways disease:  Absent
Fibrosis:  Absent
 
OTHER ANATOMIC REGIONS
Lymph Nodes:  No significant intrathoracic adenopathy. Small calcified left paratracheal node not well visualized on low dose CT.
Pleura:  No effusions
Cardiac:  Normal heart size. Pericardium normal. Significant multivessel coronary artery calcification.
 
OTHER FINDINGS:   
Double-lumen left central line terminates in horizontal left brachiocephalic vein.
Thyroid: Stable calcification left lobe.
Upper abdomen suboptimally visualized with low dose technique.
 
IMPRESSION
1. Lung Cancer Screening: Category 2, Benign appearing/Non-actionable nodules seen. These types of nodules are not uncommon and require no immediate action. Recommend continued annual low dose screening.  
 
 
NOTES:   
This report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  
 
This study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.',NULL,'smith',1);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (2,'0202292-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: CT chest December 01, 2014
 
INDICATION: 62 year-old man with history of smoking, 35 pack-year history.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.6 CTDIvol; 111 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA: No nodularity. Subtle areas of subpleural reticulation with groundglass density for example in the right lower lobe 3-89, 3-102, left lower lobe 3-86, likely represents post inflammation scarring or resolution fibrosis. Mild ectasia of  
airways is seen with occasional mucous plugging.
Pleura: No effusions.
Cardiac: Cardiac size is normal. No pericardial fluid collection. Calcification about the aortic annulus and diffuse calcification of the coronary arteries. The aorta and pulmonary arteries are normal in caliber.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
2.  Mild chronic airways disease with minimal postinflammatory scarring along the periphery of bilateral lungs.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.  
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.',NULL,'smith',2);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (3,'0221334-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: None available.
 
INDICATION: 76 yo female. Former smoker, new onset anemia. 42 pack year history.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose:
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 76)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Old granulomatous disease: Subcentimeter noncalcified and calcified nodules within the right upper lobe (3-33, 45), consistent with prior granulomatous disease.  
 
Airways disease: Scattered peribronchial and peribronchiolar thickening with associated airway irregularity, ectasia and occasional mucostasis, consistent with chronic large and small airways disease, albeit nonspecific.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, bilateral subclavian, left anterior descending, circumflex and right coronary arteries.
 
Other: Small to moderate hiatal hernia.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',3);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (4,'0327986-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: Smoking hx and copd, Lung Cancer Screening. 63 year old female.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  0.13 + 2.77 CTDIvol; 96 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Two micronodules in right upper lobe (4-45) and right lower lobe (4-52)
 Quantity: 2
 Consistency: Part solid
 Representative locations: right upper lobe (4-45) and right lower lobe (4-52)
 Distinguishing features: None
 
OLD GRANULOMATOUS DISEASE: None  
 
EMPHYSEMA:  Yes If present:  
 Type: Centrilobular
 Distribution: Upper lobe dominant  
 Severity: Mild (6-25%)
 
LARGE AIRWAYS DISEASE: Yes Features:
 Wall thickness:  Mild bronchial wall thickening
 Morphology:  Mild bronchiectasis
 Distribution: Diffuse
 Mucostasis:  No
 
SMALL AIRWAYS DISEASE:  Unknown.
 
LUNG FIBROSIS: No
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.
 
Pleura: Normal
 
Cardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber. Atherosclerotic disease of thoracic aorta and coronary arteries.
 
Additional Free Text: Enlarged right lobe of thyroid within low-density soft tissue lesion in both lobes. Suggest correlation with ultrasound.
 
Images from upper abdomen demonstrate calcification in right kidney and periphery of left kidney. The demonstrate the on the CT urogram from Jan 01, 20014.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
2.  Ultrasound of thyroid.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',4);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (5,'0362025-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: 12/01/2014 UCLA chest CT.
 
INDICATION: 72 year-old female, 75 pack yrs. Abnormal chest CT; follow-up micronodules.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 29.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (3a, 99)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Micronodules: Unchanged subcentimeter nodules within the left upper lobe (4-25, 31), right upper lobe (4-38) and right lower lobe (4-36, 43)  
 
Airways disease: Unchanged lobular air-trapping within both lower lobes.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta and left anterior descending coronary artery.
 
Other: Persistent small sliding hiatal hernia.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  Unchanged small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',5);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (6,'0392400-grey.txt','CT SCAN CHEST WITHOUT CONTRAST
 
DATE OF EXAMINATION: Jan 01, 2015 00:00:00 PM  
 
COMPARISON:   December 01, ''2014
 
CLINICAL INDICATION:   COPD/NLST PROTOCOL  
 
TECHNIQUE: On the Siemens Sensation 64 CT scanner, without IV contrast, volumetric low dose axial acquisition was performed from the thoracic inlet through the lung bases.  Images reformatted at 1, 3 and 5 mm slice thickness in the axial plane.  DFOV =  
28 cm.  
 
FINDINGS:   
 
A new < 3 mm millimeter soft tissue nodule is seen high in the right apex series 2 image 108 not seen on the prior study. The tiny 1 mm micronodule within the left lower lobe series 5 image 17 is unchanged no other focal lung lesion is seen. No evidence  
for emphysema.
 
The pleural and pericardial surfaces are clear.  
 
There is no significant intrathoracic lymphadenopathy
 
 
New heart size is normal thoracic aorta is normal in size. There is focal calcifications in the left anterior descending artery as well as a little in the right coronary artery
 
 
IMPRESSION: No suspicious focal lung lesion is seen. Stable small granuloma since 2010. New very subtle sub-3 millimeter nodular seen in the right apex. A follow CT in one year for this is recommended.  if the patient is a smoker or has significant risk  
factors.. There is coronary artery calcification noted and given the patient''s age evaluation for atherosclerotic disease is profile is recommended',NULL,'smith',7);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (7,'0404980-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: 30 pack years smoking, quit 2 years ago, age 55   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.96 CTDIvol; 90 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
Calcified nodule in right lower lobe and left upper lobe, are suggestive for prior granulomatous disease. Regional parenchymal scarring involving medial segment of right lower lobe is from chronic irritation from enlarged regional osteophytes.  
Parenchymal scar in dependent left lower lobe could be from prior infectious insult or aspiration.
 
OLD GRANULOMATOUS DISEASE: Present.  
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Normal.
 
Additional Free Text:  Atherosclerotic disease of left anterior descending coronary artery and aortic root. Small pericardial effusion, for indeterminate etiology. Postsurgical changes from right mastectomy and axillary lymph node dissection.  
Subcentimeter lymph node in right axilla are of indeterminate etiology. Correlate with prior mammograms and ultrasound of breast and axillary region.
 
Degenerative disease of spine with multilevel osteophyte formation. Prominent coastal vertebral junctions.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.
 
2.  Subcentimeter lymph node in right axilla are of indeterminate etiology. Correlate with prior mammograms and ultrasound of breast and axillary region.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',8);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (8,'0429748-aaron.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: No prior images
 
INDICATION: Lung cancer screening in 59 year-old current smoker of 1 pack per day. Cumulative smoking history not reported.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.5 CTDIvol; 54 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
INDETERMINATE NODULES:  None
 
LUNG PARENCHYMA:
 Calcified micronodules in the right upper (2-125) and left lower (2-233) lobes.
 Quantity: 2
 
OLD GRANULOMATOUS DISEASE: Small calcified micronodules as above  
 
EMPHYSEMA:  Present
 Type: Centrilobular
 Distribution: Upper lobe predominant.
 Severity: Moderate  
 
LARGE AIRWAYS DISEASE: Yes
 Wall thickness:  Mild bronchial wall thickening.   
 Morphology:  Mild bronchial ectasia
 Distribution: Diffuse
 Mucostasis:  No
 No visible small airways disease.
 
LUNG FIBROSIS:  None significant  
 
Lymph Nodes: Not well evaluated with low dose technique. No visible intrathoracic or axillary adenopathy   
 
Pleura: Normal
 
Cardiac: Normal heart size. Normal pericardium. Multivessel coronary calcifications in left main, left anterior descending, and circumflex coronary arteries.  See corresponding CT calcium screening exam from the same date.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Negative screen.  No nodules suspicious for lung cancer. Current recommendations are to continue annual screening in high risk patients, although the benefits of annual screens are less clear in individuals with  
negative screens.
2.  Moderate, upper lobe predominant centrilobular emphysema.
3.  Significant coronary artery calcification.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',9);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (9,'0451081-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: 12/01/2014 Santa Monica UCLA chest CT.
 
INDICATION: 71 yo male. Approximate 40 pack-year cigarette abuse and chronic cough.  
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 52)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Micronodules:  Unchanged subcentimeter nodules within the right upper lobe (3-33), left upper lobe (3-14, 29), right middle lobe (3-44), right lower lobe (3-38, 44, 48) and left lower lobe (3-21, 34), likely a combination of end-airways and prior  
granulomatous disease.
 
Old granulomatous disease: Unchanged biapical fibronodular pleural parenchymal scarring.
 
Emphysema: At least moderate smoking-related centrilobular emphysema.
 
Airways disease: Diffuse mild cylindrical bronchiectasis and bronchiolectasis with peribronchial and peribronchiolar thickening and scattered discrete and coalescent lobular air-trapping particularly within the lower lung, consistent with chronic large  
and small airways disease; reactive versus fixed.
 
Focal Fibrosis: Essentially unchanged coalescent ground glass attenuation with architectural distortion within the left upper lobe (3-16), presumably subresolution fibrosis
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, bilateral subclavian, left anterior descending and right coronary arteries.
 
Other: Small sliding hiatal hernia.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer, especially given radiographic stability since 9/27/2005; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk
 factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',11);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (10,'0480803-aaron.txt','EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00
 
COMPARE:  Two view chest 12/01/2014
 
HISTORY:  Baseline lung cancer screening; symptomatic with recent chronic cough and weight loss
 
TECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 34 cm using a low radiation dose technique.   
Coronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.
 
RADIATION DOSE:  1 Volumetric series was performed for this exam.  
 CTDIvol (CT dose Index-volume) = 2 mG
 DLP (Dose Length Product) = 78  mG cm  
 
FINDINGS:
Indeterminate or Suspicious Lung Nodules (Category 3-4B): Present
Nodule ID Number one:  Solid nodule in left apex (3 to 54  
 Size = 24 x 17 mm, mean diameter 21 mm
 Evolution: Not applicable, no prior CT scans
 High
 LUNGRads category 4 B
 
Indeterminate/Non-actionable Nodules (Category 2):  1 solid micronodule in RLL (3-270)
 
Benign nodules (Category 1):  None
 
LUNG PARENCHYMA
Emphysema:  Absent
Airways disease:  Mild bronchial wall thickening of central airways
Fibrosis:  Absent
 
OTHER ANATOMIC REGIONS
Lymph Nodes:  No visible intrathoracic adenopathy
Pleura:  Left pleural effusion with nodularity, reflecting pleural carcinomatosis.
Cardiac:  Heart size normal. Trace pericardial effusion. Moderately extensive multivessel coronary artery calcification.
 
Other findings:  None. Low dose image quality precludes accurate characterization beyond the lung parenchyma.
 
IMPRESSION
1. Lung Cancer Screening:  LUNGRads Category 4B, Solid nodule of 21 mm diameter in LUL apical region.  Associated small left pleural effusion with nodularity likely reflecting pleural carcinomatosis.  Recommend tissue sampling percutaneously for  
confirmation.   
 
 
NOTES:   
This report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
 
Current USPSTF recommendations are to annually screen asymptomatic individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.  Individuals
 with symptoms should undergo diagnostic chest CT rather than LDCT screening.',NULL,'smith',12);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (11,'0522869-grey.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: December 01, 2014
 
INDICATION: hx cigarette smoking, lung cancer screening, age 63, 21 pack years.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None
 
Additional Actionable Nodules: No
 
INDETERMINATE NODULES:  None
 
Additional Indeterminate Nodules:  None
 
PARENCHYMA:
 
Micronodules: A micronodule measuring 1 to 2 mm identified in the peripheral aspect of the apicoposterior segment anteriorly series 4 image 37. This not far from the site of a previously documented focal parenchymal process which is otherwise completely  
resolved seen in November 2013
 
Old granulomatous disease:None
 
Emphysema:  None
 
Airways disease: None
 
Diffuse lung fibrosis: None
Focal Fibrosis:None
 
Lymph Nodes: Not well evaluated with low dose technique but likely normal
 
Pleura: Normal    
 
Cardiac: Heart size Normal/Enlarged.  Coronary calcifications:  Present in the multivessel distribution.   
 
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',13);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (12,'0595458-grey.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: No prior
 
INDICATION: screen for lung cancer, 59 year old former smoker  with 34.5  pack  years, no prior screening   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None  
 
Additional Actionable Nodules:  No
 
INDETERMINATE NODULES:  None  
 
Additional Indeterminate Nodules:  None  
 
PARENCHYMA:
 
Micronodules: None ]
 
Old granulomatous disease: None  
 
Emphysema:  None  
 
Airways disease: None  
 
Diffuse lung fibrosis: None  
 
Lymph Nodes: Not well evaluated with low dose technique likely unremarkable
 
Pleura: Normal  
 
Cardiac: Unremarkable
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',14);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (13,'0633091-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM 


COMPARISON: None.


INDICATION: 55 yo M with 25 yr tobacco hx, current smoker. Now with unintentional wt loss. Please screen for lung ca.  


TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  39 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.


Radiation dose:  
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 85) 


FINDINGS:   
ACTIONABLE LUNG NODULES: None..  


There is diffuse groundglass in the peribronchovascular distribution within the bilateral lung fields, some textured, with more prominent nodular areas of groundglass within the left upper lobe but overall favoring the upper lobes. Central and peripheral areas of architectural distortion are noted with subpleural sparing.  Fine circumferential subpleural reticulation is present. Diffuse peribronchial thickening is noted.


Lymph Nodes: No adenopathy.   
Pleura: Normal.  
Cardiac: Atherosclerotic calcifications are present in the right subclavian artery, brachiocephalic and, aortic arch, and left descending artery. Normal heart size. No pericardial effusion. Upper limits of normal diameter of pulmonary artery suspicious  
for pulmonary hypertension.
Osseous: Multiple bilateral rib fractures, old.


Additional Free Text:  If you need to clarify something or expand beyond minimal data elements.


IMPRESSIONS:


1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
2.  There is diffuse groundglass in the peribronchovascular distribution within the bilateral lung fields, some textured, with more prominent nodular areas of groundglass within the left upper lobe but overall favoring the upper lobes. Central and peripheral areas of architectural distortion are noted with subpleural sparing.  Fine circumferential subpleural reticulation is present. There is diffuse thickening of the airways. These findings are consistent with fibrotic process, with distribution and airways thickening favoring a smoking-related process on the spectrum of respiratory bronchiolitis interstitial lung disease (RB-ILD) to desquamative interstitial pneumonia (DIP).
3. Atherosclerotic calcifications, including involvement of coronary arteries.


NOTES:


This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    


Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38. 


I, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.',NULL,'smith',15);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (14,'0726540-aaron.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: Prior images
 
INDICATION: >30 pack year smoking, lung cancer screening, age 73.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2 CTDIvol; 73 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
INDETERMINATE NODULES:  None
   
Micronodules:  Rare micronodule and small nodules.
 Quantity: Roughly 4; consistency = solid.
 Representative locations: Right lower lobe (3-190) left lower lobe (3-291, 319)
 Very low level of clinical suspicion
 
Old granulomatous disease: Present: Minor biapical scarring. Calcified granulomas in right and left upper lobes.  
 
PARENCHYMA:
Emphysema:  None   
Airways: Normal.   
Focal or diffuse lung fibrosis:  Minor biapical, post inflammatory
Lymph Nodes: None significant   
Pleura: No abnormalities.
Cardiac: Normal heart size. Mild coronary calcification of LAD and circumflex. Mild aortic valvular calcification.
Upper abdomen:  Probable cyst left lobe of liver.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
[Negative screen.  Scattered small nodules within the context of prior granulomatous disease, not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.',NULL,'smith',16);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (15,'0750522-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: 11/01/2013 and 12/01/2014 American Wellness and Imaging chest CTs.
 
INDICATION: 79 yo F, 14 py smoking history.  
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 54)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Micronodules: Unchanged calcified and noncalcified subcentimeter nodules within the right lower lobe (3-41) and left lower lobe (3-52, 54, 60, 66), likely a combination of end-airways and prior granulomatous disease.
 
Emphysema: Mild smoking-related centrilobular emphysema.
 
Airways disease: Scattered peribronchial and peribronchiolar thickening associated airway irregularity and ectasia and occasional mucostasis (3-32 right upper lobe).
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, left common carotid, left subclavian, left anterior descending, circumflex and right coronary arteries.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',17);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (16,'0805863-gregson.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: Chest x-ray from 12/01/14
 
INDICATION: 73 YEAR-OLD F, LONG HISTORY OF TOBACCO ABUSE  RULE OUT LUNG CANCER   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest wo (2a, 62);  
 
 
FINDINGS:   
ACTIONABLE LUNG NODULES: Yes.   
Nodule Number:  1
 Anatomic Location: Right upper lobe
 Size = 2 x 1.5 cm
 Consistency: Solid
 Evolution: Slight apparent interval increase from chest x-ray of 2009
 Level of suspicion for malignancy: High
 
INDETERMINATE NODULES:  Yes
Nodule Number: 1
 Anatomic Location: Right upper lobe
 Size = 6 x 5 mm
 Consistency: Solid
 Evolution: Not applicable
 Level of suspicion for malignancy: Intermediate
 
Additional Indeterminate Nodules:  No  
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present
 Quantity: One
 Consistency: Solid
 Representative locations: Right upper lobe
 Distinguishing features: Peribronchial
 
OLD GRANULOMATOUS DISEASE: Right-sided apical scarring  
 
EMPHYSEMA:  Yes, mild centrilobular emphysema  
 
LARGE AIRWAYS DISEASE: Mild diffuse peribronchiolar thickening.
 
SMALL AIRWAYS DISEASE:  No
 
LUNG FIBROSIS:  No  
 
Lymph Nodes: Not well evaluated with low dose technique.   
 
Pleura: Normal the exception of right-sided apical pleural/parenchymal scarring.
 
Cardiac: Normal.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
 
Positive screen:  Solid nodule of 2 cm diameter.  This nodule has tendrils extending to the pleural surface with architectural distortion with cicatricial emphysema. Possible slight increase in density over time; differential considerations include an  
indolent lung carcinoma versus scar carcinoma versus scar. Clinical suspicion is moderate. This abnormality may be further evaluated with:  Percutaneous lung biopsy.
 
2.  Mild centrilobular emphysema and peribronchial wall thickening.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',18);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (17,'0846711-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON:  CT 12/01/2014.
 
INDICATION:   69 year old male, History Heavy Smoking, Lung Cancer Screening   
 
TECHNIQUE: A low dose helical CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV =  31 cm using 72 mAs.  Coronal and sagittal  
reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest Iow dose (2a, 77);  
 
 
FINDINGS:   
 
Lungs: Further decrease in size of the previously visualized area of stellate consolidation in the right upper lobe, now measuring approximately 5 x 3 mm (3-39), previously 7 x 6 mm. Calcified granuloma in the right upper lobe. Linear opacity in the  
lingula (3-86), likely related to scarring and/or atelectasis. Moderate to severe emphysema. Diffuse peribronchial thickening, likely smoking-related airways disease. Linear density in the distal trachea, likely mucus.
 
Lymph nodes | Mediastinum:  No significant lymphadenopathy is identified, though evaluation is limited by low dose protocol.
 
Pleura:  No pleural effusion or pleural nodularity.
 
Cardiovascular:  The heart is not enlarged. No pericardial effusion. Atherosclerotic calcification in the coronary arteries and thoracic aorta.
 
Osseous:  No aggressive appearing bony lesions. Degenerative disc disease, most prominent in the visualized lumbar spine.  
 
IMPRESSION:
1. Further decrease in size of the previously visualized stellate nodular consolidation in the right upper lobe, likely postinflammatory scarring. No suspicious pulmonary lesion.
 
2. Moderate to severe emphysema.
 
I, Joe Smith MD, have reviewed these images and agree with the above findings.',NULL,'smith',19);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (18,'0859355-aaron.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST  Jan 01, 2015 00:00:00 AM  
 
COMPARISON: Chest CT with contrast 12/01/2014
 
INDICATION:   55 year old former smoker 1/2 to 3/4 PPD x 30 years; quit 25 years ago.  Prior Stage IA NSCLC (adenocarcinoma) LUL, status post LU lobectomy.  Ongoing high risk surveillance.  
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  3 CTDIvol; 85 DLP.
 
FINDINGS:   
 
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES:  None
 
LUNG PARENCHYMA:
General:  Prior left upper lobectomy.  
Micronodules:  None  
Old Granulomatous Disease: None
Emphysema:  None
Airways Disease: None
 Wall thickness:  Normal.   
 Morphology:  None significant
 Mucostasis:  No   
Diffuse lung fibrosis:  None  
Focal fibrosis: None
 
Lymph Nodes: None   
Pleura: Normal.
Cardiac. Normal heart size. Normal pericardium.  Moderate multivessel coronary artery calcification..
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Negative screen.  Nodules suspicious for lung cancer.
Recommend continued annual screening in 12 months based on risk factors.
 
2.  Prior left upper lobectomy
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.',NULL,'smith',20);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (19,'0878285-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: CT chest performed December 01, 2014
 
INDICATION: 56 y/o female, 43 p/y history, screening exam   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest wo (3a, 114);  
 
 
 
FINDINGS:   
ACTIONABLE LUNG NODULES:  
 
None.   
 
 
INDETERMINATE NODULES:   
 
None  
 
 
LUNG PARENCHYMA:
 
micronodules (= 3 mm) or small nodules 4-5 mm:  None
 
 
OLD GRANULOMATOUS DISEASE:  
 
None  
 
EMPHYSEMA:   
 
Mild apical paraseptal emphysema.
 
Mild predominantly upper lobe centrilobular emphysema.  
 
LARGE AIRWAYS DISEASE: Yes.   
 
 Wall thickness: Mild bronchial wall thickening of the large airways   
 Morphology:  Bronchiectasis
 Distribution: Lower lobes greater than upper lobes.
 
 
SMALL AIRWAYS DISEASE:  No
 
LUNG FIBROSIS:  None  
 
Lymph Nodes: Not well evaluated with low dose technique
 
Pleura: No pleural effusion. No pneumothorax.
 
Cardiac: Heart is normal in size. Triple-vessel coronary artery calcification. Atherosclerotic changes of the thoracic aorta..
 
Additional Free Text:  Minimal bibasilar atelectasis.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.    Recommend continued annual screening in 12 months based on risk factors.
 
 
2.  Mild, upper lobe predominant paraseptal and centrilobular emphysema. Minimal chronic large airways disease.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',21);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (20,'0914241-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: 12/01/2014 UCLA chest CT.
 
INDICATION: 77 y/o female, 22 pack year history. Breast carcinoma. Follow up lung nodule seen on CT abdomen and pelvis 11/13   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest w/o (2a, 71)
 
FINDINGS:   
ACTIONABLE LUNG NODULES:  
Nodule Number: 1
 Anatomic Location: Right lower lobe
 Size = 15 x 10 mm (4-54), previously 10 x 6 mm (2-44)
 Consistency: Solid component < 5 mm/part-solid nodule  
 Evolution: Interval increase
 Level of suspicion for malignancy: Intermediate to moderately high
 
PARENCHYMA:
 
Focal Fibrosis: Essentially unchanged reticulation, architectural and pleural parenchymal interface distortion involving the apical and anterolateral right upper lobe, consistent with postradiation fibrosis.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, left common carotid, left subclavian, left anterior descending, circumflex and right coronary arteries. Increased small pericardial effusion.
 
Other: Unchanged sclerosis involving the right 6th and 7th and left 7th ribs, of doubtful clinical significance.
 
Decreased but persistent left breast cutaneous thickening with soft tissue and calcified infiltration into the fibroglandular tissue.
 
Stable right lumpectomy and right axillary lymph node dissection.  
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Positive screen:  Solid component < 5 mm/part-solid nodule 15 x 10 mm. Clinical suspicion is intermediate to moderately high. This abnormality may be further evaluated with: percutaneous lung biopsy.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',22);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (21,'0980397-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM 


COMPARISON: No prior studies available for comparison.


INDICATION: 67 year-old male with a 50+ pack-year history of smoking.


TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.


The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (2a, 91) 


FINDINGS:   
ACTIONABLE LUNG NODULES: None.


INDETERMINATE NODULES:  None.


LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  None.


OLD GRANULOMATOUS DISEASE: None. 


EMPHYSEMA: Yes.
 Type: Centrilobular.
 Distribution: Upper lobe predominance.
 Severity: Severe (51-75%).


LARGE AIRWAYS DISEASE: Yes.  Features:
 Wall thickness: Moderate bronchial wall thickening.   
 Morphology:  Luminal narrowing
 Distribution: Diffuse
 Mucostasis:  No


SMALL AIRWAYS DISEASE: Yes.  Features:
 Morphology:  Bronchiolar prominence
 Distribution:  Diffuse
 Mosaic oligemia:  Not visible
 Mucostasis:  No


LUNG FIBROSIS:  None. 


Lymph Nodes: None.  


Pleura: Normal.


Cardiac: Heart size is normal. Coronary calcifications:  Present in the left anterior descending and circumflex arteries.


Large stone is seen within the gallbladder lumen. An exophytic cyst arising from the midpole of the right kidney is noted.


IMPRESSIONS:


1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.


2.  Cholelithiasis.


I, Joe Smith, MD, have personally reviewed this study and agree with the findings above.


NOTES:


This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    


Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',23);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (22,'1000504-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: 55 yo male with 60 pack year smoking history requires screening for lung ca   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.11 CTDIvol; 77 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
PARENCHYMA:
 
Occasional parenchymal scars with regional architectural distortion in right middle lobe, anterior segment of right lower lobe, from prior parenchymal possibly infective insults. Parenchymal scarring in medial segment of right lower lobe from enlarged  
osteophytes and continous irritation.
 
Micronodules:  None.
 
Old granulomatous disease: None.
 
Emphysema:  None.
 
Airways disease: Bilateral peribronchial thickening with bronchiectasis and occasional bronchiolectasis keeping with chronic large and small airway disease possibly smoking-related.
 
Diffuse lung fibrosis:  None.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.
 
Pleura: Normal.
 
Cardiac: Atherosclerotic disease of coronary arteries. Thoracic aorta and pulmonary artery appear normal in caliber..
 
Additional findings: Multiple osteophytes involving mid and lower thoracic spine, degenerative. Ill-defined sclerotic lesion in right 9th rib is likely degenerative.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Negative screen. Followup in one year with low-dose CT scan is recommended.
 
2.  Bilateral peribronchial thickening with bronchiectasis and occasional bronchiolectasis keeping with chronic large and small airway disease possibly smoking-related.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',25);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (23,'1121170-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM 


COMPARISON: PA lateral chest radiograph December 01, 2014


INDICATION: 78 yo male, 10 pack years, screening  


TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.


Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 64 DLP.


FINDINGS:   
ACTIONABLE LUNG NODULES: None (defined as Solid nodule = 10 mm, Pure GGN = 15 mm, PSN = 10 mm, solid component or = 5 mm)  


INDETERMINATE NODULES: None (defined as:  Solid 6-9 mm/Pure GGN 6-14 mm/PSN < 10 mm, Solid part < 5 mm)


LUNG PARENCHYMA:
 Additional micronodules: (= 3 mm) or small nodules 4-5 mm:  Micronodules
 Quantity:2
 Consistency: Solid
 Representative locations: Left upper lobe (2-132); left lower lobe (2-184)
 Distinguishing features: Juxtapleural; perifissural


OLD GRANULOMATOUS DISEASE: Present calcified micronodule in the left upper lobe (2-74) 


EMPHYSEMA:  Yes
 Type: Centrilobular
 Distribution: Upper lobe predominant
 Severity: Trace (< 5%)


LARGE AIRWAYS DISEASE: Yes
 Wall thickness:  Mild
 Morphology:  Mild bronchiectasis
 Distribution: Lower lobe predominant
 Mucostasis:  Yes


SMALL AIRWAYS DISEASE: No


LUNG FIBROSIS:  None significant


Lymph Nodes: Not well evaluated with low dose technique


Pleura: Normal


Cardiac: Normal heart size. Calcifications are present in the left anterior descending and right coronary arteries.


Additional Free Text: Linear bandlike scarring is present in the bilateral lower lobes.


IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.


I, Joe Smith, MD have reviewed these images and agree with the above findings.


NOTES:


This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    


Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',26);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (24,'1140370-aaron.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: Chest CT 12/01/2014
 
INDICATION: Screening for lung CA  66 year-old male, 60 + pack yr   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  One CTDIvol; 56 DLP.
 
FINDINGS:   
SUSPICIOUS LUNG NODULES: Yes.   
Nodule Number:  1
 Anatomic Location: RLL, posterior basal segment
 Size = 24 x 19 mm (2-289)
 Consistency: Solid
 Margins:  Lobulated
 Adjacency:  Pleural retraction by lesion
 Evolution: Not present 2/4/2010
 Level of suspicion for malignancy: Highly probable NSCLC.
 
 
INDETERMINATE NODULES:  None
 
PARENCHYMA:  
Micronodules:  None  
 
Old granulomatous disease: Moderately severe, stable calcific biapical pleural parenchymal fibrosis. Small comment stable calcified nodule in right upper lobe.  
 
Emphysema:  Present  
 Type: Centrilobular, lesser paraseptal   
 Distribution: Diffuse, upper lobe predominant   
 Severity: Moderate  
 
Airways disease: Bronchial wall thickening of the central airways..    
Lymph Nodes: None present by size criteria   
Pleura: No effusion.
Cardiac: Normal heart size. Normal pericardium.
Extensive, multivessel coronary artery calcification. Moderate aortic calcification.
Upper abdomen: Inadequately visualized on low dose technique. Large right and smaller left renal cysts, previously described.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Positive screen: Lung-RADS category 4B with new solid, lobulated pleural-based nodule measuring up to 24 mm long diameter.  Clinical suspicion is high. Malignant histology should be confirmed with percutaneous lung  
core needle biopsy (Thoracic interventional radiology: Drs. Genshaft, Abtin), then staging PET/CT.  Staging not adequate on LDCT, but this appears to be localized and amenable to local therapy.
 
2. Moderately severe centrilobular and paraseptal emphysema, upper lobe predominant.
3. Moderate calcific biapical pleuroparenchymal scarring from OGD.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.',NULL,'smith',27);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (25,'1140383-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: 12/01/2014 Tower Hematology Oncology chest CT.
 
INDICATION: Hodgkin''s lymphoma. Follow-up lung nodules. Age 70, 30+ pack year history.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  29.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 56)
 
FINDINGS:   
 
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Nodules: Unchanged calcified and noncalcified subcentimeter nodules within the right upper lobe (3-16, 23), left upper lobe (3-16, 19, 40), left lower lobe (3-36, 59), right middle lobe (3-43, 46, 49) and the largest within the right lower lobe (3-66),  
likely a combination of treated lymphoma and end-airways disease.
 
Focal Fibrosis: Unchanged reticulation, architectural and pleural parenchymal interface distortion and regional volume loss involving the apical and paracardiomediastinal right and paracardiomediastinal left upper and bilateral lower lobes, consistent  
with postradiation fibrosis.
 
Lymph Nodes: Unchanged coarsely calcified prevascular, precaval and right paratracheal lymph nodes, consistent with treated lymphoma.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, left anterior descending, circumflex and right coronary arteries..
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',28);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (26,'1190960-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: December 12, 2014
 
INDICATION: 75 YEAR-OLD FEMALE, 12 P/Y. LUNG NODULE/HIGH RISK SMOKER   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.56 CTDIvol; 42 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
PARENCHYMA:
 
Micronodules:  Micronodules in left lower lobe (3-65) and right lower lobe (3- 61) remain stable.
 
Interval further decrease in size and currently a scar at right upper lobe nodule with focal calcification keeping with resolved granuloma.
 
Chronic partial right middle lobe atelectasis.
 
Emphysema: Mild predominantly upper lobe centrilobular emphysema.
 
Airways disease: Subtle bronchiectasis.
 
Diffuse lung fibrosis:  None.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Trace bilateral pleural effusion, unchanged.
 
Cardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber..
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen. Follow up in one year with LDCT.
 
2.  Prior parenchymal scarring, old granulomatous disease, and resolving granuloma.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',29);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (27,'1210898-aaron.txt','EXAM <Low dose CT Lung Cancer Screening >  <Date of Exam>
 
COMPARE chest CT 12/01/2014
 
HISTORY 55 year-old male, 34 p/y history. Baseline lung cancer screening
 
TECHNIQUE A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 26 cm using a low radiation dose technique.  Coronal  
and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.
 
RADIATION DOSE:  1 Volumetric series was performed for this exam.  
 CTDIvol (CT dose Index-volume) = one mG
 DLP (Dose Length Product) = 39  mG cm  
 
FINDINGS:
Indeterminate or Suspicious Lung Nodules (Category 4B): Present
Nodule ID Number:   
1. Solid nodule in the right apex (2-24)
Size:  17 x 13 mm;  Mean diameter = 15;
Evolution:  Indeterminate.  Apical scarring is present on prior chest radiograph and CT.  
Differences in spatial quality preclude assessment of change over time
Level of suspicion for lung cancer:  Moderately low
LungRADS Nodule Category:  4B
 
Benign Appearing/Non-actionable Nodules (Category 2):  Yes
Quantity:  4 ground glass nodules bilaterally, all < 15 mm.
Representative locations: Right upper lobe (2-81), right lower lobe (2-134, 172), left upper lobe (2-152), and left lower lobe (2-142)
Considerations: Small ground glass nodules are common in the setting of fibrosis or preneoplasia.    
 
Benign Nodules (Category 1): No
 
LUNG PARENCHYMA
Emphysema:  Present: Centrilobular emphysema, upper lobe predominant, trace (< 5%).
Airways disease:  Present: Mild bronchial wall thickening of central airways.
Focal or Diffuse fibrosis:  Present and focal in both apices, likely post inflammatory.
 
OTHER ANATOMIC REGIONS
Lymph Nodes:  Normal sized intrathoracic lymph nodes.
Pleura:  Normal
Cardiac:  Normal heart size. Normal pericardium. No significant coronary vascular calcifications.
Osseous: Healed fracture deformity left 8th posterior rib.
Significant Other findings:  None
 
 
 
IMPRESSION
1. Lung Cancer Screening: Category 4B
Solid nodule in right apex, likely representing apical fibrosis seen on prior images.  Assessment for change over time is indeterminate.  Recommend 3 month follow-up low dose CT to confirm the absence of change.
2.   Scattered small ground glass nodules, benign appearing
 
NOTES:   
This report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS).  
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.',NULL,'smith',30);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (28,'1221928-adam.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: 71 yo male, smoking 30 pack year history, current smoker   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.5 CTDIvol; 100 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Airways disease: Bilateral peribronchial thickening with bronchiectasis and bronchiolectasis. Occasional endobronchial mucus impaction. Larger micronodules for example in left upper lobe (3-30) is too small to characterize. Focal parenchymal scarring for
 example in right middle lobe and left upper lobe (3-35). Suggest attention to the left upper lobe pulmonary scar.
 
Diffuse lung fibrosis:  None.  
 
Focal Fibrosis: Post infective scarring.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Normal..
 
Cardiac: Extensive atherosclerotic disease of coronary arteries. Occasional atherosclerotic disease of thoracic aorta.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.
 
2.  Occasional pulmonary micronodules at least one in left upper lobe and the other in right middle lobe, are too small to characterize and of indeterminate etiology. Suggest attention to follow up CT scan in one year.
 
3. Smoking-related chronic large and small airway disease and respiratory bronchiolitis.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',31);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (29,'1235646-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
COMPARISON: 12/01/2014 UCLA CT-PET.
 
INDICATION: Colorectal carcinoma. Smoker for 20 years-early pharyngeal leukoplakia. Age 58, 40+ pack years.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 32.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose:  
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (2a, 63)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES: New 7 x 4 mm ground glass nodule within the right upper lobe (3-106).
Nodule Number: 1
 Anatomic Location: Right upper lobe
 Size = 7 x 4 mm (3-106)
 Consistency: Ground glass
 Evolution: New from prior study
 Level of suspicion for malignancy: Low
 
PARENCHYMA:
 
Micronodules: Unchanged subcentimeter nodules within the right upper lobe (4-24, 25) and left lower lobe (4-55, 72), too small to characterize but of doubtful clinical significance given radiographic stability.
 
Emphysema: At least mild smoking-related centrilobular emphysema.
 
Airways disease: Scattered peribronchial and peribronchiolar thickening.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Indeterminate: New 7 x 4 mm ground glass nodule within the right lower lobe. Clinical suspicion is low. Recommend 4 month follow-up low dose CT scan to assess for persistence.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',32);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (30,'1243232-smith.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
COMPARISON: None available.
 
INDICATION: 69 yo female, 1-2 packs/day x 50 years cigarette use.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 35.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest wo (3a, 91); L-Spine (15a, 431)
 
The following accession numbers are related to this dose report 40854892: 40873125
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Old granulomatous disease: Biapical fibronodular pleural parenchymal scarring and coarsely calcified subcentimeter nodule within the right upper lobe (4-38).  
 
Airways disease: Diffuse peribronchial and peribronchiolar thickening with associated airway irregularity and ectasia.
 
Cardiac: Atherosclerotic of the thoracic aorta and left anterior descending coronary artery.
 
Other: 10 mm left thyroid gland nodule (4-7). Thyroid ultrasound may be useful for further characterization.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  No nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.
 
2. 10 mm left thyroid gland nodule. Thyroid ultrasound may be useful for further characterization.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',33);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (31,'1299216-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 21, 2021 01:00:00 PM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: 30 pack years of smoking. quit 1980, female age 58.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  0.13 and 2.78   CTDIvol; 98 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
LUNG PARENCHYMA: Micronodules in juxta fissural right lower lobe (3-46) of indeterminate etiology.
 
OLD GRANULOMATOUS DISEASE: None.  
 
EMPHYSEMA:  None.  
 
LARGE AIRWAYS DISEASE: None.
 
SMALL AIRWAYS DISEASE:  None the
 
LUNG FIBROSIS:  None.  
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Normal
 
Cardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber.
 
Additional Free Text:  If you need to clarify something or expand beyond minimal data elements.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  
 
2.  Micronodules in juxta fissural right lower lobe (3-46) of indeterminate etiology. Suggest attention with a one year followup CT scan.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',34);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (32,'1302463-gutierrez.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 13, 2021 04:08:00 PM  
 
COMPARISON: None
 
INDICATION: 56 year old female. Greater than 30-pack-year smoking history   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.59 CTDIvol; 58 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES:  None
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Additional micronodules present
 Quantity: 5
 Consistency: Ground glass and solid
 Representative locations: Right upper lobe (2-59)
 Distinguishing features: No distinguishing features
 
OLD GRANULOMATOUS DISEASE: None
 
EMPHYSEMA: Yes:  If present:  
 Type: Centrilobular, with occasional paraseptal foci
 Distribution: Upper lobe predominant
 Severity: Mild
 
LARGE AIRWAYS DISEASE: Yes  Features:
 Wall thickness:  Mild
 Morphology:  Bronchiectasis
 Distribution: Diffuse
 Mucostasis:  No
 
SMALL AIRWAYS DISEASE:  No  Features:
 
LUNG FIBROSIS: None. Linear bands of scarring involving the bilateral lower and right middle lobe.
 
Lymph Nodes: 8 mm nonspecific right lower paratracheal lymph node.
 
Pleura: Normal
 
Cardiac: Normal heart size. Scattered atherosclerotic calcifications of the thoracic aorta and branch vessels. Coronary calcifications:  Minimal present in the right coronary artery.  
 
Additional Free Text:  Partially visualized stone within the gallbladder fundus.  Of note, low dose technique limits evaluation of the soft tissue structures.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
2.  Partially visualized cholelithiasis.
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',35);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (33,'1387607-aberle.txt','EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-02-01 13:00:00
 
COMPARE:  Two view chest 9/10/2020
 
HISTORY:  73 year-old male. Baseline lung cancer screening; current smoker since age 14 of 1/2 PPD
 
TECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 31 cm using a low radiation dose technique.   
Coronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.
 
RADIATION DOSE:  1 Volumetric series was performed for this exam.  
 CTDIvol (CT dose Index-volume) = 2 mG
 DLP (Dose Length Product) = 70  mG cm  
 
FINDINGS:
Indeterminate or Suspicious Lung Nodules (Category 3-4B): None
 
Benign Appearing/Non-actionable Nodules (Category 2):  One small nodule as follows:
 Ground glass nodule in left lower lobe, 7 mm (2-279).  Polyhedral morphology suggests benign etiology.
 
Benign Nodules (Category 1): Calcified micronodule right middle lobe (2-186)
 
LUNG PARENCHYMA
Emphysema:  None
Airways disease:  None
Fibrosis: Band like scarring right middle lobe.  
 
OTHER ANATOMIC REGIONS
Lymph Nodes:  No intrathoracic adenopathy
Pleura:  Normal
Cardiac:  Heart size normal. Pericardium normal. No coronary artery calcifications.
Other findings:  None significant
 
IMPRESSION
1. Lung Cancer Screening: Category 2 benign appearing/nonactionable ground glass nodule in left lower lobe.  
Recommend annual screening if this patient satisfies current eligibility criteria.
 
 
NOTES:   
This report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  
 
This study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.',NULL,'smith',36);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (34,'1393169-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 12, 2021 02:17:00 PM  
 
COMPARISON: December 12, 2020
 
INDICATION: Screening: Age 55-80 yrs, currently smokes or quit in last 15 yrs, 30 pack year or more smoking history   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.57 CTDIvol; 52 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: Lobulated L-shaped nodule in left lower lobe measuring up to 9 mm (4-74) of indeterminate etiology.
 
Interval increase in size of currently 14 mm groundglass nodule in right lower lobe (4-60).
 
Interval increase in size of groundglass nodule in left upper lobe currently measuring 9 mm (43).
 
LUNG PARENCHYMA: Bilateral peribronchial thickening with the widespread innumerable pulmonary micronodules and endobronchial mucous plugs.
 
EMPHYSEMA:  Mild upper lobe greater than lower lobe predominantly centrilobular emphysema.  
 
LUNG FIBROSIS:  None.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Normal.
 
 
Cardiac: Atherosclerotic disease of coronary arteries.
 
Additional Free Text:  Visualized upper abdominal organs are unremarkable.
 
IMPRESSIONS:
 LDCT lung cancer screening exam:  Indeterminate:  
 
Lobulated L-shaped nodule in left lower lobe measuring up to 9 mm (4-74) of indeterminate etiology. Suggest followup in 3 months with CT scan of chest to evaluate for change in size and if necessary lung biopsy.
 
Interval increase in size of currently 14 mm groundglass nodule in right lower lobe (4-60). This groundglass nodule likely represent adenocarcinoma in situ.
 
Interval increase in size of groundglass nodule in left upper lobe currently measuring 9 mm (43). This groundglass nodule likely represent adenocarcinoma in situ.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',37);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (35,'1519527-genshaft.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST February 10, 2021 03:37:00 AM  
 
COMPARISON: None available.
 
INDICATION: 65 yo male, history of greater than 30 pack year smoking, lung cancer screening   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 71 DLP.
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest wo (2a, 71);  
 
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present
 Quantity: N (up to 1-5)
 Consistency: Solid
 Representative locations: (2-286)
 Distinguishing features: Likely endobronchial secretion impaction.
 
OLD GRANULOMATOUS DISEASE: None.  
 
EMPHYSEMA:  None significant.  
 
LARGE AIRWAYS DISEASE: Yes  
 Wall thickness: Mild bronchial wall thickening.   
 Morphology:  Bronchiectasis
 Distribution: Lower lobe predominant
 Mucostasis:  Yes
 
SMALL AIRWAYS DISEASE:  No
 
LUNG FIBROSIS:  None significant  
 
Lymph Nodes: Not well evaluated with low dose technique
 
Pleura: None.  
 
Cardiac: Not well evaluated.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  Small nodules not suspicious for lung cancer; probable endobronchial impaction.  Recommend continued annual screening in 12 months based on risk factors.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',38);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (36,'1570829-aberle.txt','EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-04-05 11:29:00
 
COMPARE:  No prior images
 
HISTORY:  61 year old female, 30+ p/y smoking history. Baseline lung screening
 
TECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 31 cm using a low radiation dose technique.   
Coronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.
 
RADIATION DOSE:  1 Volumetric series was performed for this exam.  
 CTDIvol (CT dose Index-volume) = 2 mG
 DLP (Dose Length Product) = 52  mG cm  
 
FINDINGS:
Indeterminate or Suspicious Lung Nodules (Category 3-4B): None
 
Benign Appearing/Non-actionable Nodules (Category 2):  None
 
Benign nodules (Category 1): Small calcified micronodule right upper lobe (4-105)
 
LUNG PARENCHYMA
Emphysema:  Absent
Airways disease:  Absent
Fibrosis:  Absent
 
OTHER ANATOMIC REGIONS
Lymph Nodes:  Multiple moderate sized lymph nodes, concentrated in the left supraclavicular, bilateral axillary/subpectoral, bilateral paratracheal, low prevascular, and subcarinal regions.  Primary concern is lymphoma or lymphoproliferative process.   
Diffuse adenopathy may also be seen with drug reactions, viral infection, and benign granulomatous disease.   
Pleura:  Normal
Cardiac:   Heart size normal. Pericardium normal. No coronary vascular calcification.
 
Other findings:   
Calcified gallstones.
Small hiatal hernia.
 
 
IMPRESSION
1. Lung Cancer Screening: Category 1S.
No findings relevant to lung cancer.  Recommend annual screening if patient satisfies eligibility criteria.
2.  Multistation moderate sized lymph nodes as described above.
The left supraclavicular or axillary nodes may be amenable to percutaneous biopsy if clinically indicated.
 
 NOTES:   
This report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  
 
This study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.',NULL,'smith',39);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (37,'1621021-suh.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 19, 2021 05:16:00 AM 


COMPARISON: None.


INDICATION: 70-year-old man with 50 pack-year smoking history.


TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.


Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 76 DLP.


FINDINGS:   
ACTIONABLE LUNG NODULES: None.


INDETERMINANT LUNG NODULES: None.


LUNG PARENCHYMA: There is mild ectasia of airways is seen bilaterally. Non-measurable scattered micro-nodules are seen in the bilateral lungs, lung periphery, likely postinflammatory in nature.


Cardiac: Cardiac size is normal. There is moderate diffuse coronary artery calcification. The aorta and pulmonary arteries are normal in caliber.


IMPRESSIONS:
LDCT lung cancer screening exam:  Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.


NOTES:


This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    


Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38. 


I, Joe Smith, MD have reviewed these images and agree with the above findings.',NULL,'smith',40);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (38,'1628597-suh.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 13, 2021 03:52:00 AM  
 
COMPARISON: None available.
 
INDICATION: Hypertension. Smoker over 65 years of age, greater than 20 pack year smoking history.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 36.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest (3a, 116); CaScSeq w/o (5a, 66); CaScSeq w/o (5a, 66)
 
The following accession numbers are related to this dose report 40841675: 40841674
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Old granulomatous disease: Coarsely calcified subcentimeter nodule within the lingula (6-55) and within the juxtapleural right upper lobe (6-27).
 
Emphysema:  At least mild centrilobular, evaluation limited by low dose technique and patient size.  
 
Airways disease: Clustered subcentimeter nodularity within the right middle lobe (6-58), likely end-airways disease.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta. Aortic valve leaflet calcifications..
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',41);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (39,'1629025-suh.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Oct 13, 2021 03:24:00 AM  
 
COMPARISON: None available.
 
INDICATION: 70 year-old male. Cough and smoked >30 pack-years and no smoking 30+ years.
 
TECHNIQUE: A low dose helical CT CHEST was performed on a Siemens 64-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV =  28.0 cm using 35 mAs. Coronal and sagittal reformations
 and MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 62)  
 
FINDINGS:   
Lung Nodules: Present. Features as below:
Anatomic Location: Right lower lobe lateral basal segment  
Temporal: Indeterminate
Size = 4 mm (3-71)
Consistency: Ground glass
Margins: Smooth
Adjacency: Subpleural intraparenchymal
Probability of invasion: None
Level of suspicion for primary lung cancer: Low
 
Lung Parenchyma: Biapical pleural parenchymal scarring; age-related versus prior granulomatous disease.
 
Airway disease: Occasional scattered peribronchial and peribronchiolar thickening with associated mild airway irregularity and ectasia, consistent with large and small airways disease, albeit relatively nonspecific.
 
Mediastinum: No evidence for clinically significant intrathoracic lymphadenopathy by CT size criteria.
 
Pleura: Normal.
 
Cardiac: Atherosclerotic calcification of the thoracic aorta.
 
Skeleton: Subcentimeter sclerosis within the sternal body (3-37), likely enostosis, or bone island.
 
Other: Right thyroid nodule resection. Limited imaging of the upper abdomen demonstrates 15 mm left hepatic lobe cyst (3-95).
 
IMPRESSION:
Solitary 4 mm ground glass nodule within the right lower lobe. Low level of suspicion for primary lung neoplasm.
Recommendation:  Fleischner and Godoy recommendations for now.',NULL,'smith',42);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (40,'1636877-goldin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST April 13, 2021 09:11:00 PM  
 
COMPARISON: October 5, 2020
 
INDICATION: 62 yo F with h/o heavy smoking, Lung nodules, noncalcified, LUL and RLL, needs screening. for malignancy. 42 p/y smoking history.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None
 
Additional Actionable Nodules:  No  
 
INDETERMINATE NODULES:  None
 
Additional Indeterminate Nodules:  None
 
PARENCHYMA:
 
Micronodules:  Three to 4 micronodules identified without change from the CT study of 2011. These all measure less than 3 mm. Although most are uncalcified there is at least one which is calcified and there is associated granulomatous calcification  
within Ipsilateral right hilar nodes.
 
Old granulomatous disease: Present as described above  
 
Emphysema: None
 
Airways disease: Yes
 Wall thickness:  Mild bronchial wall thickening.   
 Morphology:  Bronchiolectasis  
 Distribution: Diffuse  
 Mucostasis:  No
 
 
Diffuse lung fibrosis:  None  
Focal Fibrosis: None  
 
Lymph Nodes: Not well evaluated with low dose technique.  
 
Pleura: Normal
 
Cardiac: Heart size Normal/Enlarged.  Coronary calcifications: None   
 
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
2. All granulomatous disease stable micronodules unchanged from 2011. No further followup required  
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',43);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (41,'1678113-suh.txt','CT LUNG LOW DOSE WO CONTRAST May 19, 2021 12:32:00 PM 


COMPARISON: Chest radiograph June 12, 2020


INDICATION: 73 yr old male. Evaluate PNA and rule out malignancy, 150 Pack yr tobacco hx  


TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.


DOSE: One exposure was performed for this screening chest CT.  Exposure 1:  1.19 CTDIvol; 37.64 DLP.


FINDINGS:   
ACTIONABLE LUNG NODULES: None.


INDETERMINATE NODULES:  None.


LUNG PARENCHYMA: Multifocal airspace consolidation involving the posterior dependent aspects of the left upper, lingular, and left lower lobes. Secretions noted within left lower lobe segmental airways.  3 mm right lower lobe groundglass nodule (4-34).  
Mild upper lobe predominant bronchial/bronchiolar thickening, compatible with large/small airways disease. 


OLD GRANULOMATOUS DISEASE: Calcified hilar lymph nodes, compatible with prior granulomatous disease.


EMPHYSEMA:  Diffuse, upper lobe predominant centrilobular emphysema.


Lymph Nodes: Not well evaluated with low dose technique.  


Pleura: Trace left pleural effusion.  


Cardiac: Normal heart size, without pericardial effusion. Extensive vascular calcification involving the thoracic aorta, mitral valve, and coronary arteries. Thoracic aorta and pulmonary artery normal in caliber.


IMPRESSIONS:
1. LDCT lung cancer screening exam: Negative screen.  No nodules not suspicious for lung cancer.  
2. Multifocal consolidation within the left lung with associated lower lobe airway secretions; query pneumonia. Recommend short interval followup (4-6 weeks) to ensure resolution given extensive smoking history.


I, Joe Smith, M.D., have reviewed this examination and I agree with the dictated report.


NOTES:
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    


Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',44);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (42,'1679023-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST February 21, 2021 01:40:00 PM  
 
COMPARISON: No prior CT Chest available for comparison.
 
INDICATION: 73 yo female, smoker 40 years
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.24 CTDIvol; 63 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Micronodule in left lower lobe adjacent to the left hemidiaphragm (3-67)
 Quantity: One
 Consistency: Solid
 Representative locations: 3-67
 Distinguishing features: None
 
OLD GRANULOMATOUS DISEASE: None
 
EMPHYSEMA:  Moderate upper lobe dominant centrilobular emphysema.  
 
LARGE AIRWAYS DISEASE: Mild bronchiectasis with peribronchial thickening keeping with smoking-related airway disease.
 
SMALL AIRWAYS DISEASE:  Cannot be evaluated.
 
LUNG FIBROSIS:  None.  
 
Lymph Nodes: None.   
 
Pleura: None.
 
Additional Free Text:  Atherosclerotic disease of thoracic aorta and coronary arteries.
 
Moderate lateral hernia. Calcifications in left breast.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.
 
2.  Nonspecific micronodule in left lower lobe. Suggest followup in one year regarding this nodule.
 
3. Moderate lateral hernia.
 
4. Moderate upper lobe dominant centrilobular emphysema. Bilateral bronchiectasis and chronic smoking-related airway disease.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',45);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (43,'1706938-suh.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 15, 2021 02:32:00 AM  
 
COMPARISON: None available.
 
INDICATION: 65 yo male, 1 pack per day cigarette use, quit 2013.  
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 33.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  
acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest Iow dose (2a, 64)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
 
INDETERMINATE NODULES: None.   
 
PARENCHYMA:
 
Micronodules:  Subcentimeter nodules within the left upper lobe (3-30), right lower lobe (3-59, 60, 63, 64, 69, 70) and left lower lobe (3-58, 81), some calcified, all nodules likely a combination of end-airways and prior granulomatous disease.
 
Emphysema: At least mild smoking-related centrilobular emphysema.  
 
Airways disease: Diffuse scattered peribronchial and peribronchiolar thickening with associated airway irregularity and ectasia.
 
Focal Fibrosis: Bands with architectural distortion within the right middle lobe, consistent with postinflammatory pleural parenchymal
 
Cardiac: Atherosclerotic calcification of the thoracic aorta.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',46);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (44,'1710993-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 12, 2021 03:12:00 PM  
 
COMPARISON: 2/10/2020
 
INDICATION: 56 year-old M, 20+ pack yrs, lung cancer screening/ micronodules on prior scan   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.
 
Chest wo (3a, 105);  
 
FINDINGS:   
 
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
 Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present
 Quantity: 3
 Consistency: Solid and ground-glass
 Representative locations: Right middle lobe ( 3-67), right lower lobe (3-67), right upper lobe (3-26).
 Distinguishing features: No distinguishing features.
 
OLD GRANULOMATOUS DISEASE: None.  
EMPHYSEMA:  Centrilobular.  Upper lobe predominant.  Severity: Mild (6-25%)  
LARGE AIRWAYS DISEASE: Moderately bronchial wall thickening with bronchiectasis , diffuse. No mucostasis.
SMALL AIRWAYS DISEASE:  No.
LUNG FIBROSIS:  None.
Lymph Nodes: None significant.
Pleura: Normal.   
Cardiac: Normal cardiac size with no significant coronary calcifications.
Bones:  Healed fractures of the 4th through 6th ribs.
 
IMPRESSION:
1.  LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.   
 
2.  No significant interval change in previously described pulmonary micronodules and ground glass opacities.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.  
 
I, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.',NULL,'smith',47);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (45,'1778670-suh.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 12, 2021 03:51:00 AM  
 
COMPARISON: None available.
 
INDICATION: Chronic cough x 2 years, remote history of smoking. Age 67, 13 pack year smoking hx
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30.0 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose:  
The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  
based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest w/o (2a, 60)
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
PARENCHYMA:
 
Old granulomatous disease: Biapical fibronodular pleural parenchymal scarring. Several calcified and noncalcified subcentimeter nodules within the right upper lobe (4-31, 35) and left upper lobe (4-28).
 
Airways disease: Mild diffuse peribronchial and peribronchiolar thickening, consistent with large and small airways disease, albeit relatively nonspecific.   
 
Cardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic and left subclavian arteries.
 
IMPRESSIONS:
LDCT lung cancer screening exam:   
Negative screen.  No/Small nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.
 
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',48);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (46,'1816627-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Dec 25, 2021 06:12:00 PM  
 
COMPARISON: April 23, 2013
 
INDICATION: 76 M with COPD. Lung cancer screening.   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES:  None.
 
LUNG PARENCHYMA:
Interval development of 3 pulmonary micronodules for example in right lower lobe (3-83) and left upper lobe (3-42 and 17). Allowing for history of smoking and size of these nodules, followup in one year with low-dose CT scan is suggested.
 
OLD GRANULOMATOUS DISEASE: Calcified pulmonary nodules, parenchymal scarring predominantly bilateral upper lobes, regional architectural distortion, are suggestive for prior granulomatous disease.
 
Peripheral high density, well-defined, peripheral calcified soft tissue mass measuring 34 x 21 mm (3 and 14) in the peripheral right lung apex is likely fluid filled emphysematous bullae or loculated pleural collection.
 
EMPHYSEMA:  Moderate upper lobe greater than lower lobe centrilobular and paraseptal emphysema and bilateral bronchiectasis and bronchiolectasis keeping with smoking-related lung and airway disease.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Cardiac: Atherosclerotic disease of coronary arteries.
 
Additional Free Text:  Osseous structure of thorax demonstrate  degenerative disease.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.
 
2. Interval development of 3 pulmonary micronodules for example in right lower lobe (3-83) and left upper lobe (3-42 and 17). Allowing for history of smoking and size of these nodules, followup in one year with low-dose CT scan is suggested.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',49);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (47,'1841872-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 21, 2014 08:13:00 AM  
 
COMPARISON: CT chest October 18, 2013
 
INDICATION: 69-year-old woman with history of smoking, lung nodule seen on prior CT chest. 27 pack year smoking history.
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.6 CTDIvol; 64 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: A 1.2 cm solid nodule in the left lower lobe (3-72) is stable in comparison to the prior examination.
INDETERMINATE NODULES: An 8 millimeter groundglass nodule in the right upper lobe (3-19) is also stable in comparison to the prior examination.
LUNG PARENCHYMA: Additional micronodules are stable, for example in the right lower lobe 3-55, 3-63, 3-73, 3-86 and in the left lower lobe 3-83.
OLD GRANULOMATOUS DISEASE: None.  
EMPHYSEMA: None.
LARGE or SMALL AIRWAYS DISEASE: None.
 
Lymph Nodes: No significant lymphadenopathy.   
Pleura: Normal.
Cardiac: Heart size is normal. No pericardial fluid collection. No significant coronary artery calcification. The aorta and pulmonary arteries are normal in caliber..
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Positive screen:  12 mm solid nodule in the left lower lobe stable since Oct 2013.  Clinical suspicion is moderate for lung malignancy. This abnormality may be further evaluated with:  PET-CT, percutaneous lung  
biopsy, surgical staging or potential resection.
2. Additional micronodules as described above are stable.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.  
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.',NULL,'smith',50);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (48,'1857276-aberle.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 14, 2021 05:09:00 PM  
 
COMPARISON: Chest radiograph May 1, 2020
 
INDICATION: 61 year-old female. Low dose CT for lung cancer screening (hx of smoking)   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  4.9 CTDIvol; 150 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None.
 
NON-ACTIONABLE NODULES: Present
Two micronodules (< 4 mm) in left upper lobe (2-159) and right middle lobe (1-178). These are of low clinical suspicion.
Calcified granuloma LLL
 
LUNG:
Interstitial disease:  Patchy subpleural groundglass in the bilateral mid-and lower lobes.  
appearances consistent with mild interstitial fibrosis, albeit non-specific.
 
Emphysema:  None.
Airway disease: None significant. Normal airway wall thickness with mild ectasia in the lower lobes.
 
Pleura: Normal.
 
Cardiac: Heart size is normal. Coronary artery calcification in proximal LAD. Normal pericardium.
 
Mediastinum: Calcified nodes in the inferior pulmonary ligament inferior pulmonary ligament.
 
Abdomen:: Low-density lesion in liver, inadequately characterized on low dose technique. Hepatic granuloma.
Moderate hiatal hernia.  
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:  Negative (Category 3). Small micronodules of low clinical suspicion, query granulomas. Recommend continued annual screening in 12 months based on risk factors.
2. Mild subpleural interstitial fibrosis, nonspecific.
3. Hepatic lucency, not characterized on low dose technique.
 
NOTES:
 
This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.',NULL,'smith',51);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (49,'1878289-abtin.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Feb 09, 2021 02:12:00 PM  
 
COMPARISON: Prior chest CT or 2-view chest, etc.  
 
INDICATION: 59 yr old M  ex smoker   COPD   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.
 
INDETERMINATE NODULES: None
 
PARENCHYMA:
 
Old granulomatous disease: Cluster of calcified and noncalcified micronodules centered in right middle lobe the endobronchial mucus impaction, and occasional calcified and noncalcified nodules in right upper lobe in association with calcified right  
lobar, interlobar and subcarinal station lymph nodes keeping with prior granulomatous disease.  
 
Emphysema:  Yes  
 Type: Centrilobular   
 Distribution: Upper   
 Severity: Trace  
 
Airways disease: Yes
 Wall thickness:  Normal.   
 Morphology:  Acute phthisis
 Distribution: Diffuse
 Mucostasis:  No
 
 
Diffuse lung fibrosis:  None.
 
 
Focal Fibrosis: Scarring in bilateral lower lobes and lingula.
 
Lymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   
 
Pleura: Normal.
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
Negative screen.
 
2. Smoking-related airway disease and mild upper lobe emphysema.
 
3. Old granulomatous disease.
 
Suggest follow with annual screening.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   
   
 
Diagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:
1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   
2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   
3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   
4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  
144:33-38.',NULL,'smith',52);
INSERT INTO `documents` (`document_id`,`name`,`doc_text`,`date`,`author`,`mrn`) VALUES (50,'1888416-aberle.txt','EXAM:  CT LUNG LOW DOSE WO CONTRAST Jul 27, 2021 06:34:00 PM  
 
COMPARISON: PA chest 8/7/2020
 
INDICATION: 70 year-old male, lung cancer screen > 30 pack year history of smoking   
 
TECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  36 cm.  Coronal and sagittal reformations and  
MIPs were reconstructed from the volumetric data.  No contrast was administered.
 
Radiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.7 CTDIvol; 91 DLP.
 
FINDINGS:   
ACTIONABLE LUNG NODULES: None.   
INDETERMINATE NODULES: None
 
 
PARENCHYMA:
 
Micronodules:  None
 
Old granulomatous disease: Present: Calcified micronodule in right apex.  
 
Emphysema:  None  
Airways disease: Minor bronchial wall thickening of central and medium-sized airways.
 Distribution: Diffuse
 Mucostasis:  None
   
Focal or Diffuse lung fibrosis:  Focal fibrosis in the right lower lobe paraspinous region and inferior lingula.  
 
Lymph Nodes: None significant.   
 
Pleura: Normal.
Cardiac. Normal heart size. Normal pericardium. Mild calcification in proximal LAD. Minor aortic root calcification..
 
IMPRESSIONS:
1.  LDCT lung cancer screening exam:   
[Negative screen.  No nodules suspicious for lung cancer. Incidental small calcified micronodule right apex.
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.',NULL,'smith',53);
