-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               Microsoft SQL Server 2014 - 12.0.2000.8
-- Server OS:                    Windows NT 6.3 <X64> (Build 14393: )
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE MAVIN_DEV1
IF NOT EXISTS(SELECT * FROM sys.schemas WHERE [name] = N'app_NlpApp2')      
 EXEC (N'CREATE SCHEMA app_NlpApp2')
-- Dumping structure for table validator.annotation
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."annotation" (
	"id" INT(10,0) NOT NULL,
	"document_namespace" NVARCHAR(500) NOT NULL,
	"document_table" NVARCHAR(500) NOT NULL,
	"document_id" INT(10,0) NOT NULL,
	"document_name" NVARCHAR(100) NULL DEFAULT (NULL),
	"annotation_type" NVARCHAR(500) NULL DEFAULT (NULL),
	"start" INT(10,0) NULL DEFAULT (NULL),
	"end" INT(10,0) NULL DEFAULT (NULL),
	"value" NVARCHAR(max) NULL DEFAULT NULL,
	"features" NVARCHAR(max) NULL DEFAULT NULL,
	"provenance" NVARCHAR(500) NULL DEFAULT (NULL),
	"score" FLOAT(53) NULL DEFAULT ((1))
);

-- Dumping data for table validator.annotation: -1 rows
DELETE FROM "annotation";
/*!40000 ALTER TABLE "annotation" DISABLE KEYS */;
INSERT INTO "annotation" ("id", "document_namespace", "document_table", "document_id", "document_name", "annotation_type", "start", "end", "value", "features", "provenance", "score") VALUES
	(2, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 4, 5, ':', '{"length":"1","category":":","root":":","kind":"punctuation","string":":"}', 'gate8.0', 1),
	(4, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 6, 8, 'CT', '{"length":"2","category":"NNP","orth":"allCaps","root":"ct","kind":"word","string":"CT"}', 'gate8.0', 1),
	(6, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 9, 13, 'LUNG', '{"length":"4","category":"NNP","orth":"allCaps","root":"lung","kind":"word","string":"LUNG"}', 'gate8.0', 1),
	(8, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 14, 17, 'LOW', '{"length":"3","category":"RB","orth":"allCaps","root":"low","kind":"word","string":"LOW"}', 'gate8.0', 1),
	(10, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 18, 22, 'DOSE', '{"length":"4","category":"NNP","orth":"allCaps","root":"dose","kind":"word","string":"DOSE"}', 'gate8.0', 1),
	(12, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 23, 25, 'WO', '{"length":"2","category":"NNP","orth":"allCaps","root":"wo","kind":"word","string":"WO"}', 'gate8.0', 1),
	(14, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 26, 34, 'CONTRAST', '{"orth":"allCaps","category":"NNP","dependencies":["nn(4)","nn(6)","nn(8)","nn(10)","nn(12)","num(16)","dep(18)","dep(24)"],"root":"contrast","string":"CONTRAST","length":"8","kind":"word"}', 'gate8.0', 1),
	(17, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 39, 40, '-', '{"subkind":"dashpunct","length":"1","category":":","root":"-","kind":"punctuation","string":"-"}', 'gate8.0', 1),
	(16, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 35, 39, '2015', '{"length":"4","category":"CD","root":"2015","kind":"number","string":"2015"}', 'gate8.0', 1),
	(19, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 42, 43, '-', '{"subkind":"dashpunct","length":"1","category":":","root":"-","kind":"punctuation","string":"-"}', 'gate8.0', 1),
	(18, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 40, 42, '01', '{"length":"2","category":"CD","dependencies":["dep(22)"],"root":"01","kind":"number","string":"01"}', 'gate8.0', 1),
	(20, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 43, 45, '01', '{"length":"2","category":"CD","root":"01","kind":"number","string":"01"}', 'gate8.0', 1),
	(23, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 48, 49, ':', '{"length":"1","category":":","root":":","kind":"punctuation","string":":"}', 'gate8.0', 1),
	(22, 'validator', 'documents', 1, 'validator-documents-1', 'Token', 46, 48, '00', '{"length":"2","category":"CD","dependencies":["number(20)"],"root":"00","kind":"number","string":"00"}', 'gate8.0', 1),
	
	(2894, 'validator', 'documents', 1, NULL, 'lungrads-age', 121, 133, '55 year-old ', '', 'validation-tool', 1),
	(2824, 'validator', 'documents', 2, NULL, 'lungrads-age', 118, 130, '62 year-old ', '', 'validation-tool', 1),
	(2898, 'validator', 'documents', 5, NULL, 'lungrads-age', 117, 128, '72 year-old', '', 'validation-tool', 1),
	(2965, 'validator', 'documents', 7, NULL, 'lungrads-age', 180, 182, '55', '', 'validation-tool', 1),
	(3115, 'validator', 'documents', 8, NULL, 'lungrads-age', 132, 143, '59 year-old', '', 'validation-tool', 1),
	(3546, 'validator', 'documents', 9, NULL, 'lungrads-age', 130, 135, '71 yo', '', 'validation-tool', 1),
	(3466, 'validator', 'documents', 4, NULL, 'lungrads-age', 179, 191, '63 year old ', '', 'validation-tool', 1),
	(2931, 'validator', 'documents', 3, NULL, 'lungrads-age', 107, 113, '76 yo ', '', 'validation-tool', 1),
	(2795, 'validator', 'documents', 11, NULL, 'lungrads-age', 158, 160, '63', '', 'validation-tool', 1),
	(2510, 'validator', 'documents', 12, NULL, 'lungrads-age', 124, 136, '59 year old ', '', 'validation-tool', 1),
	(4015, 'validator', 'documents', 13, NULL, 'lungrads-age', 96, 101, '55 yo', '', 'validation-tool', 1),
	(1859, 'validator', 'documents', 14, NULL, 'lungrads-age', 154, 156, '73', '', 'validation-tool', 1),
	(3072, 'validator', 'documents', 15, NULL, 'lungrads-age', 158, 163, '79 yo', '', 'validation-tool', 1),
	(3789, 'validator', 'documents', 16, NULL, 'lungrads-age', 117, 128, '73 YEAR-OLD', '', 'validation-tool', 1),
	(2242, 'validator', 'documents', 17, NULL, 'lungrads-age', 109, 120, '69 year old', '', 'validation-tool', 1),
	(1777, 'validator', 'documents', 18, NULL, 'lungrads-age', 128, 140, '55 year old ', '', 'validation-tool', 1),
	(3317, 'validator', 'documents', 19, NULL, 'lungrads-age', 128, 134, '56 y/o', '', 'validation-tool', 1),
	(3453, 'validator', 'documents', 20, NULL, 'lungrads-age', 117, 124, '77 y/o ', '', 'validation-tool', 1),
	(3581, 'validator', 'documents', 21, NULL, 'lungrads-age', 132, 144, ' 67 year-old', '', 'validation-tool', 1),
	(3014, 'validator', 'documents', 22, NULL, 'lungrads-age', 135, 140, '55 yo', '', 'validation-tool', 1),
	(3449, 'validator', 'documents', 23, NULL, 'lungrads-age', 136, 141, '78 yo', '', 'validation-tool', 1),
	(2510, 'validator', 'documents', 24, NULL, 'lungrads-age', 134, 145, '66 year-old', '', 'validation-tool', 1),
	(3365, 'validator', 'documents', 25, NULL, 'lungrads-age', 186, 188, '70', '', 'validation-tool', 1),
	(2754, 'validator', 'documents', 26, NULL, 'lungrads-age', 109, 120, '75 YEAR-OLD', '', 'validation-tool', 1),
	(3194, 'validator', 'documents', 27, NULL, 'lungrads-age', 98, 109, '55 year-old', '', 'validation-tool', 1),
	(2911, 'validator', 'documents', 28, NULL, 'lungrads-age', 135, 140, '71 yo', '', 'validation-tool', 1),
	(3177, 'validator', 'documents', 29, NULL, 'lungrads-age', 191, 193, '58', '', 'validation-tool', 1),
	(3111, 'validator', 'documents', 30, NULL, 'lungrads-age', 107, 113, '69 yo ', '', 'validation-tool', 1),
	(2739, 'validator', 'documents', 31, NULL, 'lungrads-age', 183, 185, '58', '', 'validation-tool', 1),
	(3326, 'validator', 'documents', 32, NULL, 'lungrads-age', 96, 108, '56 year old ', '', 'validation-tool', 1),
	(2353, 'validator', 'documents', 33, NULL, 'lungrads-age', 104, 115, '73 year-old', '', 'validation-tool', 1),
	(3284, 'validator', 'documents', 35, NULL, 'lungrads-age', 112, 117, '65 yo', '', 'validation-tool', 1),
	(2551, 'validator', 'documents', 36, NULL, 'lungrads-age', 95, 107, '61 year old ', '', 'validation-tool', 1),
	(2515, 'validator', 'documents', 37, NULL, 'lungrads-age', 96, 108, '70-year-old ', '', 'validation-tool', 1),
	(3130, 'validator', 'documents', 38, NULL, 'lungrads-age', 133, 141, '65 years', '', 'validation-tool', 1),
	(2173, 'validator', 'documents', 39, NULL, 'lungrads-age', 107, 118, '70 year-old', NULL, 'msa-ie', 1),
	(2915, 'validator', 'documents', 42, NULL, 'lungrads-age', 140, 145, '73 yo', NULL, 'msa-ie', 1),
	(2887, 'validator', 'documents', 45, NULL, 'lungrads-age', 163, 165, '67', NULL, 'msa-ie', 1),
	(2186, 'validator', 'documents', 48, NULL, 'lungrads-age', 120, 131, '61 year-old', NULL, 'msa-ie', 1),
	(1670, 'validator', 'documents', 50, NULL, 'lungrads-age', 109, 120, '70 year-old', NULL, 'msa-ie', 1),
	(2888, 'validator', 'documents', 45, NULL, 'lungrads-pack-years', 162, 163, ' ', '', 'validation-tool', 1);
/*!40000 ALTER TABLE "annotation" ENABLE KEYS */;


-- Dumping structure for table validator.crf
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."crf" (
	"crf_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(100) NOT NULL,
	"html_id" NVARCHAR(500) NOT NULL,
	"frame_id" INT(10,0) NULL DEFAULT (NULL),
	UNIQUE KEY ("name"),
	PRIMARY KEY ("crf_id")
);

-- Dumping data for table validator.crf: -1 rows
DELETE FROM "crf";
/*!40000 ALTER TABLE "crf" DISABLE KEYS */;
INSERT INTO "crf" ("crf_id", "name", "html_id", "frame_id") VALUES
	(1, 'LDCT', 'ldct', 1);
/*!40000 ALTER TABLE "crf" ENABLE KEYS */;


-- Dumping structure for table validator.crf_element
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."crf_element" (
	"crf_id" INT(10,0) NOT NULL,
	"element_id" INT(10,0) NOT NULL,
	PRIMARY KEY ("crf_id","element_id")
);

-- Dumping data for table validator.crf_element: -1 rows
DELETE FROM "crf_element";
/*!40000 ALTER TABLE "crf_element" DISABLE KEYS */;
INSERT INTO "crf_element" ("crf_id", "element_id") VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50),
	(1, 51),
	(1, 52),
	(1, 53),
	(1, 54),
	(1, 55),
	(1, 56),
	(1, 57),
	(1, 58),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 66),
	(1, 67),
	(1, 68);
/*!40000 ALTER TABLE "crf_element" ENABLE KEYS */;


-- Dumping structure for table validator.crf_project
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."crf_project" (
	"crf_project_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	"crf_id" INT(10,0) NULL DEFAULT (NULL),
	"document_table" NVARCHAR(100) NULL DEFAULT (NULL),
	"document_id_column" NVARCHAR(100) NULL DEFAULT (NULL),
	"document_text_column" NVARCHAR(100) NULL DEFAULT (NULL),
	"column_types_map" NVARCHAR(500) NULL DEFAULT (NULL),
	PRIMARY KEY ("crf_project_id")
);

-- Dumping data for table validator.crf_project: -1 rows
DELETE FROM "crf_project";
/*!40000 ALTER TABLE "crf_project" DISABLE KEYS */;
INSERT INTO "crf_project" ("crf_project_id", "name", "crf_id", "document_table", "document_id_column", "document_text_column", "column_types_map") VALUES
	(1, 'Lung_Cancer_Screening', 1, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "crf_project" ENABLE KEYS */;


-- Dumping structure for table validator.crf_project_frame_instance
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."crf_project_frame_instance" (
	"crf_project_id" INT(10,0) NOT NULL,
	"frame_instance_id" INT(10,0) NOT NULL,
	PRIMARY KEY ("crf_project_id","frame_instance_id")
);

-- Dumping data for table validator.crf_project_frame_instance: -1 rows
DELETE FROM "crf_project_frame_instance";
/*!40000 ALTER TABLE "crf_project_frame_instance" DISABLE KEYS */;
INSERT INTO "crf_project_frame_instance" ("crf_project_id", "frame_instance_id") VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50);
/*!40000 ALTER TABLE "crf_project_frame_instance" ENABLE KEYS */;


-- Dumping structure for table validator.crf_section
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."crf_section" (
	"section_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	"crf_id" INT(10,0) NOT NULL,
	"repeat" INT(10,0) NULL DEFAULT (NULL),
	PRIMARY KEY ("section_id")
);

-- Dumping data for table validator.crf_section: -1 rows
DELETE FROM "crf_section";
/*!40000 ALTER TABLE "crf_section" DISABLE KEYS */;
INSERT INTO "crf_section" ("section_id", "name", "crf_id", "repeat") VALUES
	(1, 'Basic Exam Description', 1, 0),
	(2, 'History', 1, 0),
	(3, 'Radiation Dose', 1, 0),
	(4, 'Lung Nodules (LungRADS Category 3-5)', 1, 0),
	(5, 'Lung Nodule Details', 1, -1),
	(6, 'Lung Nodules (LungRADS Category 2)', 1, 0),
	(7, 'Lung Nodules (LungRADS Category 2) Details', 1, 3),
	(8, 'Lung Nodules (LungRADS Category 1)', 1, 0),
	(9, 'Lung Parenchyma', 1, 0),
	(10, 'Other Anatomic Regions', 1, 0),
	(11, 'Impression', 1, 0),
	(12, 'Notes', 1, 0);
/*!40000 ALTER TABLE "crf_section" ENABLE KEYS */;


-- Dumping structure for table validator.data_type
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."data_type" (
	"id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	PRIMARY KEY ("id")
);

-- Dumping data for table validator.data_type: -1 rows
DELETE FROM "data_type";
/*!40000 ALTER TABLE "data_type" DISABLE KEYS */;
INSERT INTO "data_type" ("id", "name") VALUES
	(1, 'number'),
	(2, 'string'),
	(3, 'date'),
	(4, 'categorical');
/*!40000 ALTER TABLE "data_type" ENABLE KEYS */;


