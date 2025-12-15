Logical: LogCzImagingReportCz
Id: logImagingReportCz
Title: "A - Zpráva z obrazového vyšetření"
Description: """Zpráva z obrazového vyšetření"""



* hlava 1..1 logHeaderImagingReportCz "A.1 - Hlavička zprávy z obrazového vysetreni" """Hlavicka zprávy z obrazového vysetreni"""
* telo 0..1 logBodyImagingReportCz "A.2 - Tělo zprávy z obrazového vyšetření" """Tělo zprávy z obrazového vyšetření"""
* presentacniForma 1..* logPresentedFormCz "A.3 - Vizuální podoba dokumentu" """Zpráva z obrazového vyšetření čitelná lidským okem,  je požadován PDF formát."""
* prilohy 0..* logAttachmentsCz "A.4 - Přílohy" """Ostatní přílohy"""