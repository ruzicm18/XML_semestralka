# XML_semestralka

PDF: To generate PDF document, run this command:

	fop -xml cookbook.xml -xsl pdf/pdf_transformation.xsl -pdf pdf/output.pdf

----------------------------------------

XHTML: To generate XHTML document, run this command:
	
	xalan -in cookbook.xml -xsl xhtml/xhtml_transformation.xsl -out xhtml/CookBook.xhtml
	
