<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
            encoding="utf-8" indent="yes" />

<xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
    <head>
       <meta http-equiv="content-type" content="text/html; charset=utf-8" />
       <meta http-equiv="content-language" content="cs" />
       <link rel="stylesheet" type="text/css" href="Stylesheet.css" />
       <meta name="author" content="Martin Růžička" />
       <title>Cook Book (Martin Ruzicka)</title>
    </head>
    <body>

         <div id="header">
		<h1>Cook Book by Martin Ruzicka</h1>
         </div>
           
	<xsl:for-each select="breakfast_menu/food">
		<a href="{position()}.html">Recept</a>

		<xsl:result-document href="{position()}.html">
<html>
    <head>
       <meta http-equiv="content-type" content="text/html; charset=utf-8" />
       <meta http-equiv="content-language" content="cs" />
       <link rel="stylesheet" type="text/css" href="Stylesheet.css" />
       <meta name="author" content="Martin Růžička" />
       <title>Cook Book (Martin Ruzicka)</title>
    </head>
		    <body>
			              <div class="box">
              
                 <h2><xsl:value-of select="name" /></h2>
                 
                 <h3>Ingredients</h3>

		 <ul>
			<xsl:for-each select="ingredients/good">			
				<li><xsl:value-of select="name" /> ( <xsl:value-of select="amount" /> )</li>
			</xsl:for-each>		
		 </ul>

                 <h3>Instructions</h3>

		 <ul>
			<xsl:for-each select="instructions/step">			
				<li><xsl:value-of select="value" /></li>
			</xsl:for-each>		
		 </ul>

		<h3>Calories: <xsl:value-of select="calories" /></h3>

                 <div style="text-align:center;">
			<xsl:element name="img">
                            	<xsl:attribute name="src">../images/<xsl:value-of select="imageID" />.jpg</xsl:attribute>
				<xsl:attribute name="style">width:500px;</xsl:attribute>
                        </xsl:element>
                </div>	            

              </div>
		    </body></html>
		</xsl:result-document>


            </xsl:for-each>

         <div id="footer">
		<h1>Source: <a href='https://www.woolworths.com.au'>https://www.woolworths.com.au</a></h1>
         </div>
    </body>
  </html>  
</xsl:template>

</xsl:stylesheet> 



  

  
  
