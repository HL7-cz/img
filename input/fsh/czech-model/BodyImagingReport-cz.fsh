Logical: LogCzBodyImagingReportCz
Id: logBodyImagingReportCz
Title: "A.2 - Tělo dokumentu"
Description: """Tělo dokumentu"""



* informaceOZadance 0..* logInformationAboutOrder "A.2.1 - Informace o žádance (objednávce)" """Informace o žádance (objednávce) na zdravotní službu. """
* duvodVyzadani 0..1 logReasonForAdmission "A.2.2 - Důvod vyžádání (objednání)" """Důvod vyžádání (objednání)"""
* informaceOVzorku 0..* logSpecimenInformation "A.2.3 - Informace o vzorku" """Informace o vzorku"""
* zpravaZeZobrazovacichMetod 1..1 logReportOfImagingMethod "A.2.4 - Zpráva ze zobrazovacích metod" """Zpráva ze zobrazovacích metod"""
* odkazNaSouvisejiciZpravu 0..* logLinkToRelatedReport "A.2.5 - Odkaz na související zprávu" """Odkaz na související dřívější zprávu o výsledcích (nebo studii)."""
* prilohy 0..* logKeyImagesAttachment "A.2.6 - Média (přílohy)" """Klíčové snímky související s touto zprávou."""
* dcmMetadata 0..* logDcmMetadata "A.2.7 - DICOM metadata" """DICOM metadata"""