-- Dumping structure for table validator.documents
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."documents" (
	"document_id" BIGINT(19,0) NOT NULL,
	"name" VARCHAR(500) NULL DEFAULT (NULL),
	"doc_text" VARCHAR(max) NULL DEFAULT NULL,
	"date" DATETIME2(0) NULL DEFAULT (NULL),
	"author" VARCHAR(100) NULL DEFAULT (NULL),
	"mrn" INT(10,0) NULL DEFAULT (NULL),
	PRIMARY KEY ("document_id")
);

-- Dumping data for table validator.documents: -1 rows
DELETE FROM "documents";
/*!40000 ALTER TABLE "documents" DISABLE KEYS */;
INSERT INTO "documents" ("document_id", "name", "doc_text", "date", "author", "mrn") VALUES
	(1, '0200967-aaron.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00
 
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
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 1),
	(2, '0202292-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 2),
	(3, '0221334-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 3),
	(4, '0327986-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 4),
	(5, '0362025-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 5),
	(6, '0392400-grey.txt', 'CT SCAN CHEST WITHOUT CONTRAST
 
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
factors.. There is coronary artery calcification noted and given the patient''s age evaluation for atherosclerotic disease is profile is recommended', NULL, 'smith', 7),
	(7, '0404980-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 8),
	(8, '0429748-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 9),
	(9, '0451081-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 11),
	(10, '0480803-aaron.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00
 
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
 with symptoms should undergo diagnostic chest CT rather than LDCT screening.', NULL, 'smith', 12),
	(11, '0522869-grey.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 13),
	(12, '0595458-grey.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 14),
	(13, '0633091-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM 


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


I, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.', NULL, 'smith', 15),
	(14, '0726540-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 16),
	(15, '0750522-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 17),
	(16, '0805863-gregson.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 18),
	(17, '0846711-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
 
I, Joe Smith MD, have reviewed these images and agree with the above findings.', NULL, 'smith', 19),
	(18, '0859355-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST  Jan 01, 2015 00:00:00 AM  
 
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
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 20),
	(19, '0878285-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 21),
	(20, '0914241-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 22),
	(21, '0980397-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM 


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
144:33-38.', NULL, 'smith', 23),
	(22, '1000504-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 25),
	(23, '1121170-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM 


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
144:33-38.', NULL, 'smith', 26),
	(24, '1140370-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 27),
	(25, '1140383-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 28),
	(26, '1190960-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 29),
	(27, '1210898-aaron.txt', 'EXAM <Low dose CT Lung Cancer Screening >  <Date of Exam>
 
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
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 30),
	(28, '1221928-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 31),
	(29, '1235646-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  
 
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
144:33-38.', NULL, 'smith', 32),
	(30, '1243232-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 33),
	(31, '1299216-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 21, 2021 01:00:00 PM  
 
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
144:33-38.', NULL, 'smith', 34),
	(32, '1302463-gutierrez.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 13, 2021 04:08:00 PM  
 
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
144:33-38.', NULL, 'smith', 35),
	(33, '1387607-aberle.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-02-01 13:00:00
 
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
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 36),
	(34, '1393169-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 12, 2021 02:17:00 PM  
 
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
144:33-38.', NULL, 'smith', 37),
	(35, '1519527-genshaft.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST February 10, 2021 03:37:00 AM  
 
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
144:33-38.', NULL, 'smith', 38),
	(36, '1570829-aberle.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-04-05 11:29:00
 
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
 
Current USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 39),
	(37, '1621021-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 19, 2021 05:16:00 AM 


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


I, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 40),
	(38, '1628597-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 13, 2021 03:52:00 AM  
 
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
144:33-38.', NULL, 'smith', 41),
	(39, '1629025-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Oct 13, 2021 03:24:00 AM  
 
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
Recommendation:  Fleischner and Godoy recommendations for now.', NULL, 'smith', 42),
	(40, '1636877-goldin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST April 13, 2021 09:11:00 PM  
 
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
144:33-38.', NULL, 'smith', 43),
	(41, '1678113-suh.txt', 'CT LUNG LOW DOSE WO CONTRAST May 19, 2021 12:32:00 PM 


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
144:33-38.', NULL, 'smith', 44),
	(42, '1679023-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST February 21, 2021 01:40:00 PM  
 
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
144:33-38.', NULL, 'smith', 45),
	(43, '1706938-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 15, 2021 02:32:00 AM  
 
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
144:33-38.', NULL, 'smith', 46),
	(44, '1710993-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 12, 2021 03:12:00 PM  
 
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
 
I, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.', NULL, 'smith', 47),
	(45, '1778670-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 12, 2021 03:51:00 AM  
 
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
144:33-38.', NULL, 'smith', 48),
	(46, '1816627-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Dec 25, 2021 06:12:00 PM  
 
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
144:33-38.', NULL, 'smith', 49),
	(47, '1841872-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 21, 2014 08:13:00 AM  
 
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
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 50),
	(48, '1857276-aberle.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 14, 2021 05:09:00 PM  
 
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
 
I, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 51),
	(49, '1878289-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Feb 09, 2021 02:12:00 PM  
 
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
144:33-38.', NULL, 'smith', 52),
	(50, '1888416-aberle.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jul 27, 2021 06:34:00 PM  
 
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
 
NOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 53);
/*!40000 ALTER TABLE "documents" ENABLE KEYS */;


-- Dumping structure for table validator.element
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."element" (
	"element_id" INT(10,0) NOT NULL,
	"display_name" NVARCHAR(500) NULL DEFAULT (NULL),
	"html_id" NVARCHAR(500) NOT NULL,
	"section_id" INT(10,0) NULL DEFAULT (NULL),
	"repeat" INT(10,0) NULL DEFAULT (NULL),
	"element_type" INT(10,0) NULL DEFAULT (NULL),
	"data_type" INT(10,0) NULL DEFAULT (NULL),
	"slot_id" INT(10,0) NULL DEFAULT (NULL),
	"primary_key" SMALLINT(5,0) NULL DEFAULT (NULL),
	PRIMARY KEY ("element_id")
);

-- Dumping data for table validator.element: -1 rows
DELETE FROM "element";
/*!40000 ALTER TABLE "element" DISABLE KEYS */;
INSERT INTO "element" ("element_id", "display_name", "html_id", "section_id", "repeat", "element_type", "data_type", "slot_id", "primary_key") VALUES
	(1, 'Date of Exam', 'exam_date', 1, 1, 1, 2, NULL, 0),
	(2, 'Comparison Exam', 'comparison_exam', 1, 1, 3, 2, NULL, 0),
	(3, 'Reason for Exam', 'reason_for_exam', 2, 1, 3, 2, NULL, 0),
	(4, 'Date of Birth', 'date_of_birth', 2, 1, 1, 2, NULL, 0),
	(5, 'Age', 'age', 2, 1, 1, 1, NULL, 0),
	(6, 'Sex', 'sex', 2, 1, 1, 2, NULL, 0),
	(7, 'Race', 'race', 2, 1, 1, 2, NULL, 0),
	(8, 'Race declined to answer', 'race_declined', 2, 1, 3, 2, NULL, 0),
	(9, 'Ethnicity', 'ethnicity', 2, 1, 3, 2, NULL, 0),
	(10, 'Smoking Status', 'smoking_status', 2, 1, 3, 2, NULL, 0),
	(11, 'Years Since Quit Smoking', 'years_since_quit_smoking', 2, 1, 1, 1, NULL, 0),
	(12, 'Pack Years', 'pack-years', 2, 1, 1, 1, NULL, 0),
	(13, 'CTDIvol (CT Dose Index-Volume)', 'ctdivol', 3, 1, 1, 2, NULL, 0),
	(14, 'DLP (Dose Length Product)', 'dlp', 3, 1, 1, 1, NULL, 0),
	(15, 'LungRADS Category 3-5 Nodules', 'lung_rads_cat_3_5', 4, 1, 3, 2, NULL, 0),
	(16, 'Nodule Number', 'nodule-number', 5, 1, 1, 1, NULL, 0),
	(17, 'Consistency', 'consistency', 5, 1, 3, 2, NULL, 0),
	(18, 'Anatomic Location', 'anatomic_location', 5, 1, 3, 2, NULL, 1),
	(19, 'Series Number', 'series', 5, 1, 1, 1, NULL, 0),
	(20, 'Image Number', 'image', 5, 1, 1, 1, NULL, 0),
	(21, 'Nodule Size (mm)', 'nodule_size_1', 5, 1, 1, 1, NULL, 0),
	(22, 'Nodule Size (mm)', 'nodule_size_2', 5, 1, 1, 1, NULL, 0),
	(23, 'Nodule Mean Diameter (mm)', 'nodule_mean_diameter', 5, 1, 1, 1, NULL, 0),
	(24, 'For PSN: diameter of SOLID component', 'psn_solid_component', 5, 1, 1, 1, NULL, 0),
	(25, 'Evolution', 'evolution', 5, 1, 4, 2, NULL, 0),
	(26, 'Margins', 'margins', 5, 1, 3, 2, NULL, 0),
	(27, 'Level of suspicion for lung cancer', 'level_of_suspicion', 5, 1, 3, 2, NULL, 0),
	(28, 'LungRADS Nodule Category', 'lungrads_nodule_category', 5, 1, 3, 2, NULL, 0),
	(29, 'Comments (Provide rationale if recommendation will deviate from LungRADS algorithm)', 'lungrads_nodule_cat_3_5_comment', 5, 1, 1, 2, NULL, 0),
	(30, 'LungRADS Category 2 Nodules', 'lungrads_cat_2_nodules-present', 6, 1, 3, 2, NULL, 0),
	(31, 'LungRADS Category 2 Nodules Quantity', 'lungrads_cat_2_nodules_quantity', 6, 1, 1, 2, NULL, 0),
	(32, 'Consistency', 'lungrads_cat_2_nodule_consistency', 7, 1, 1, 2, NULL, 0),
	(33, 'Size (mm)', 'lungrads_cat_2_nodule_size', 7, 1, 1, 1, NULL, 0),
	(34, 'Location', 'lungrads_cat_2_nodule_location', 7, 1, 1, 2, NULL, 1),
	(35, 'Series', 'lungrads_cat_2_series', 7, 1, 1, 1, NULL, 0),
	(36, 'Image', 'lungrads_cat_2_image', 7, 1, 1, 1, NULL, 0),
	(37, 'Evolution', 'lungrads_cat_2_evolution', 7, 1, 3, 2, NULL, 0),
	(38, 'LungRADS Category 1 Nodules', 'lungrads_cat_1_nodules-present', 8, 1, 3, 2, NULL, 0),
	(39, 'Consistency', 'lungrads_cat_1_nodule_consistency', 8, 1, 1, 2, NULL, 0),
	(40, 'Location', 'lungrads_cat_1_nodule_location', 8, 1, 1, 2, NULL, 0),
	(41, 'Likely:', 'lungrads_cat_1_nodule_description', 8, 1, 3, 2, NULL, 0),
	(42, 'Emphysema', 'emphysema', 9, 1, 3, 2, NULL, 0),
	(43, 'Emphysema Severity', 'emphysema_severity', 9, 1, 3, 2, NULL, 0),
	(44, 'Emphysema Type', 'emphysema_type', 9, 1, 4, 2, NULL, 0),
	(45, 'Emphysema Distribution', 'emphysema_distribution', 9, 1, 3, 2, NULL, 0),
	(46, 'Airways Disease', 'airways_disease', 9, 1, 3, 2, NULL, 0),
	(47, 'Airways Distribution', 'airways_distribution', 9, 1, 3, 2, NULL, 0),
	(48, 'Airways Location', 'airways_location', 9, 1, 4, 2, NULL, 0),
	(49, 'Focal or Diffuse Fibrosis', 'fibrosis', 9, 1, 3, 2, NULL, 0),
	(50, 'Fibrosis Type', 'fibrosis_type', 9, 1, 3, 2, NULL, 0),
	(51, 'Fibrosis Non-Specific Description', 'fibrosis_non_specific', 9, 1, 1, 2, NULL, 0),
	(52, 'Fibrosis Anatomic Distribution', 'fibrosis_anatomic_distribution', 9, 1, 3, 2, NULL, 0),
	(53, 'Fibrosis Etiology', 'fibrosis_etiology', 9, 1, 3, 2, NULL, 0),
	(54, 'Lymph Nodes', 'lymph_nodes', 10, 1, 3, 2, NULL, 0),
	(55, 'Pleural Disease', 'pleural_disease', 10, 1, 3, 2, NULL, 0),
	(56, 'Pleural Anatomic Location', 'pleural_anatomic_location', 10, 1, 3, 2, NULL, 0),
	(57, 'Pleural Abnormality', 'pleural_abnormality', 10, 1, 3, 2, NULL, 0),
	(58, 'Cardiac Heart Size', 'cardiac_heart_size', 10, 1, 3, 2, NULL, 0),
	(59, 'Pericardium', 'cardiac_pericardium', 10, 1, 3, 2, NULL, 0),
	(60, 'Artery Calcification', 'cardiac_artery_calcification', 10, 1, 3, 2, NULL, 0),
	(61, 'Artery Calcification Distribution', 'cardiac_artery_calcification_distribution', 10, 1, 3, 2, NULL, 0),
	(62, 'Other Cardiac Abnormalities', 'cardiac_artery_other', 10, 1, 4, 2, NULL, 0),
	(63, 'Other Significant Findings', 'other_sig_findings', 10, 1, 4, 2, NULL, 0),
	(64, 'Other Significant Findings Specify', 'other_sig_findings_specify', 10, 1, 7, 2, NULL, 0),
	(65, 'Lung Cancer Screening: Category', 'lungrads_cat_overall', 11, 1, 3, 2, NULL, 0),
	(66, 'Additional Screening Categories', 'additional_cat_overall', 11, 1, 3, 2, NULL, 0),
	(67, 'Recommendation', 'recommendation', 11, 1, 3, 2, NULL, 0),
	(68, 'Unclear', 'unclear', 12, -1, 1, 2, NULL, 0);
/*!40000 ALTER TABLE "element" ENABLE KEYS */;


-- Dumping structure for table validator.element_type
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."element_type" (
	"element_type_id" INT(10,0) NOT NULL,
	"element_type_name" NVARCHAR(500) NULL DEFAULT (NULL),
	PRIMARY KEY ("element_type_id")
);

-- Dumping data for table validator.element_type: -1 rows
DELETE FROM "element_type";
/*!40000 ALTER TABLE "element_type" DISABLE KEYS */;
INSERT INTO "element_type" ("element_type_id", "element_type_name") VALUES
	(1, 'text'),
	(2, 'number'),
	(3, 'radio'),
	(4, 'checkbox'),
	(5, 'date'),
	(6, 'select'),
	(7, 'textarea');
/*!40000 ALTER TABLE "element_type" ENABLE KEYS */;


-- Dumping structure for table validator.element_value
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."element_value" (
	"element_id" INT(10,0) NOT NULL,
	"value_id" INT(10,0) NOT NULL,
	PRIMARY KEY ("element_id","value_id")
);

-- Dumping data for table validator.element_value: -1 rows
DELETE FROM "element_value";
/*!40000 ALTER TABLE "element_value" DISABLE KEYS */;
INSERT INTO "element_value" ("element_id", "value_id") VALUES
	(1, 1),
	(2, 2),
	(2, 3),
	(3, 4),
	(3, 5),
	(3, 6),
	(3, 7),
	(4, 8),
	(5, 9),
	(6, 10),
	(7, 11),
	(8, 12),
	(8, 13),
	(9, 14),
	(9, 15),
	(9, 16),
	(10, 17),
	(10, 18),
	(10, 19),
	(11, 20),
	(12, 21),
	(13, 22),
	(14, 23),
	(15, 24),
	(15, 25),
	(16, 26),
	(17, 27),
	(17, 28),
	(17, 29),
	(18, 30),
	(18, 31),
	(18, 32),
	(18, 33),
	(18, 34),
	(19, 35),
	(20, 36),
	(21, 37),
	(22, 38),
	(23, 39),
	(24, 40),
	(25, 41),
	(25, 42),
	(25, 43),
	(25, 44),
	(25, 45),
	(25, 46),
	(25, 47),
	(25, 48),
	(26, 49),
	(26, 50),
	(26, 51),
	(26, 52),
	(26, 53),
	(27, 54),
	(27, 55),
	(27, 56),
	(27, 57),
	(27, 58),
	(28, 59),
	(28, 60),
	(28, 61),
	(28, 62),
	(29, 63),
	(30, 64),
	(30, 65),
	(31, 66),
	(32, 67),
	(33, 68),
	(34, 69),
	(35, 70),
	(36, 71),
	(37, 72),
	(37, 73),
	(37, 74),
	(37, 75),
	(38, 76),
	(38, 77),
	(39, 78),
	(40, 79),
	(41, 80),
	(41, 81),
	(41, 82),
	(41, 83),
	(42, 84),
	(42, 85),
	(43, 86),
	(43, 87),
	(43, 88),
	(43, 89),
	(43, 90),
	(44, 91),
	(44, 92),
	(44, 93),
	(44, 94),
	(45, 95),
	(45, 96),
	(45, 97),
	(45, 98),
	(45, 99),
	(45, 100),
	(45, 101),
	(46, 102),
	(46, 103),
	(47, 104),
	(47, 105),
	(47, 106),
	(47, 107),
	(47, 108),
	(48, 109),
	(48, 110),
	(48, 111),
	(48, 112),
	(48, 113),
	(49, 114),
	(49, 115),
	(50, 116),
	(50, 117),
	(50, 118),
	(50, 119),
	(50, 120),
	(51, 121),
	(52, 122),
	(52, 123),
	(52, 124),
	(52, 125),
	(52, 126),
	(52, 127),
	(52, 128),
	(52, 129),
	(53, 130),
	(53, 131),
	(53, 132),
	(53, 133),
	(53, 134),
	(53, 135),
	(53, 136),
	(53, 137),
	(54, 138),
	(54, 139),
	(54, 140),
	(55, 141),
	(55, 142),
	(56, 143),
	(56, 144),
	(56, 145),
	(57, 146),
	(57, 147),
	(57, 148),
	(57, 149),
	(57, 150),
	(58, 151),
	(58, 152),
	(58, 153),
	(59, 154),
	(59, 155),
	(59, 156),
	(59, 157),
	(59, 158),
	(59, 159),
	(60, 160),
	(60, 161),
	(60, 162),
	(60, 163),
	(61, 164),
	(61, 165),
	(61, 166),
	(61, 167),
	(61, 168),
	(62, 169),
	(62, 170),
	(62, 171),
	(62, 172),
	(63, 173),
	(63, 174),
	(63, 175),
	(63, 176),
	(63, 177),
	(63, 178),
	(63, 179),
	(63, 180),
	(63, 181),
	(64, 182),
	(65, 183),
	(65, 184),
	(65, 185),
	(65, 186),
	(65, 187),
	(65, 188),
	(65, 189),
	(66, 190),
	(66, 191),
	(66, 192),
	(67, 193),
	(67, 194),
	(67, 195),
	(67, 196),
	(68, 197);
/*!40000 ALTER TABLE "element_value" ENABLE KEYS */;


-- Dumping structure for table validator.frame
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame" (
	"frame_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	PRIMARY KEY ("frame_id")
);

-- Dumping data for table validator.frame: -1 rows
DELETE FROM "frame";
/*!40000 ALTER TABLE "frame" DISABLE KEYS */;
INSERT INTO "frame" ("frame_id", "name") VALUES
	(1, 'LDCT');
/*!40000 ALTER TABLE "frame" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance" (
	"frame_instance_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	"frame_id" INT(10,0) NULL DEFAULT (NULL),
	PRIMARY KEY ("frame_instance_id")
);

-- Dumping data for table validator.frame_instance: -1 rows
DELETE FROM "frame_instance";
/*!40000 ALTER TABLE "frame_instance" DISABLE KEYS */;
INSERT INTO "frame_instance" ("frame_instance_id", "name", "frame_id") VALUES
	(1, '1', 1),
	(2, '2', 1),
	(3, '3', 1),
	(4, '4', 1),
	(5, '5', 1),
	(6, '6', 1),
	(7, '7', 1),
	(8, '8', 1),
	(9, '9', 1),
	(10, '10', 1),
	(11, '11', 1),
	(12, '12', 1),
	(13, '13', 1),
	(14, '14', 1),
	(15, '15', 1),
	(16, '16', 1),
	(17, '17', 1),
	(18, '18', 1),
	(19, '19', 1),
	(20, '20', 1),
	(21, '21', 1),
	(22, '22', 1),
	(23, '23', 1),
	(24, '24', 1),
	(25, '25', 1),
	(26, '26', 1),
	(27, '27', 1),
	(28, '28', 1),
	(29, '29', 1),
	(30, '30', 1),
	(31, '31', 1),
	(32, '32', 1),
	(33, '33', 1),
	(34, '34', 1),
	(35, '35', 1),
	(36, '36', 1),
	(37, '37', 1),
	(38, '38', 1),
	(39, '39', 1),
	(40, '40', 1),
	(41, '41', 1),
	(42, '42', 1),
	(43, '43', 1),
	(44, '44', 1),
	(45, '45', 1),
	(46, '46', 1),
	(47, '47', 1),
	(48, '48', 1),
	(49, '49', 1),
	(50, '50', 1);
/*!40000 ALTER TABLE "frame_instance" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_annotation
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_annotation" (
	"id" INT(10,0) NOT NULL,
	"document_namespace" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_table" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_id" INT(10,0) NULL DEFAULT (NULL),
	"annotation_type" NVARCHAR(500) NULL DEFAULT (NULL),
	"start" INT(10,0) NULL DEFAULT (NULL),
	"end" INT(10,0) NULL DEFAULT (NULL),
	"value" NVARCHAR(max) NULL DEFAULT NULL,
	"features" NVARCHAR(max) NULL DEFAULT NULL,
	"provenance" NVARCHAR(500) NULL DEFAULT (NULL),
	"score" FLOAT(53) NULL DEFAULT ((1)),
	PRIMARY KEY ("id")
);

-- Dumping data for table validator.frame_instance_annotation: -1 rows
DELETE FROM "frame_instance_annotation";
/*!40000 ALTER TABLE "frame_instance_annotation" DISABLE KEYS */;
/*!40000 ALTER TABLE "frame_instance_annotation" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_data
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_data" (
	"frame_instance_id" INT(10,0) NOT NULL,
	"slot_id" INT(10,0) NOT NULL,
	"value" NVARCHAR(max) NULL DEFAULT NULL,
	"section_slot_number" INT(10,0) NULL DEFAULT ((0)),
	"element_slot_number" INT(10,0) NULL DEFAULT ((0)),
	"document_namespace" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_table" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_id" INT(10,0) NULL DEFAULT (NULL),
	"annotation_id" INT(10,0) NULL DEFAULT (NULL),
	"annotation_namespace" NVARCHAR(500) NULL DEFAULT (NULL),
	"element_id" INT(10,0) NULL DEFAULT (NULL),
	"v_scroll_pos" INT(10,0) NULL DEFAULT (NULL),
	"scroll_height" INT(10,0) NULL DEFAULT (NULL),
	"scroll_width" INT(10,0) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.frame_instance_data: -1 rows
DELETE FROM "frame_instance_data";
/*!40000 ALTER TABLE "frame_instance_data" DISABLE KEYS */;
INSERT INTO "frame_instance_data" ("frame_instance_id", "slot_id", "value", "section_slot_number", "element_slot_number", "document_namespace", "document_table", "document_id", "annotation_id", "annotation_namespace", "element_id", "v_scroll_pos", "scroll_height", "scroll_width") VALUES
	(32, 3, '30-pack-year', 0, 0, 'validator', 'documents', 32, 2, 'namespace', 12, NULL, NULL, NULL),
	(32, 33, '1.59', 0, 0, 'validator', 'documents', 32, 3, 'namespace', 13, NULL, NULL, NULL),
	(32, 4, '58', 0, 0, 'validator', 'documents', 32, 4, 'namespace', 14, NULL, NULL, NULL),
	(32, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 32, 5, 'namespace', 44, NULL, NULL, NULL),
	(32, 84, 'Yes', 0, 0, 'validator', 'documents', 32, 6, 'namespace', 42, NULL, NULL, NULL),
	(32, 87, 'Mild', 0, 0, 'validator', 'documents', 32, 7, 'namespace', 43, NULL, NULL, NULL),
	(33, 33, '2 mG', 0, 0, 'validator', 'documents', 33, 2, 'namespace', 13, NULL, NULL, NULL),
	(33, 4, '70  mG cm', 0, 0, 'validator', 'documents', 33, 3, 'namespace', 14, NULL, NULL, NULL),
	(33, 85, 'None', 0, 0, 'validator', 'documents', 33, 4, 'namespace', 42, NULL, NULL, NULL),
	(34, 3, '30 pack year', 0, 0, 'validator', 'documents', 34, 1, 'namespace', 12, NULL, NULL, NULL),
	(34, 87, 'Mild', 0, 0, 'validator', 'documents', 34, 2, 'namespace', 43, NULL, NULL, NULL),
	(34, 96, 'upper lobe', 0, 0, 'validator', 'documents', 34, 3, 'namespace', 45, NULL, NULL, NULL),
	(34, 91, 'centrilobular', 0, 0, 'validator', 'documents', 34, 4, 'namespace', 44, NULL, NULL, NULL),
	(35, 3, '30 pack year', 0, 0, 'validator', 'documents', 35, 2, 'namespace', 12, NULL, NULL, NULL),
	(35, 85, 'None significant.  ', 0, 0, 'validator', 'documents', 35, 3, 'namespace', 42, NULL, NULL, NULL),
	(36, 3, '30+ p/y', 0, 0, 'validator', 'documents', 36, 2, 'namespace', 12, NULL, NULL, NULL),
	(36, 85, 'Absent', 0, 0, 'validator', 'documents', 36, 3, 'namespace', 42, NULL, NULL, NULL),
	(37, 1, '70-year-old', 0, 0, 'validator', 'documents', 37, 1, 'namespace', 5, NULL, NULL, NULL),
	(37, 3, '50 pack-year', 0, 0, 'validator', 'documents', 37, 2, 'namespace', 12, NULL, NULL, NULL),
	(38, 3, '20 pack year', 0, 0, 'validator', 'documents', 38, 2, 'namespace', 12, NULL, NULL, NULL),
	(38, 87, 'mild', 0, 0, 'validator', 'documents', 38, 3, 'namespace', 43, NULL, NULL, NULL),
	(38, 84, '', 0, 0, 'validator', 'documents', 38, 5, 'namespace', 42, NULL, NULL, NULL),
	(38, 91, 'centrilobular', 0, 0, 'validator', 'documents', 38, 6, 'namespace', 44, NULL, NULL, NULL),
	(34, 33, '1.57', 0, 0, 'validator', 'documents', 34, 5, 'namespace', 13, NULL, NULL, NULL),
	(34, 4, '52', 0, 0, 'validator', 'documents', 34, 6, 'namespace', 14, NULL, NULL, NULL),
	(1, 3, '20 p/y', 0, 0, 'validator', 'documents', 1, 2, 'namespace', 12, NULL, NULL, NULL),
	(1, 4, '48  mG cm  ', 0, 0, 'validator', 'documents', 1, 4, 'namespace', 14, NULL, NULL, NULL),
	(1, 85, 'Absent', 0, 0, 'validator', 'documents', 1, 5, 'namespace', 42, NULL, NULL, NULL),
	(2, 3, '35 pack-year', 0, 0, 'validator', 'documents', 2, 2, 'namespace', 12, NULL, NULL, NULL),
	(2, 33, '2.6', 0, 0, 'validator', 'documents', 2, 3, 'namespace', 13, NULL, NULL, NULL),
	(2, 4, '111', 0, 0, 'validator', 'documents', 2, 4, 'namespace', 14, NULL, NULL, NULL),
	(3, 3, '42 pack year', 0, 0, 'validator', 'documents', 3, 2, 'namespace', 12, NULL, NULL, NULL),
	(4, 33, '0.13 + 2.77', 0, 0, 'validator', 'documents', 4, 2, 'namespace', 13, NULL, NULL, NULL),
	(4, 4, '96', 0, 0, 'validator', 'documents', 4, 3, 'namespace', 14, NULL, NULL, NULL),
	(4, 84, 'Yes', 0, 0, 'validator', 'documents', 4, 4, 'namespace', 42, NULL, NULL, NULL),
	(4, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 4, 5, 'namespace', 44, NULL, NULL, NULL),
	(4, 96, 'Upper lobe', 0, 0, 'validator', 'documents', 4, 6, 'namespace', 45, NULL, NULL, NULL),
	(7, 3, '30 pack years', 0, 0, 'validator', 'documents', 7, 2, 'namespace', 12, NULL, NULL, NULL),
	(7, 33, '2.96 ', 0, 0, 'validator', 'documents', 7, 3, 'namespace', 13, NULL, NULL, NULL),
	(7, 4, '90', 0, 0, 'validator', 'documents', 7, 4, 'namespace', 14, NULL, NULL, NULL),
	(8, 33, '1.5 ', 0, 0, 'validator', 'documents', 8, 2, 'namespace', 13, NULL, NULL, NULL),
	(8, 4, '54', 0, 0, 'validator', 'documents', 8, 3, 'namespace', 14, NULL, NULL, NULL),
	(8, 84, 'Present', 0, 0, 'validator', 'documents', 8, 4, 'namespace', 42, NULL, NULL, NULL),
	(8, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 8, 5, 'namespace', 44, NULL, NULL, NULL),
	(8, 96, 'Upper lobe ', 0, 0, 'validator', 'documents', 8, 6, 'namespace', 45, NULL, NULL, NULL),
	(8, 88, 'Moderate', 0, 0, 'validator', 'documents', 8, 7, 'namespace', 43, NULL, NULL, NULL),
	(9, 3, '40 pack-year ', 0, 0, 'validator', 'documents', 9, 2, 'namespace', 12, NULL, NULL, NULL),
	(9, 91, 'centrilobular', 0, 0, 'validator', 'documents', 9, 3, 'namespace', 44, NULL, NULL, NULL),
	(9, 84, '', 0, 0, 'validator', 'documents', 9, 4, 'namespace', 42, NULL, NULL, NULL),
	(10, 33, '2 mG', 0, 0, 'validator', 'documents', 10, 1, 'namespace', 13, NULL, NULL, NULL),
	(10, 4, '78  mG cm', 0, 0, 'validator', 'documents', 10, 2, 'namespace', 14, NULL, NULL, NULL),
	(10, 84, 'Absent', 0, 0, 'validator', 'documents', 10, 3, 'namespace', 42, NULL, NULL, NULL),
	(11, 3, '21 pack years', 0, 0, 'validator', 'documents', 11, 2, 'namespace', 12, NULL, NULL, NULL),
	(11, 85, 'None', 0, 0, 'validator', 'documents', 11, 3, 'namespace', 42, NULL, NULL, NULL),
	(12, 3, '34.5  pack  years', 0, 0, 'validator', 'documents', 12, 2, 'namespace', 12, NULL, NULL, NULL),
	(12, 85, 'None', 0, 0, 'validator', 'documents', 12, 3, 'namespace', 42, NULL, NULL, NULL),
	(13, 1, '55 yo', 0, 0, 'validator', 'documents', 13, 1, 'namespace', 5, NULL, NULL, NULL),
	(14, 3, '>30 pack year', 0, 0, 'validator', 'documents', 14, 1, 'namespace', 12, NULL, NULL, NULL),
	(14, 33, '2', 0, 0, 'validator', 'documents', 14, 3, 'namespace', 13, NULL, NULL, NULL),
	(14, 4, '73', 0, 0, 'validator', 'documents', 14, 4, 'namespace', 14, NULL, NULL, NULL),
	(14, 85, 'None', 0, 0, 'validator', 'documents', 14, 5, 'namespace', 42, NULL, NULL, NULL),
	(15, 3, '14 py ', 0, 0, 'validator', 'documents', 15, 2, 'namespace', 12, NULL, NULL, NULL),
	(15, 87, 'Mild', 0, 0, 'validator', 'documents', 15, 3, 'namespace', 43, NULL, NULL, NULL),
	(15, 91, 'centrilobular', 0, 0, 'validator', 'documents', 15, 4, 'namespace', 44, NULL, NULL, NULL),
	(16, 84, 'Yes', 0, 0, 'validator', 'documents', 16, 2, 'namespace', 42, NULL, NULL, NULL),
	(16, 87, 'mild', 0, 0, 'validator', 'documents', 16, 3, 'namespace', 43, NULL, NULL, NULL),
	(16, 91, 'centrilobular', 0, 0, 'validator', 'documents', 16, 4, 'namespace', 44, NULL, NULL, NULL),
	(18, 1, '55 year old', 0, 0, 'validator', 'documents', 18, 1777, 'namespace', 5, NULL, NULL, NULL),
	(18, 33, '3', 0, 0, 'validator', 'documents', 18, 1778, 'namespace', 13, NULL, NULL, NULL),
	(18, 4, '85', 0, 0, 'validator', 'documents', 18, 1779, 'namespace', 14, NULL, NULL, NULL),
	(18, 85, 'None', 0, 0, 'validator', 'documents', 18, 1780, 'namespace', 42, NULL, NULL, NULL),
	(19, 1, '56 y/o female', 0, 0, 'validator', 'documents', 19, 3317, 'namespace', 5, NULL, NULL, NULL),
	(19, 3, '43 p/y', 0, 0, 'validator', 'documents', 19, 3318, 'namespace', 12, NULL, NULL, NULL),
	(19, 93, 'paraseptal', 0, 0, 'validator', 'documents', 19, 3319, 'namespace', 44, NULL, NULL, NULL),
	(19, 87, 'Mild', 0, 0, 'validator', 'documents', 19, 3320, 'namespace', 43, NULL, NULL, NULL),
	(19, 95, 'apical', 0, 0, 'validator', 'documents', 19, 3321, 'namespace', 45, NULL, NULL, NULL),
	(20, 1, ' 77 y/o ', 0, 0, 'validator', 'documents', 20, 3453, 'namespace', 5, NULL, NULL, NULL),
	(20, 3, '22 pack year', 0, 0, 'validator', 'documents', 20, 3454, 'namespace', 12, NULL, NULL, NULL),
	(21, 1, '55-year-old ', 0, 0, 'validator', 'documents', 21, 3585, 'namespace', 5, NULL, NULL, NULL),
	(21, 3, '50+ pack-year', 0, 0, 'validator', 'documents', 21, 3586, 'namespace', 12, NULL, NULL, NULL),
	(21, 84, 'Yes', 0, 0, 'validator', 'documents', 21, 3587, 'namespace', 42, NULL, NULL, NULL),
	(21, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 21, 3588, 'namespace', 44, NULL, NULL, NULL),
	(21, 96, 'Upper lobe', 0, 0, 'validator', 'documents', 21, 3589, 'namespace', 45, NULL, NULL, NULL),
	(21, 89, 'Severe', 0, 0, 'validator', 'documents', 21, 3590, 'namespace', 43, NULL, NULL, NULL),
	(22, 1, '55 yo ', 0, 0, 'validator', 'documents', 22, 3014, 'namespace', 5, NULL, NULL, NULL),
	(22, 3, '60 pack year', 0, 0, 'validator', 'documents', 22, 3015, 'namespace', 12, NULL, NULL, NULL),
	(22, 33, '2.11', 0, 0, 'validator', 'documents', 22, 3016, 'namespace', 13, NULL, NULL, NULL),
	(22, 4, '77', 0, 0, 'validator', 'documents', 22, 3017, 'namespace', 14, NULL, NULL, NULL),
	(23, 1, '78 yo', 0, 0, 'validator', 'documents', 23, 3449, 'namespace', 5, NULL, NULL, NULL),
	(23, 84, 'Yes', 0, 0, 'validator', 'documents', 23, 3450, 'namespace', 42, NULL, NULL, NULL),
	(23, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 23, 3451, 'namespace', 44, NULL, NULL, NULL),
	(23, 96, 'Upper lobe', 0, 0, 'validator', 'documents', 23, 3452, 'namespace', 45, NULL, NULL, NULL),
	(23, 86, 'Trace', 0, 0, 'validator', 'documents', 23, 3453, 'namespace', 43, NULL, NULL, NULL),
	(24, 1, '66 year-old', 0, 0, 'validator', 'documents', 24, 2510, 'namespace', 5, NULL, NULL, NULL),
	(24, 3, '60 + pack yr ', 0, 0, 'validator', 'documents', 24, 2511, 'namespace', 12, NULL, NULL, NULL),
	(24, 33, 'One', 0, 0, 'validator', 'documents', 24, 2512, 'namespace', 13, NULL, NULL, NULL),
	(24, 4, '56', 0, 0, 'validator', 'documents', 24, 2513, 'namespace', 14, NULL, NULL, NULL),
	(23, 33, ' 1.9', 0, 0, 'validator', 'documents', 23, 3454, 'namespace', 13, NULL, NULL, NULL),
	(23, 4, '64', 0, 0, 'validator', 'documents', 23, 3455, 'namespace', 14, NULL, NULL, NULL),
	(24, 84, 'Present', 0, 0, 'validator', 'documents', 24, 2514, 'namespace', 42, NULL, NULL, NULL),
	(24, 91, 'Centrilobular', 0, 0, 'validator', 'documents', 24, 2515, 'namespace', 44, NULL, NULL, NULL),
	(24, 100, 'Diffuse, upper lobe predominant ', 0, 0, 'validator', 'documents', 24, 2516, 'namespace', 45, NULL, NULL, NULL),
	(24, 88, 'Moderate', 0, 0, 'validator', 'documents', 24, 2517, 'namespace', 43, NULL, NULL, NULL),
	(25, 1, '70', 0, 0, 'validator', 'documents', 25, 3365, 'namespace', 5, NULL, NULL, NULL),
	(25, 3, '30+ pack year ', 0, 0, 'validator', 'documents', 25, 3366, 'namespace', 12, NULL, NULL, NULL),
	(26, 1, '75 YEAR-OLD ', 0, 0, 'validator', 'documents', 26, 2754, 'namespace', 5, NULL, NULL, NULL),
	(26, 3, '12 P/Y', 0, 0, 'validator', 'documents', 26, 2755, 'namespace', 12, NULL, NULL, NULL),
	(27, 1, '55 year-old male', 0, 0, 'validator', 'documents', 27, 3194, 'namespace', 5, NULL, NULL, NULL),
	(27, 3, '34 p/y ', 0, 0, 'validator', 'documents', 27, 3195, 'namespace', 12, NULL, NULL, NULL),
	(28, 1, '71 yo', 0, 0, 'validator', 'documents', 28, 2911, 'namespace', 5, NULL, NULL, NULL),
	(1, 1, '55 year-old ', 0, 0, 'validator', 'documents', 1, 2894, 'namespace', 5, NULL, NULL, NULL),
	(2, 1, '62 year-old ', 0, 0, 'validator', 'documents', 2, 2824, 'namespace', 5, NULL, NULL, NULL),
	(5, 1, '72 year-old', 0, 0, 'validator', 'documents', 5, 2898, 'namespace', 5, NULL, NULL, NULL),
	(7, 1, '55', 0, 0, 'validator', 'documents', 7, 2965, 'namespace', 5, NULL, NULL, NULL),
	(8, 1, '59 year-old', 0, 0, 'validator', 'documents', 8, 3115, 'namespace', 5, NULL, NULL, NULL),
	(9, 1, '71 yo', 0, 0, 'validator', 'documents', 9, 3546, 'namespace', 5, NULL, NULL, NULL),
	(4, 1, '63 year old ', 0, 0, 'validator', 'documents', 4, 3466, 'namespace', 5, NULL, NULL, NULL),
	(3, 1, '76 yo ', 0, 0, 'validator', 'documents', 3, 2931, 'namespace', 5, NULL, NULL, NULL),
	(11, 1, '63', 0, 0, 'validator', 'documents', 11, 2795, 'namespace', 5, NULL, NULL, NULL),
	(12, 1, '59 year old ', 0, 0, 'validator', 'documents', 12, 2510, 'namespace', 5, NULL, NULL, NULL),
	(13, 1, '55 yo', 0, 0, 'validator', 'documents', 13, 4015, 'namespace', 5, NULL, NULL, NULL),
	(14, 1, '73', 0, 0, 'validator', 'documents', 14, 1859, 'namespace', 5, NULL, NULL, NULL),
	(15, 1, '79 yo', 0, 0, 'validator', 'documents', 15, 3072, 'namespace', 5, NULL, NULL, NULL),
	(16, 1, '73 YEAR-OLD', 0, 0, 'validator', 'documents', 16, 3789, 'namespace', 5, NULL, NULL, NULL),
	(17, 1, '69 year old', 0, 0, 'validator', 'documents', 17, 2242, 'namespace', 5, NULL, NULL, NULL),
	(18, 1, '55 year old ', 0, 0, 'validator', 'documents', 18, 1777, 'namespace', 5, NULL, NULL, NULL),
	(19, 1, '56 y/o', 0, 0, 'validator', 'documents', 19, 3317, 'namespace', 5, NULL, NULL, NULL),
	(20, 1, '77 y/o ', 0, 0, 'validator', 'documents', 20, 3453, 'namespace', 5, NULL, NULL, NULL),
	(21, 1, ' 67 year-old', 0, 0, 'validator', 'documents', 21, 3581, 'namespace', 5, NULL, NULL, NULL),
	(22, 1, '55 yo', 0, 0, 'validator', 'documents', 22, 3014, 'namespace', 5, NULL, NULL, NULL),
	(23, 1, '78 yo', 0, 0, 'validator', 'documents', 23, 3449, 'namespace', 5, NULL, NULL, NULL),
	(24, 1, '66 year-old', 0, 0, 'validator', 'documents', 24, 2510, 'namespace', 5, NULL, NULL, NULL),
	(25, 1, '70', 0, 0, 'validator', 'documents', 25, 3365, 'namespace', 5, NULL, NULL, NULL),
	(26, 1, '75 YEAR-OLD', 0, 0, 'validator', 'documents', 26, 2754, 'namespace', 5, NULL, NULL, NULL),
	(27, 1, '55 year-old', 0, 0, 'validator', 'documents', 27, 3194, 'namespace', 5, NULL, NULL, NULL),
	(28, 1, '71 yo', 0, 0, 'validator', 'documents', 28, 2911, 'namespace', 5, NULL, NULL, NULL),
	(29, 1, '58', 0, 0, 'validator', 'documents', 29, 3177, 'namespace', 5, NULL, NULL, NULL),
	(30, 1, '69 yo ', 0, 0, 'validator', 'documents', 30, 3111, 'namespace', 5, NULL, NULL, NULL),
	(31, 1, '58', 0, 0, 'validator', 'documents', 31, 2739, 'namespace', 5, NULL, NULL, NULL),
	(32, 1, '56 year old ', 0, 0, 'validator', 'documents', 32, 3326, 'namespace', 5, NULL, NULL, NULL),
	(33, 1, '73 year-old', 0, 0, 'validator', 'documents', 33, 2353, 'namespace', 5, NULL, NULL, NULL),
	(35, 1, '65 yo', 0, 0, 'validator', 'documents', 35, 3284, 'namespace', 5, NULL, NULL, NULL),
	(36, 1, '61 year old ', 0, 0, 'validator', 'documents', 36, 2551, 'namespace', 5, NULL, NULL, NULL),
	(37, 1, '70-year-old ', 0, 0, 'validator', 'documents', 37, 2515, 'namespace', 5, NULL, NULL, NULL),
	(38, 1, '65 years', 0, 0, 'validator', 'documents', 38, 3130, 'namespace', 5, NULL, NULL, NULL),
	(42, 1, '73 yo', 0, 0, 'validator', 'documents', 42, 2915, 'test', 5, NULL, NULL, NULL),
	(45, 1, '67', 0, 0, 'validator', 'documents', 45, 2887, 'test', 5, NULL, NULL, NULL),
	(48, 1, '61 year-old', 0, 0, 'validator', 'documents', 48, 2186, 'test', 5, NULL, NULL, NULL),
	(50, 1, '70 year-old', 0, 0, 'validator', 'documents', 50, 1670, 'test', 5, NULL, NULL, NULL),
	(39, 1, '70 year-old', 0, 0, 'validator', 'documents', 39, 2173, 'test', 5, NULL, NULL, NULL),
	(42, 1, '73 yo', 0, 0, 'validator', 'documents', 42, 2915, 'test', 5, NULL, NULL, NULL),
	(45, 1, '67', 0, 0, 'validator', 'documents', 45, 2887, 'test', 5, NULL, NULL, NULL),
	(48, 1, '61 year-old', 0, 0, 'validator', 'documents', 48, 2186, 'test', 5, NULL, NULL, NULL),
	(50, 1, '70 year-old', 0, 0, 'validator', 'documents', 50, 1670, 'test', 5, NULL, NULL, NULL),
	(39, 1, '70 year-old', 0, 0, 'validator', 'documents', 39, 2173, 'test', 5, NULL, NULL, NULL),
	(42, 1, '73 yo', 0, 0, 'validator', 'documents', 42, 2915, 'test', 5, NULL, NULL, NULL),
	(45, 1, '67', 0, 0, 'validator', 'documents', 45, 2887, 'test', 5, NULL, NULL, NULL),
	(48, 1, '61 year-old', 0, 0, 'validator', 'documents', 48, 2186, 'test', 5, NULL, NULL, NULL),
	(50, 1, '70 year-old', 0, 0, 'validator', 'documents', 50, 1670, 'test', 5, NULL, NULL, NULL),
	(39, 1, '70 year-old', 0, 0, 'validator', 'documents', 39, 2173, 'test', 5, NULL, NULL, NULL),
	(42, 1, '73 yo', 0, 0, 'validator', 'documents', 42, 2915, 'test', 5, NULL, NULL, NULL),
	(45, 1, '67', 0, 0, 'validator', 'documents', 45, 2887, 'test', 5, NULL, NULL, NULL),
	(48, 1, '61 year-old', 0, 0, 'validator', 'documents', 48, 2186, 'test', 5, NULL, NULL, NULL),
	(50, 1, '70 year-old', 0, 0, 'validator', 'documents', 50, 1670, 'test', 5, NULL, NULL, NULL),
	(45, 3, ' ', 0, 0, 'validator', 'documents', 45, 2888, 'namespace', 12, NULL, NULL, NULL);
/*!40000 ALTER TABLE "frame_instance_data" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_document
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_document" (
	"frame_instance_id" INT(10,0) NULL DEFAULT (NULL),
	"document_id" INT(10,0) NULL DEFAULT (NULL),
	"document_table" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_namespace" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_key" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_text_column" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_name" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_order" INT(10,0) NULL DEFAULT (NULL),
	"document_features" NVARCHAR(500) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.frame_instance_document: -1 rows
DELETE FROM "frame_instance_document";
/*!40000 ALTER TABLE "frame_instance_document" DISABLE KEYS */;
INSERT INTO "frame_instance_document" ("frame_instance_id", "document_id", "document_table", "document_namespace", "document_key", "document_text_column", "document_name", "document_order", "document_features") VALUES
	(1, 1, 'documents', 'validator', 'document_id', 'doc_text', '1-smith', 0, '{"author":"smith","mrn":"1"}'),
	(2, 2, 'documents', 'validator', 'document_id', 'doc_text', '2-smith', 0, '{"author":"smith","mrn":"2"}'),
	(3, 3, 'documents', 'validator', 'document_id', 'doc_text', '3-smith', 0, '{"author":"smith","mrn":"3"}'),
	(4, 4, 'documents', 'validator', 'document_id', 'doc_text', '4-smith', 0, '{"author":"smith","mrn":"4"}'),
	(5, 5, 'documents', 'validator', 'document_id', 'doc_text', '5-smith', 0, '{"author":"smith","mrn":"5"}'),
	(6, 6, 'documents', 'validator', 'document_id', 'doc_text', '6-smith', 0, '{"author":"smith","mrn":"6"}'),
	(7, 7, 'documents', 'validator', 'document_id', 'doc_text', '7-smith', 0, '{"author":"smith","mrn":"7"}'),
	(8, 8, 'documents', 'validator', 'document_id', 'doc_text', '8-smith', 0, '{"author":"smith","mrn":"8"}'),
	(9, 9, 'documents', 'validator', 'document_id', 'doc_text', '9-smith', 0, '{"author":"smith","mrn":"9"}'),
	(10, 10, 'documents', 'validator', 'document_id', 'doc_text', '10-smith', 0, '{"author":"smith","mrn":"10"}'),
	(11, 11, 'documents', 'validator', 'document_id', 'doc_text', '11-smith', 0, '{"author":"smith","mrn":"11"}'),
	(12, 12, 'documents', 'validator', 'document_id', 'doc_text', '12-smith', 0, '{"author":"smith","mrn":"12"}'),
	(13, 13, 'documents', 'validator', 'document_id', 'doc_text', '13-smith', 0, '{"author":"smith","mrn":"13"}'),
	(14, 14, 'documents', 'validator', 'document_id', 'doc_text', '14-smith', 0, '{"author":"smith","mrn":"14"}'),
	(15, 15, 'documents', 'validator', 'document_id', 'doc_text', '15-smith', 0, '{"author":"smith","mrn":"15"}'),
	(16, 16, 'documents', 'validator', 'document_id', 'doc_text', '16-smith', 0, '{"author":"smith","mrn":"16"}'),
	(17, 17, 'documents', 'validator', 'document_id', 'doc_text', '17-smith', 0, '{"author":"smith","mrn":"17"}'),
	(18, 18, 'documents', 'validator', 'document_id', 'doc_text', '18-smith', 0, '{"author":"smith","mrn":"18"}'),
	(19, 19, 'documents', 'validator', 'document_id', 'doc_text', '19-smith', 0, '{"author":"smith","mrn":"19"}'),
	(20, 20, 'documents', 'validator', 'document_id', 'doc_text', '20-smith', 0, '{"author":"smith","mrn":"20"}'),
	(21, 21, 'documents', 'validator', 'document_id', 'doc_text', '21-smith', 0, '{"author":"smith","mrn":"21"}'),
	(22, 22, 'documents', 'validator', 'document_id', 'doc_text', '22-smith', 0, '{"author":"smith","mrn":"22"}'),
	(23, 23, 'documents', 'validator', 'document_id', 'doc_text', '23-smith', 0, '{"author":"smith","mrn":"23"}'),
	(24, 24, 'documents', 'validator', 'document_id', 'doc_text', '24-smith', 0, '{"author":"smith","mrn":"24"}'),
	(25, 25, 'documents', 'validator', 'document_id', 'doc_text', '25-smith', 0, '{"author":"smith","mrn":"25"}'),
	(26, 26, 'documents', 'validator', 'document_id', 'doc_text', '26-smith', 0, '{"author":"smith","mrn":"26"}'),
	(27, 27, 'documents', 'validator', 'document_id', 'doc_text', '27-smith', 0, '{"author":"smith","mrn":"27"}'),
	(28, 28, 'documents', 'validator', 'document_id', 'doc_text', '28-smith', 0, '{"author":"smith","mrn":"28"}'),
	(29, 29, 'documents', 'validator', 'document_id', 'doc_text', '29-smith', 0, '{"author":"smith","mrn":"29"}'),
	(30, 30, 'documents', 'validator', 'document_id', 'doc_text', '30-smith', 0, '{"author":"smith","mrn":"30"}'),
	(31, 31, 'documents', 'validator', 'document_id', 'doc_text', '31-smith', 0, '{"author":"smith","mrn":"31"}'),
	(32, 32, 'documents', 'validator', 'document_id', 'doc_text', '32-smith', 0, '{"author":"smith","mrn":"32"}'),
	(33, 33, 'documents', 'validator', 'document_id', 'doc_text', '33-smith', 0, '{"author":"smith","mrn":"33"}'),
	(34, 34, 'documents', 'validator', 'document_id', 'doc_text', '34-smith', 0, '{"author":"smith","mrn":"34"}'),
	(35, 35, 'documents', 'validator', 'document_id', 'doc_text', '35-smith', 0, '{"author":"smith","mrn":"35"}'),
	(36, 36, 'documents', 'validator', 'document_id', 'doc_text', '36-smith', 0, '{"author":"smith","mrn":"36"}'),
	(37, 37, 'documents', 'validator', 'document_id', 'doc_text', '37-smith', 0, '{"author":"smith","mrn":"37"}'),
	(38, 38, 'documents', 'validator', 'document_id', 'doc_text', '38-smith', 0, '{"author":"smith","mrn":"38"}'),
	(39, 39, 'documents', 'validator', 'document_id', 'doc_text', '39-smith', 0, '{"author":"smith","mrn":"39"}'),
	(40, 40, 'documents', 'validator', 'document_id', 'doc_text', '40-smith', 0, '{"author":"smith","mrn":"40"}'),
	(41, 41, 'documents', 'validator', 'document_id', 'doc_text', '41-smith', 0, '{"author":"smith","mrn":"41"}'),
	(42, 42, 'documents', 'validator', 'document_id', 'doc_text', '42-smith', 0, '{"author":"smith","mrn":"42"}'),
	(43, 43, 'documents', 'validator', 'document_id', 'doc_text', '43-smith', 0, '{"author":"smith","mrn":"43"}'),
	(44, 44, 'documents', 'validator', 'document_id', 'doc_text', '44-smith', 0, '{"author":"smith","mrn":"44"}'),
	(45, 45, 'documents', 'validator', 'document_id', 'doc_text', '45-smith', 0, '{"author":"smith","mrn":"45"}'),
	(46, 46, 'documents', 'validator', 'document_id', 'doc_text', '46-smith', 0, '{"author":"smith","mrn":"46"}'),
	(47, 47, 'documents', 'validator', 'document_id', 'doc_text', '47-smith', 0, '{"author":"smith","mrn":"47"}'),
	(48, 48, 'documents', 'validator', 'document_id', 'doc_text', '48-smith', 0, '{"author":"smith","mrn":"48"}'),
	(49, 49, 'documents', 'validator', 'document_id', 'doc_text', '49-smith', 0, '{"author":"smith","mrn":"49"}'),
	(50, 50, 'documents', 'validator', 'document_id', 'doc_text', '50-smith', 0, '{"author":"smith","mrn":"50"}');
/*!40000 ALTER TABLE "frame_instance_document" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_document_history
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_document_history" (
	"frame_instance_id" INT(10,0) NULL DEFAULT (NULL),
	"document_namespace" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_table" NVARCHAR(500) NULL DEFAULT (NULL),
	"document_id" INT(10,0) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.frame_instance_document_history: -1 rows
DELETE FROM "frame_instance_document_history";
/*!40000 ALTER TABLE "frame_instance_document_history" DISABLE KEYS */;
INSERT INTO "frame_instance_document_history" ("frame_instance_id", "document_namespace", "document_table", "document_id") VALUES
	(32, 'validator', 'documents', 32),
	(33, 'validator', 'documents', 33),
	(34, 'validator', 'documents', 34),
	(35, 'validator', 'documents', 35),
	(36, 'validator', 'documents', 36),
	(37, 'validator', 'documents', 37),
	(38, 'validator', 'documents', 38),
	(39, 'validator', 'documents', 39),
	(40, 'validator', 'documents', 40),
	(41, 'validator', 'documents', 41),
	(42, 'validator', 'documents', 42),
	(31, 'validator', 'documents', 31),
	(1, 'validator', 'documents', 1),
	(2, 'validator', 'documents', 2),
	(3, 'validator', 'documents', 3),
	(4, 'validator', 'documents', 4),
	(5, 'validator', 'documents', 5),
	(6, 'validator', 'documents', 6),
	(7, 'validator', 'documents', 7),
	(8, 'validator', 'documents', 8),
	(9, 'validator', 'documents', 9),
	(10, 'validator', 'documents', 10),
	(11, 'validator', 'documents', 11),
	(12, 'validator', 'documents', 12),
	(13, 'validator', 'documents', 13),
	(14, 'validator', 'documents', 14),
	(15, 'validator', 'documents', 15),
	(16, 'validator', 'documents', 16),
	(17, 'validator', 'documents', 17),
	(18, 'validator', 'documents', 18),
	(19, 'validator', 'documents', 19),
	(20, 'validator', 'documents', 20),
	(21, 'validator', 'documents', 21),
	(22, 'validator', 'documents', 22),
	(23, 'validator', 'documents', 23),
	(24, 'validator', 'documents', 24),
	(25, 'validator', 'documents', 25),
	(26, 'validator', 'documents', 26),
	(27, 'validator', 'documents', 27),
	(28, 'validator', 'documents', 28),
	(29, 'validator', 'documents', 29),
	(30, 'validator', 'documents', 30),
	(43, 'validator', 'documents', 43),
	(44, 'validator', 'documents', 44),
	(45, 'validator', 'documents', 45),
	(46, 'validator', 'documents', 46),
	(47, 'validator', 'documents', 47),
	(48, 'validator', 'documents', 48),
	(49, 'validator', 'documents', 49),
	(50, 'validator', 'documents', 50);
/*!40000 ALTER TABLE "frame_instance_document_history" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_element_repeat
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_element_repeat" (
	"frame_instance_id" INT(10,0) NOT NULL,
	"element_id" INT(10,0) NULL DEFAULT (NULL),
	"section_slot_num" INT(10,0) NULL DEFAULT (NULL),
	"repeat_num" INT(10,0) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.frame_instance_element_repeat: -1 rows
DELETE FROM "frame_instance_element_repeat";
/*!40000 ALTER TABLE "frame_instance_element_repeat" DISABLE KEYS */;
/*!40000 ALTER TABLE "frame_instance_element_repeat" ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_section_repeat
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_instance_section_repeat" (
	"frame_instance_id" INT(10,0) NOT NULL,
	"section_id" INT(10,0) NULL DEFAULT (NULL),
	"repeat_num" INT(10,0) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.frame_instance_section_repeat: -1 rows
DELETE FROM "frame_instance_section_repeat";
/*!40000 ALTER TABLE "frame_instance_section_repeat" DISABLE KEYS */;
/*!40000 ALTER TABLE "frame_instance_section_repeat" ENABLE KEYS */;


-- Dumping structure for table validator.frame_slot
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."frame_slot" (
	"frame_id" INT(10,0) NOT NULL,
	"slot_id" INT(10,0) NOT NULL,
	PRIMARY KEY ("frame_id","slot_id")
);

-- Dumping data for table validator.frame_slot: -1 rows
DELETE FROM "frame_slot";
/*!40000 ALTER TABLE "frame_slot" DISABLE KEYS */;
INSERT INTO "frame_slot" ("frame_id", "slot_id") VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50),
	(1, 51),
	(1, 52),
	(1, 53),
	(1, 54),
	(1, 55),
	(1, 56),
	(1, 57),
	(1, 58),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 66),
	(1, 67),
	(1, 68),
	(1, 69),
	(1, 70),
	(1, 71),
	(1, 72),
	(1, 73),
	(1, 74),
	(1, 75),
	(1, 76),
	(1, 77),
	(1, 78),
	(1, 79),
	(1, 80),
	(1, 81),
	(1, 82),
	(1, 83),
	(1, 84),
	(1, 85),
	(1, 86),
	(1, 87),
	(1, 88),
	(1, 89),
	(1, 90),
	(1, 91),
	(1, 92),
	(1, 93),
	(1, 94),
	(1, 95),
	(1, 96),
	(1, 97),
	(1, 98),
	(1, 99),
	(1, 100),
	(1, 101),
	(1, 102),
	(1, 103),
	(1, 104),
	(1, 105),
	(1, 106),
	(1, 107),
	(1, 108),
	(1, 109),
	(1, 110),
	(1, 111),
	(1, 112),
	(1, 113),
	(1, 114),
	(1, 115),
	(1, 116),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 120),
	(1, 121),
	(1, 122),
	(1, 123),
	(1, 124),
	(1, 125),
	(1, 126),
	(1, 127),
	(1, 128),
	(1, 129),
	(1, 130),
	(1, 131),
	(1, 132),
	(1, 133),
	(1, 134),
	(1, 135),
	(1, 136),
	(1, 137),
	(1, 138),
	(1, 139),
	(1, 140),
	(1, 141),
	(1, 142),
	(1, 143),
	(1, 144),
	(1, 145),
	(1, 146),
	(1, 147),
	(1, 148),
	(1, 149),
	(1, 150),
	(1, 151),
	(1, 152),
	(1, 153),
	(1, 154),
	(1, 155),
	(1, 156),
	(1, 157),
	(1, 158),
	(1, 159),
	(1, 160),
	(1, 161),
	(1, 162),
	(1, 163),
	(1, 164),
	(1, 165),
	(1, 166),
	(1, 167),
	(1, 168),
	(1, 169),
	(1, 170),
	(1, 171),
	(1, 172),
	(1, 173),
	(1, 174),
	(1, 175),
	(1, 176),
	(1, 177),
	(1, 178),
	(1, 179),
	(1, 180),
	(1, 181),
	(1, 182),
	(1, 183),
	(1, 184),
	(1, 185),
	(1, 186),
	(1, 187),
	(1, 188),
	(1, 189),
	(1, 190),
	(1, 191),
	(1, 192),
	(1, 193),
	(1, 194),
	(1, 195),
	(1, 196),
	(1, 197);
/*!40000 ALTER TABLE "frame_slot" ENABLE KEYS */;


-- Dumping structure for table validator.msa
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."msa" (
	"msa_id" INT(10,0) NOT NULL,
	"document_namespace" VARCHAR(500) NULL DEFAULT (NULL),
	"document_table" VARCHAR(500) NULL DEFAULT (NULL),
	"group" VARCHAR(500) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.msa: -1 rows
DELETE FROM "msa";
/*!40000 ALTER TABLE "msa" DISABLE KEYS */;
/*!40000 ALTER TABLE "msa" ENABLE KEYS */;


-- Dumping structure for table validator.msa_profile
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."msa_profile" (
	"msa_id" INT(10,0) NOT NULL,
	"document_namespace" VARCHAR(500) NULL DEFAULT (NULL),
	"document_table" VARCHAR(500) NULL DEFAULT (NULL),
	"group" VARCHAR(500) NULL DEFAULT (NULL),
	"profile" VARCHAR(max) NULL DEFAULT NULL,
	"name" VARCHAR(500) NULL DEFAULT (NULL),
	"profile_type" INT(10,0) NULL DEFAULT (NULL),
	"annotation_type" VARCHAR(500) NULL DEFAULT (NULL)
);

-- Dumping data for table validator.msa_profile: -1 rows
DELETE FROM "msa_profile";
/*!40000 ALTER TABLE "msa_profile" DISABLE KEYS */;
/*!40000 ALTER TABLE "msa_profile" ENABLE KEYS */;


-- Dumping structure for table validator.msa_row
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."msa_row" (
	"msa_id" INT(10,0) NOT NULL,
	"document_namespace" VARCHAR(500) NULL DEFAULT (NULL),
	"document_table" VARCHAR(500) NULL DEFAULT (NULL),
	"group" VARCHAR(500) NULL DEFAULT (NULL),
	"row_id" INT(10,0) NULL DEFAULT (NULL),
	"base_tokens" VARCHAR(max) NULL DEFAULT NULL,
	"filler_tokens" VARCHAR(max) NULL DEFAULT NULL,
	"multiplicity" INT(10,0) NULL DEFAULT (NULL),
	"sentences" VARCHAR(max) NULL DEFAULT NULL
);

-- Dumping data for table validator.msa_row: -1 rows
DELETE FROM "msa_row";
/*!40000 ALTER TABLE "msa_row" DISABLE KEYS */;
/*!40000 ALTER TABLE "msa_row" ENABLE KEYS */;


-- Dumping structure for table validator.provenance
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."provenance" (
	"id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	"priority" INT(10,0) NULL DEFAULT (NULL),
	PRIMARY KEY ("id")
);

-- Dumping data for table validator.provenance: -1 rows
DELETE FROM "provenance";
/*!40000 ALTER TABLE "provenance" DISABLE KEYS */;
/*!40000 ALTER TABLE "provenance" ENABLE KEYS */;


-- Dumping structure for table validator.slot
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."slot" (
	"slot_id" INT(10,0) NOT NULL,
	"name" NVARCHAR(500) NULL DEFAULT (NULL),
	"annotation_type" NVARCHAR(100) NULL DEFAULT (NULL),
	"slot_type" INT(10,0) NOT NULL,
	"cond" NVARCHAR(max) NULL DEFAULT NULL,
	PRIMARY KEY ("slot_id")
);

-- Dumping data for table validator.slot: -1 rows
DELETE FROM "slot";
/*!40000 ALTER TABLE "slot" DISABLE KEYS */;
INSERT INTO "slot" ("slot_id", "name", "annotation_type", "slot_type", "cond") VALUES
	(1, 'age', 'lungrads-age', 1, ''),
	(2, 'years_since_quit_smoking', 'lungrads-years-since-quit-smoking', 1, ''),
	(3, 'pack-years', 'lungrads-pack-years', 1, ''),
	(4, 'dlp', 'lungrads-dlp', 1, ''),
	(5, 'nodule-number', 'lungrads-nodule-number', 1, ''),
	(6, 'series', 'lungrads-series', 1, ''),
	(7, 'image', 'lungrads-image', 1, ''),
	(8, 'nodule_size_1', 'lungrads-nodule-size', 1, ''),
	(9, 'nodule_size_2', 'lungrads-nodule-size', 1, ''),
	(10, 'nodule_mean_diameter', 'lungrads-nodule-mean-diameter', 1, ''),
	(11, 'psn_solid_component', 'lungrads-nodule-solid-component', 1, ''),
	(12, 'lungrads_cat_2_nodule_size', 'lungrads-cat-2-nodule-size', 1, ''),
	(13, 'lungrads_cat_2_series', 'lungrads-cat-2-series', 1, ''),
	(14, 'lungrads_cat_2_image', 'lungrads-cat-2-image', 1, ''),
	(15, 'exam_date', 'lungrads-exam-date', 2, ''),
	(16, 'comparison_exam_yes', 'lungrads-comparison-exam', 2, ''),
	(17, 'comparison_exam_no', 'lungrads-comparison-exam', 2, ''),
	(18, 'reason_for_exam_baseline_lung_cancer_screen', 'lungrads-reason-for-exam', 2, ''),
	(19, 'reason_for_exam_incidence_lung_cancer_screen', 'lungrads-reason-for-exam', 2, ''),
	(20, 'reason_for_exam_early_repeat_ct_for_indeterminate_nodule', 'lungrads-reason-for-exam', 2, ''),
	(21, 'reason_for_exam_unrelated_to_screening', 'lungrads-reason-for-exam', 2, ''),
	(22, 'date_of_birth', 'lungrads-date-of-birth', 2, ''),
	(23, 'sex', 'lungrads-sex', 2, ''),
	(24, 'race', 'lungrads-race', 2, ''),
	(25, 'race_declined_yes', 'lungrads-race-declined', 2, ''),
	(26, 'race_declined_no', 'lungrads-race-declined', 2, ''),
	(27, 'ethnicity_hispanic', 'lungrads-ethnicity', 2, ''),
	(28, 'ethnicity_non-hispanic', 'lungrads-ethnicity', 2, ''),
	(29, 'ethnicity_declined_to_answer', 'lungrads-ethnicity', 2, ''),
	(30, 'smoking_status_non_smoker', 'lungrads-smoking-status', 2, ''),
	(31, 'smoking_status_current_smoker', 'lungrads-smoking-status', 2, ''),
	(32, 'smoking_status_former_smoker', 'lungrads-smoking-status', 2, ''),
	(33, 'ctdivol', 'lungrads-cdtivol', 2, ''),
	(34, 'lung_rads_cat_3_5_none', 'lungrads-nodules-cat-3-5', 2, ''),
	(35, 'lung_rads_cat_3_5_present', 'lungrads-nodules-cat-3-5', 2, ''),
	(36, 'consistency_solid_nodule', 'lungrads-nodule-consistency', 2, ''),
	(37, 'consistency_part-solid_nodule_(psn)', 'lungrads-nodule-consistency', 2, ''),
	(38, 'consistency_ground_glass_nodule_/_non-solid_nodule_(ggn)', 'lungrads-nodule-consistency', 2, ''),
	(39, 'anatomic_location_right_upper_lobe', 'lungrads-nodule-location', 2, ''),
	(40, 'anatomic_location_right_lower_lobe', 'lungrads-nodule-location', 2, ''),
	(41, 'anatomic_location_right_middle_lobe', 'lungrads-nodule-location', 2, ''),
	(42, 'anatomic_location_left_upper_lobe', 'lungrads-nodule-location', 2, ''),
	(43, 'anatomic_location_left_lower_lobe', 'lungrads-nodule-location', 2, ''),
	(44, 'evolution_not_applicable,_baseline_scan', 'lungrads-nodule-evolution', 2, ''),
	(45, 'evolution_new', 'lungrads-nodule-evolution', 2, ''),
	(46, 'evolution_stable', 'lungrads-nodule-evolution', 2, ''),
	(47, 'evolution_resolved', 'lungrads-nodule-evolution', 2, ''),
	(48, 'evolution_increased_size', 'lungrads-nodule-evolution', 2, ''),
	(49, 'evolution_decreased_size', 'lungrads-nodule-evolution', 2, ''),
	(50, 'evolution_increased_attenuation', 'lungrads-nodule-evolution', 2, ''),
	(51, 'evolution_decreased_attenuation', 'lungrads-nodule-evolution', 2, ''),
	(52, 'margins_smooth', 'lungrads-nodule-margins', 2, ''),
	(53, 'margins_lobulated', 'lungrads-nodule-margins', 2, ''),
	(54, 'margins_spiculated_or_serrated', 'lungrads-nodule-margins', 2, ''),
	(55, 'margins_poorly_marginated', 'lungrads-nodule-margins', 2, ''),
	(56, 'margins_decreased_attenuation', 'lungrads-nodule-margins', 2, ''),
	(57, 'level_of_suspicion_low', 'lungrads-nodule-level-of-suspicion', 2, ''),
	(58, 'level_of_suspicion_moderately_low', 'lungrads-nodule-level-of-suspicion', 2, ''),
	(59, 'level_of_suspicion_intermediate', 'lungrads-nodule-level-of-suspicion', 2, ''),
	(60, 'level_of_suspicion_moderately_high', 'lungrads-nodule-level-of-suspicion', 2, ''),
	(61, 'level_of_suspicion_high', 'lungrads-nodule-level-of-suspicion', 2, ''),
	(62, 'lungrads_nodule_category_3', 'lungrads-nodule-category', 2, ''),
	(63, 'lungrads_nodule_category_4a', 'lungrads-nodule-category', 2, ''),
	(64, 'lungrads_nodule_category_4b', 'lungrads-nodule-category', 2, ''),
	(65, 'lungrads_nodule_category_4x', 'lungrads-nodule-category', 2, ''),
	(66, 'lungrads_nodule_cat_3_5_comment', 'lungrads-nodule-cat-3-5-comment', 2, ''),
	(67, 'lungrads_cat_2_nodules-present_none', 'lungrads-cat-2-nodules-present', 2, ''),
	(68, 'lungrads_cat_2_nodules-present_present', 'lungrads-cat-2-nodules-present', 2, ''),
	(69, 'lungrads_cat_2_nodules_quantity', 'lungrads-cat-2-nodules-quantity', 2, ''),
	(70, 'lungrads_cat_2_nodule_consistency', 'lungrads-cat-2-nodule-consistency', 2, ''),
	(71, 'lungrads_cat_2_nodule_location', 'lungrads-cat-2-nodule-location', 2, ''),
	(72, 'lungrads_cat_2_evolution_increased_size', 'lungrads-cat-2-evolution', 2, ''),
	(73, 'lungrads_cat_2_evolution_decreased_size', 'lungrads-cat-2-evolution', 2, ''),
	(74, 'lungrads_cat_2_evolution_stable', 'lungrads-cat-2-evolution', 2, ''),
	(75, 'lungrads_cat_2_evolution_other', 'lungrads-cat-2-evolution', 2, ''),
	(76, 'lungrads_cat_1_nodules-present_none', 'lungrads-cat-1-nodules-present', 2, ''),
	(77, 'lungrads_cat_1_nodules-present_present', 'lungrads-cat-1-nodules-present', 2, ''),
	(78, 'lungrads_cat_1_nodule_consistency', 'lungrads-cat-1-nodule-consistency', 2, ''),
	(79, 'lungrads_cat_1_nodule_location', 'lungrads-cat-1-nodule-location', 2, ''),
	(80, 'lungrads_cat_1_nodule_description_granuloma', 'lungrads-cat-1-nodule-description', 2, ''),
	(81, 'lungrads_cat_1_nodule_description_scar', 'lungrads-cat-1-nodule-description', 2, ''),
	(82, 'lungrads_cat_1_nodule_description_hamartoma', 'lungrads-cat-1-nodule-description', 2, ''),
	(83, 'lungrads_cat_1_nodule_description_intrapulmonary_lymph_node', 'lungrads-cat-1-nodule-description', 2, ''),
	(84, 'emphysema_yes', 'lungrads-emphysema', 2, ''),
	(85, 'emphysema_no', 'lungrads-emphysema', 2, ''),
	(86, 'emphysema_severity_trace_(<_5%)', 'lungrads-emphysema-severity', 2, ''),
	(87, 'emphysema_severity_mild_(6-25%)', 'lungrads-emphysema-severity', 2, ''),
	(88, 'emphysema_severity_moderate_(26-50%)', 'lungrads-emphysema-severity', 2, ''),
	(89, 'emphysema_severity_severe_(51-75%)', 'lungrads-emphysema-severity', 2, ''),
	(90, 'emphysema_severity_extensive_(76-100%)', 'lungrads-emphysema-severity', 2, ''),
	(91, 'emphysema_type_centrilobular', 'lungrads-emphysema-type', 2, ''),
	(92, 'emphysema_type_panacinar', 'lungrads-emphysema-type', 2, ''),
	(93, 'emphysema_type_paraseptal', 'lungrads-emphysema-type', 2, ''),
	(94, 'emphysema_type_paracicatricial', 'lungrads-emphysema-type', 2, ''),
	(95, 'emphysema_distribution_apices', 'lungrads-emphysema-distribution', 2, ''),
	(96, 'emphysema_distribution_upper_lobe', 'lungrads-emphysema-distribution', 2, ''),
	(97, 'emphysema_distribution_mid-lung', 'lungrads-emphysema-distribution', 2, ''),
	(98, 'emphysema_distribution_lower_lobe_predominant', 'lungrads-emphysema-distribution', 2, ''),
	(99, 'emphysema_distribution_diffuse', 'lungrads-emphysema-distribution', 2, ''),
	(100, 'emphysema_distribution_diffuse_with_upper_lobe_predominance', 'lungrads-emphysema-distribution', 2, ''),
	(101, 'emphysema_distribution_diffuse_with_lower_lobe_predominance', 'lungrads-emphysema-distribution', 2, ''),
	(102, 'airways_disease_yes', 'lungrads-airways-disease', 2, ''),
	(103, 'airways_disease_no', 'lungrads-airways-disease', 2, ''),
	(104, 'airways_distribution_upper_lobe', 'lungrads-airways-distribution', 2, ''),
	(105, 'airways_distribution_lower_lobe', 'lungrads-airways-distribution', 2, ''),
	(106, 'airways_distribution_diffuse', 'lungrads-airways-distribution', 2, ''),
	(107, 'airways_distribution_focal', 'lungrads-airways-distribution', 2, ''),
	(108, 'airways_distribution_multifocal', 'lungrads-airways-distribution', 2, ''),
	(109, 'airways_location_right_upper_lobe', 'lungrads-airways-location', 2, ''),
	(110, 'airways_location_right_lower_lobe', 'lungrads-airways-location', 2, ''),
	(111, 'airways_location_right_middle_lobe', 'lungrads-airways-location', 2, ''),
	(112, 'airways_location_left_upper_lobe', 'lungrads-airways-location', 2, ''),
	(113, 'airways_location_left_lower_lobe', 'lungrads-airways-location', 2, ''),
	(114, 'fibrosis_yes', 'lungrads-fibrosis', 2, ''),
	(115, 'fibrosis_no', 'lungrads-fibrosis', 2, ''),
	(116, 'fibrosis_type_focal_fibrosis', 'lungrads-fibrosis-type', 2, ''),
	(117, 'fibrosis_type_diffuse_or_subpleural_fibrosis', 'lungrads-fibrosis-type', 2, ''),
	(118, 'fibrosis_type_perilymphatic_micronodularity', 'lungrads-fibrosis-type', 2, ''),
	(119, 'fibrosis_type_centrilobular_micronodules', 'lungrads-fibrosis-type', 2, ''),
	(120, 'fibrosis_type_non-specific', 'lungrads-fibrosis-type', 2, ''),
	(121, 'fibrosis_non_specific', 'lungrads-fibrosis-non-specific', 2, ''),
	(122, 'fibrosis_anatomic_distribution_right_apices', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(123, 'fibrosis_anatomic_distribution_left_apices', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(124, 'fibrosis_anatomic_distribution_bilateral_apices', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(125, 'fibrosis_anatomic_distribution_subpleural_predominant', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(126, 'fibrosis_anatomic_distribution_basilar_predominant', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(127, 'fibrosis_anatomic_distribution_upper_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(128, 'fibrosis_anatomic_distribution_middle_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(129, 'fibrosis_anatomic_distribution_lower_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, ''),
	(130, 'fibrosis_etiology_combined_pulmonary_fibrosis_and_emphysema', 'lungrads-fibrosis-etiology', 2, ''),
	(131, 'fibrosis_etiology_uip', 'lungrads-fibrosis-etiology', 2, ''),
	(132, 'fibrosis_etiology_nsip', 'lungrads-fibrosis-etiology', 2, ''),
	(133, 'fibrosis_etiology_hp', 'lungrads-fibrosis-etiology', 2, ''),
	(134, 'fibrosis_etiology_sarcoidosis', 'lungrads-fibrosis-etiology', 2, ''),
	(135, 'fibrosis_etiology_non-specific', 'lungrads-fibrosis-etiology', 2, ''),
	(136, 'fibrosis_etiology_post-inflammatory', 'lungrads-fibrosis-etiology', 2, ''),
	(137, 'fibrosis_etiology_other', 'lungrads-fibrosis-etiology', 2, ''),
	(138, 'lymph_nodes_no_intrathoracic_adenopathy', 'lungrads-lymph-nodes', 2, ''),
	(139, 'lymph_nodes_reactive_nodes_in_(x_nodal_stations)', 'lungrads-lymph-nodes', 2, ''),
	(140, 'lymph_nodes_potentially_abnormal_nodes_in_ats_region_x', 'lungrads-lymph-nodes', 2, ''),
	(141, 'pleural_disease_yes', 'lungrads-pleural-disease', 2, ''),
	(142, 'pleural_disease_no', 'lungrads-pleural-disease', 2, ''),
	(143, 'pleural_anatomic_location_right', 'lungrads-pleural-anatomic-location', 2, ''),
	(144, 'pleural_anatomic_location_left', 'lungrads-pleural-anatomic-location', 2, ''),
	(145, 'pleural_anatomic_location_bilateral', 'lungrads-pleural-anatomic-location', 2, ''),
	(146, 'pleural_abnormality_effusion(s)', 'lungrads-pleural-abnormality', 2, ''),
	(147, 'pleural_abnormality_pleural_plaque(s),_likely_asbestos-related_or_post-inflammatory', 'lungrads-pleural-abnormality', 2, ''),
	(148, 'pleural_abnormality_pleural_nodularity', 'lungrads-pleural-abnormality', 2, ''),
	(149, 'pleural_abnormality_focal_or_diffuse_pleural_thickening,_likely_asbestos-related,_post-inflammatory', 'lungrads-pleural-abnormality', 2, ''),
	(150, 'pleural_abnormality_of_indeterminate_etiology', 'lungrads-pleural-abnormality', 2, ''),
	(151, 'cardiac_heart_size_normal', 'lungrads-cardiac-heart-size', 2, ''),
	(152, 'cardiac_heart_size_upper_limits_of_normal', 'lungrads-cardiac-heart-size', 2, ''),
	(153, 'cardiac_heart_size_enlarged', 'lungrads-cardiac-heart-size', 2, ''),
	(154, 'cardiac_pericardium_normal_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, ''),
	(155, 'cardiac_pericardium_mild_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, ''),
	(156, 'cardiac_pericardium_moderate_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, ''),
	(157, 'cardiac_pericardium_large_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, ''),
	(158, 'cardiac_pericardium_pericardial_thickening', 'lungrads-cardiac-pericardium', 2, ''),
	(159, 'cardiac_pericardium_pericardial_calcification', 'lungrads-cardiac-pericardium', 2, ''),
	(160, 'cardiac_artery_calcification_none', 'lungrads-cardiac-artery-calcification', 2, ''),
	(161, 'cardiac_artery_calcification_mild', 'lungrads-cardiac-artery-calcification', 2, ''),
	(162, 'cardiac_artery_calcification_moderate', 'lungrads-cardiac-artery-calcification', 2, ''),
	(163, 'cardiac_artery_calcification_severe', 'lungrads-cardiac-artery-calcification', 2, ''),
	(164, 'cardiac_artery_calcification_distribution_lad', 'lungrads-cardiac-artery-calcification-distribution', 2, ''),
	(165, 'cardiac_artery_calcification_distribution_rca', 'lungrads-cardiac-artery-calcification-distribution', 2, ''),
	(166, 'cardiac_artery_calcification_distribution_circumflex', 'lungrads-cardiac-artery-calcification-distribution', 2, ''),
	(167, 'cardiac_artery_calcification_distribution_left_main_coronary_artery', 'lungrads-cardiac-artery-calcification-distribution', 2, ''),
	(168, 'cardiac_artery_calcification_distribution_multiple_vessels', 'lungrads-cardiac-artery-calcification-distribution', 2, ''),
	(169, 'cardiac_artery_other_aortic_valve_calcifications', 'lungrads-cardiac-artery-other', 2, ''),
	(170, 'cardiac_artery_other_ascending_aortic_enlargement', 'lungrads-cardiac-artery-other', 2, ''),
	(171, 'cardiac_artery_other_mitral_annular_calcification', 'lungrads-cardiac-artery-other', 2, ''),
	(172, 'cardiac_artery_other_possible_pulmonary_hypertension', 'lungrads-cardiac-artery-other', 2, ''),
	(173, 'other_sig_findings_thyroid_findings', 'lungrads-other-sig-findings', 2, ''),
	(174, 'other_sig_findings_osseous_or_chest_wall_findings', 'lungrads-other-sig-findings', 2, ''),
	(175, 'other_sig_findings_liver_findings', 'lungrads-other-sig-findings', 2, ''),
	(176, 'other_sig_findings_adrenal_findings', 'lungrads-other-sig-findings', 2, ''),
	(177, 'other_sig_findings_kidney_findings', 'lungrads-other-sig-findings', 2, ''),
	(178, 'other_sig_findings_biliary_or_gall_bladder_findings', 'lungrads-other-sig-findings', 2, ''),
	(179, 'other_sig_findings_gastric_findings', 'lungrads-other-sig-findings', 2, ''),
	(180, 'other_sig_findings_bowel_pathology', 'lungrads-other-sig-findings', 2, ''),
	(181, 'other_sig_findings_other_(specify)_findings_requiring_follow-up', 'lungrads-other-sig-findings', 2, ''),
	(182, 'other_sig_findings_specify', 'lungrads-other-sig-findings-specify', 2, ''),
	(183, 'lungrads_cat_overall_0', 'lunrads-cat-overall', 2, ''),
	(184, 'lungrads_cat_overall_1', 'lunrads-cat-overall', 2, ''),
	(185, 'lungrads_cat_overall_2', 'lunrads-cat-overall', 2, ''),
	(186, 'lungrads_cat_overall_3', 'lunrads-cat-overall', 2, ''),
	(187, 'lungrads_cat_overall_4a', 'lunrads-cat-overall', 2, ''),
	(188, 'lungrads_cat_overall_4b', 'lunrads-cat-overall', 2, ''),
	(189, 'lungrads_cat_overall_4x', 'lunrads-cat-overall', 2, ''),
	(190, 'additional_cat_overall_none', 'lungrads-additional-cat-overall', 2, ''),
	(191, 'additional_cat_overall_s', 'lungrads-additional-cat-overall', 2, ''),
	(192, 'additional_cat_overall_c', 'lungrads-additional-cat-overall', 2, ''),
	(193, 'recommendation_recommend_annual_screening_in_12_months', 'lungrads-recommendation', 2, ''),
	(194, 'recommendation_recommend_6_month_follow-up_low_dose_ct_to_assess_for_interval_change', 'lungrads-recommendation', 2, ''),
	(195, 'recommendation_recommend_early_follow-up_ldct_in_3_months_to_assess_for_interval_change', 'lungrads-recommendation', 2, ''),
	(196, 'recommendation_recommend_tissue_sampling_percutaneously_/_bronchoscopically_or_pet-ct_scan_or_diagnostic_chest_ct_or_surgical_consultation', 'lungrads-recommendation', 2, ''),
	(197, 'unclear', 'lungrads-unclear', 2, '');
/*!40000 ALTER TABLE "slot" ENABLE KEYS */;


-- Dumping structure for table validator.user
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."user" (
	"user_id" INT(10,0) NOT NULL,
	"user_name" NVARCHAR(500) NULL DEFAULT (NULL),
	"project_id" INT(10,0) NULL DEFAULT (NULL),
	"frame_instance_id" INT(10,0) NULL DEFAULT (NULL),
	"pw" NVARCHAR(max) NULL DEFAULT NULL,
	PRIMARY KEY ("user_id")
);

-- Dumping data for table validator.user: -1 rows
DELETE FROM "user";
/*!40000 ALTER TABLE "user" DISABLE KEYS */;
INSERT INTO "user" ("user_id", "user_name", "project_id", "frame_instance_id", "pw") VALUES
	(1, 'test', 1, 9, '1');
/*!40000 ALTER TABLE "user" ENABLE KEYS */;


-- Dumping structure for table validator.value
CREATE TABLE IF NOT EXISTS 'app_NlpApp2'."value" (
	"value_id" INT(10,0) NOT NULL,
	"display_name" NVARCHAR(500) NULL DEFAULT (NULL),
	"slot_id" INT(10,0) NULL DEFAULT (NULL),
	"html_id" NVARCHAR(500) NOT NULL,
	PRIMARY KEY ("value_id")
);

-- Dumping data for table validator.value: -1 rows
DELETE FROM "value";
/*!40000 ALTER TABLE "value" DISABLE KEYS */;
INSERT INTO "value" ("value_id", "display_name", "slot_id", "html_id") VALUES
	(1, 'Date of Exam', 15, 'exam_date'),
	(2, 'Yes', 16, 'comparison_exam_yes'),
	(3, 'No', 17, 'comparison_exam_no'),
	(4, 'Baseline lung cancer screen', 18, 'reason_for_exam_baseline_lung_cancer_screen'),
	(5, 'Incidence lung cancer screen', 19, 'reason_for_exam_incidence_lung_cancer_screen'),
	(6, 'Early Repeat CT for Indeterminate nodule', 20, 'reason_for_exam_early_repeat_ct_for_indeterminate_nodule'),
	(7, 'Unrelated to screening', 21, 'reason_for_exam_unrelated_to_screening'),
	(8, 'Date of Birth', 22, 'date_of_birth'),
	(9, 'Age', 1, 'age'),
	(10, 'Sex', 23, 'sex'),
	(11, 'Race', 24, 'race'),
	(12, 'Yes', 25, 'race_declined_yes'),
	(13, 'No', 26, 'race_declined_no'),
	(14, 'Hispanic', 27, 'ethnicity_hispanic'),
	(15, 'Non-Hispanic', 28, 'ethnicity_non-hispanic'),
	(16, 'Declined to Answer', 29, 'ethnicity_declined_to_answer'),
	(17, 'Non smoker', 30, 'smoking_status_non_smoker'),
	(18, 'Current smoker', 31, 'smoking_status_current_smoker'),
	(19, 'Former smoker', 32, 'smoking_status_former_smoker'),
	(20, 'Years Since Quit Smoking', 2, 'years_since_quit_smoking'),
	(21, 'Pack Years', 3, 'pack-years'),
	(22, 'CTDIvol (CT Dose Index-Volume)', 33, 'ctdivol'),
	(23, 'DLP (Dose Length Product)', 4, 'dlp'),
	(24, 'None', 34, 'lung_rads_cat_3_5_none'),
	(25, 'Present', 35, 'lung_rads_cat_3_5_present'),
	(26, 'Nodule Number', 5, 'nodule-number'),
	(27, 'Solid nodule', 36, 'consistency_solid_nodule'),
	(28, 'Part-solid nodule (PSN)', 37, 'consistency_part-solid_nodule_(psn)'),
	(29, 'Ground glass nodule / Non-solid nodule (GGN)', 38, 'consistency_ground_glass_nodule_/_non-solid_nodule_(ggn)'),
	(30, 'Right upper lobe', 39, 'anatomic_location_right_upper_lobe'),
	(31, 'Right lower lobe', 40, 'anatomic_location_right_lower_lobe'),
	(32, 'Right middle lobe', 41, 'anatomic_location_right_middle_lobe'),
	(33, 'Left upper lobe', 42, 'anatomic_location_left_upper_lobe'),
	(34, 'Left lower lobe', 43, 'anatomic_location_left_lower_lobe'),
	(35, 'Series Number', 6, 'series'),
	(36, 'Image Number', 7, 'image'),
	(37, 'Nodule Size (mm)', 8, 'nodule_size_1'),
	(38, 'Nodule Size (mm)', 9, 'nodule_size_2'),
	(39, 'Nodule Mean Diameter (mm)', 10, 'nodule_mean_diameter'),
	(40, 'For PSN: diameter of SOLID component', 11, 'psn_solid_component'),
	(41, 'Not applicable, baseline scan', 44, 'evolution_not_applicable,_baseline_scan'),
	(42, 'New', 45, 'evolution_new'),
	(43, 'Stable', 46, 'evolution_stable'),
	(44, 'Resolved', 47, 'evolution_resolved'),
	(45, 'Increased Size', 48, 'evolution_increased_size'),
	(46, 'Decreased Size', 49, 'evolution_decreased_size'),
	(47, 'Increased Attenuation', 50, 'evolution_increased_attenuation'),
	(48, 'Decreased Attenuation', 51, 'evolution_decreased_attenuation'),
	(49, 'Smooth', 52, 'margins_smooth'),
	(50, 'Lobulated', 53, 'margins_lobulated'),
	(51, 'Spiculated or Serrated', 54, 'margins_spiculated_or_serrated'),
	(52, 'Poorly Marginated', 55, 'margins_poorly_marginated'),
	(53, 'Decreased Attenuation', 56, 'margins_decreased_attenuation'),
	(54, 'Low', 57, 'level_of_suspicion_low'),
	(55, 'Moderately low', 58, 'level_of_suspicion_moderately_low'),
	(56, 'Intermediate', 59, 'level_of_suspicion_intermediate'),
	(57, 'Moderately high', 60, 'level_of_suspicion_moderately_high'),
	(58, 'High', 61, 'level_of_suspicion_high'),
	(59, '3', 62, 'lungrads_nodule_category_3'),
	(60, '4A', 63, 'lungrads_nodule_category_4a'),
	(61, '4B', 64, 'lungrads_nodule_category_4b'),
	(62, '4X', 65, 'lungrads_nodule_category_4x'),
	(63, 'Comments (Provide rationale if recommendation will deviate from LungRADS algorithm)', 66, 'lungrads_nodule_cat_3_5_comment'),
	(64, 'None', 67, 'lungrads_cat_2_nodules-present_none'),
	(65, 'Present', 68, 'lungrads_cat_2_nodules-present_present'),
	(66, 'LungRADS Category 2 Nodules Quantity', 69, 'lungrads_cat_2_nodules_quantity'),
	(67, 'Consistency', 70, 'lungrads_cat_2_nodule_consistency'),
	(68, 'Size (mm)', 12, 'lungrads_cat_2_nodule_size'),
	(69, 'Location', 71, 'lungrads_cat_2_nodule_location'),
	(70, 'Series', 13, 'lungrads_cat_2_series'),
	(71, 'Image', 14, 'lungrads_cat_2_image'),
	(72, 'Increased Size', 72, 'lungrads_cat_2_evolution_increased_size'),
	(73, 'Decreased Size', 73, 'lungrads_cat_2_evolution_decreased_size'),
	(74, 'Stable', 74, 'lungrads_cat_2_evolution_stable'),
	(75, 'Other', 75, 'lungrads_cat_2_evolution_other'),
	(76, 'None', 76, 'lungrads_cat_1_nodules-present_none'),
	(77, 'Present', 77, 'lungrads_cat_1_nodules-present_present'),
	(78, 'Consistency', 78, 'lungrads_cat_1_nodule_consistency'),
	(79, 'Location', 79, 'lungrads_cat_1_nodule_location'),
	(80, 'Granuloma', 80, 'lungrads_cat_1_nodule_description_granuloma'),
	(81, 'Scar', 81, 'lungrads_cat_1_nodule_description_scar'),
	(82, 'Hamartoma', 82, 'lungrads_cat_1_nodule_description_hamartoma'),
	(83, 'Intrapulmonary lymph node', 83, 'lungrads_cat_1_nodule_description_intrapulmonary_lymph_node'),
	(84, 'Yes', 84, 'emphysema_yes'),
	(85, 'No', 85, 'emphysema_no'),
	(86, 'Trace (< 5%)', 86, 'emphysema_severity_trace_(<_5%)'),
	(87, 'Mild (6-25%)', 87, 'emphysema_severity_mild_(6-25%)'),
	(88, 'Moderate (26-50%)', 88, 'emphysema_severity_moderate_(26-50%)'),
	(89, 'Severe (51-75%)', 89, 'emphysema_severity_severe_(51-75%)'),
	(90, 'Extensive (76-100%)', 90, 'emphysema_severity_extensive_(76-100%)'),
	(91, 'Centrilobular', 91, 'emphysema_type_centrilobular'),
	(92, 'Panacinar', 92, 'emphysema_type_panacinar'),
	(93, 'Paraseptal', 93, 'emphysema_type_paraseptal'),
	(94, 'Paracicatricial', 94, 'emphysema_type_paracicatricial'),
	(95, 'Apices', 95, 'emphysema_distribution_apices'),
	(96, 'Upper lobe', 96, 'emphysema_distribution_upper_lobe'),
	(97, 'Mid-lung', 97, 'emphysema_distribution_mid-lung'),
	(98, 'Lower lobe predominant', 98, 'emphysema_distribution_lower_lobe_predominant'),
	(99, 'Diffuse', 99, 'emphysema_distribution_diffuse'),
	(100, 'Diffuse with upper lobe predominance', 100, 'emphysema_distribution_diffuse_with_upper_lobe_predominance'),
	(101, 'Diffuse with lower lobe predominance', 101, 'emphysema_distribution_diffuse_with_lower_lobe_predominance'),
	(102, 'Yes', 102, 'airways_disease_yes'),
	(103, 'No', 103, 'airways_disease_no'),
	(104, 'Upper lobe', 104, 'airways_distribution_upper_lobe'),
	(105, 'Lower lobe', 105, 'airways_distribution_lower_lobe'),
	(106, 'Diffuse', 106, 'airways_distribution_diffuse'),
	(107, 'Focal', 107, 'airways_distribution_focal'),
	(108, 'Multifocal', 108, 'airways_distribution_multifocal'),
	(109, 'Right upper lobe', 109, 'airways_location_right_upper_lobe'),
	(110, 'Right lower lobe', 110, 'airways_location_right_lower_lobe'),
	(111, 'Right middle lobe', 111, 'airways_location_right_middle_lobe'),
	(112, 'Left upper lobe', 112, 'airways_location_left_upper_lobe'),
	(113, 'Left lower lobe', 113, 'airways_location_left_lower_lobe'),
	(114, 'Yes', 114, 'fibrosis_yes'),
	(115, 'No', 115, 'fibrosis_no'),
	(116, 'Focal fibrosis', 116, 'fibrosis_type_focal_fibrosis'),
	(117, 'Diffuse or subpleural fibrosis', 117, 'fibrosis_type_diffuse_or_subpleural_fibrosis'),
	(118, 'Perilymphatic micronodularity', 118, 'fibrosis_type_perilymphatic_micronodularity'),
	(119, 'Centrilobular micronodules', 119, 'fibrosis_type_centrilobular_micronodules'),
	(120, 'Non-specific', 120, 'fibrosis_type_non-specific'),
	(121, 'Fibrosis Non-Specific Description', 121, 'fibrosis_non_specific'),
	(122, 'Right apices', 122, 'fibrosis_anatomic_distribution_right_apices'),
	(123, 'Left apices', 123, 'fibrosis_anatomic_distribution_left_apices'),
	(124, 'Bilateral apices', 124, 'fibrosis_anatomic_distribution_bilateral_apices'),
	(125, 'Subpleural predominant', 125, 'fibrosis_anatomic_distribution_subpleural_predominant'),
	(126, 'Basilar predominant', 126, 'fibrosis_anatomic_distribution_basilar_predominant'),
	(127, 'Upper lobe(s)', 127, 'fibrosis_anatomic_distribution_upper_lobe(s)'),
	(128, 'Middle lobe(s)', 128, 'fibrosis_anatomic_distribution_middle_lobe(s)'),
	(129, 'Lower lobe(s)', 129, 'fibrosis_anatomic_distribution_lower_lobe(s)'),
	(130, 'Combined pulmonary fibrosis and emphysema', 130, 'fibrosis_etiology_combined_pulmonary_fibrosis_and_emphysema'),
	(131, 'UIP', 131, 'fibrosis_etiology_uip'),
	(132, 'NSIP', 132, 'fibrosis_etiology_nsip'),
	(133, 'HP', 133, 'fibrosis_etiology_hp'),
	(134, 'Sarcoidosis', 134, 'fibrosis_etiology_sarcoidosis'),
	(135, 'Non-specific', 135, 'fibrosis_etiology_non-specific'),
	(136, 'Post-inflammatory', 136, 'fibrosis_etiology_post-inflammatory'),
	(137, 'Other', 137, 'fibrosis_etiology_other'),
	(138, 'No intrathoracic adenopathy', 138, 'lymph_nodes_no_intrathoracic_adenopathy'),
	(139, 'Reactive nodes in (X nodal stations)', 139, 'lymph_nodes_reactive_nodes_in_(x_nodal_stations)'),
	(140, 'Potentially abnormal nodes in ATS region X', 140, 'lymph_nodes_potentially_abnormal_nodes_in_ats_region_x'),
	(141, 'Yes', 141, 'pleural_disease_yes'),
	(142, 'No', 142, 'pleural_disease_no'),
	(143, 'Right', 143, 'pleural_anatomic_location_right'),
	(144, 'Left', 144, 'pleural_anatomic_location_left'),
	(145, 'Bilateral', 145, 'pleural_anatomic_location_bilateral'),
	(146, 'Effusion(s)', 146, 'pleural_abnormality_effusion(s)'),
	(147, 'Pleural plaque(s), likely asbestos-related or post-inflammatory', 147, 'pleural_abnormality_pleural_plaque(s),_likely_asbestos-related_or_post-inflammatory'),
	(148, 'Pleural nodularity', 148, 'pleural_abnormality_pleural_nodularity'),
	(149, 'Focal or diffuse pleural thickening, likely asbestos-related, post-inflammatory', 149, 'pleural_abnormality_focal_or_diffuse_pleural_thickening,_likely_asbestos-related,_post-inflammatory'),
	(150, 'Of indeterminate etiology', 150, 'pleural_abnormality_of_indeterminate_etiology'),
	(151, 'Normal', 151, 'cardiac_heart_size_normal'),
	(152, 'Upper limits of normal', 152, 'cardiac_heart_size_upper_limits_of_normal'),
	(153, 'Enlarged', 153, 'cardiac_heart_size_enlarged'),
	(154, 'Normal pericardial effusion', 154, 'cardiac_pericardium_normal_pericardial_effusion'),
	(155, 'Mild pericardial effusion', 155, 'cardiac_pericardium_mild_pericardial_effusion'),
	(156, 'Moderate pericardial effusion', 156, 'cardiac_pericardium_moderate_pericardial_effusion'),
	(157, 'Large pericardial effusion', 157, 'cardiac_pericardium_large_pericardial_effusion'),
	(158, 'Pericardial thickening', 158, 'cardiac_pericardium_pericardial_thickening'),
	(159, 'Pericardial calcification', 159, 'cardiac_pericardium_pericardial_calcification'),
	(160, 'None', 160, 'cardiac_artery_calcification_none'),
	(161, 'Mild', 161, 'cardiac_artery_calcification_mild'),
	(162, 'Moderate', 162, 'cardiac_artery_calcification_moderate'),
	(163, 'Severe', 163, 'cardiac_artery_calcification_severe'),
	(164, 'LAD', 164, 'cardiac_artery_calcification_distribution_lad'),
	(165, 'RCA', 165, 'cardiac_artery_calcification_distribution_rca'),
	(166, 'Circumflex', 166, 'cardiac_artery_calcification_distribution_circumflex'),
	(167, 'Left main coronary artery', 167, 'cardiac_artery_calcification_distribution_left_main_coronary_artery'),
	(168, 'Multiple vessels', 168, 'cardiac_artery_calcification_distribution_multiple_vessels'),
	(169, 'Aortic valve calcifications', 169, 'cardiac_artery_other_aortic_valve_calcifications'),
	(170, 'Ascending aortic enlargement', 170, 'cardiac_artery_other_ascending_aortic_enlargement'),
	(171, 'Mitral annular calcification', 171, 'cardiac_artery_other_mitral_annular_calcification'),
	(172, 'Possible pulmonary hypertension', 172, 'cardiac_artery_other_possible_pulmonary_hypertension'),
	(173, 'Thyroid findings', 173, 'other_sig_findings_thyroid_findings'),
	(174, 'Osseous or chest wall findings', 174, 'other_sig_findings_osseous_or_chest_wall_findings'),
	(175, 'Liver findings', 175, 'other_sig_findings_liver_findings'),
	(176, 'Adrenal findings', 176, 'other_sig_findings_adrenal_findings'),
	(177, 'Kidney findings', 177, 'other_sig_findings_kidney_findings'),
	(178, 'Biliary or gall bladder findings', 178, 'other_sig_findings_biliary_or_gall_bladder_findings'),
	(179, 'Gastric findings', 179, 'other_sig_findings_gastric_findings'),
	(180, 'Bowel pathology', 180, 'other_sig_findings_bowel_pathology'),
	(181, 'Other (specify) findings requiring follow-up', 181, 'other_sig_findings_other_(specify)_findings_requiring_follow-up'),
	(182, 'Other Significant Findings Specify', 182, 'other_sig_findings_specify'),
	(183, '0', 183, 'lungrads_cat_overall_0'),
	(184, '1', 184, 'lungrads_cat_overall_1'),
	(185, '2', 185, 'lungrads_cat_overall_2'),
	(186, '3', 186, 'lungrads_cat_overall_3'),
	(187, '4A', 187, 'lungrads_cat_overall_4a'),
	(188, '4B', 188, 'lungrads_cat_overall_4b'),
	(189, '4X', 189, 'lungrads_cat_overall_4x'),
	(190, 'None', 190, 'additional_cat_overall_none'),
	(191, 'S', 191, 'additional_cat_overall_s'),
	(192, 'C', 192, 'additional_cat_overall_c'),
	(193, 'Recommend annual screening in 12 months', 193, 'recommendation_recommend_annual_screening_in_12_months'),
	(194, 'Recommend 6 month follow-up low dose CT to assess for interval change', 194, 'recommendation_recommend_6_month_follow-up_low_dose_ct_to_assess_for_interval_change'),
	(195, 'Recommend early follow-up LDCT in 3 months to assess for interval change', 195, 'recommendation_recommend_early_follow-up_ldct_in_3_months_to_assess_for_interval_change'),
	(196, 'Recommend tissue sampling percutaneously / bronchoscopically or PET-CT scan or diagnostic Chest CT or surgical consultation', 196, 'recommendation_recommend_tissue_sampling_percutaneously_/_bronchoscopically_or_pet-ct_scan_or_diagnostic_chest_ct_or_surgical_consultation'),
	(197, 'Unclear', 197, 'unclear');
/*!40000 ALTER TABLE "value" ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
