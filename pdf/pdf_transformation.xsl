<?xml version="1.0" encoding="utf-8"?>

<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<fo:layout-master-set>
         <fo:simple-page-master master-name="test_01" page-height="29.7cm" page-width="21.0cm"
                                margin-top="1.5cm" margin-bottom="1.5cm" margin-left="1.5cm" margin-right="1.5cm">
          
            <fo:region-body margin-top="1cm" margin-bottom="0.2cm" />
            <fo:region-before extent="1cm"/>
            <fo:region-after extent="0.5cm"/>
            
         </fo:simple-page-master>
     </fo:layout-master-set>
     
     <fo:page-sequence master-reference="test_01">
     
        <fo:static-content flow-name="xsl-region-before">
            <fo:block line-height="13pt" font-size="13pt" border-after-width="thin" padding-bottom="2px"
                      text-align-last="justify">
			
                  <fo:leader leader-pattern="space" />

            </fo:block>
        </fo:static-content>
        
        <fo:static-content flow-name="xsl-region-after">
           <fo:block font-size="11pt" text-align="center" border-before-width="thin" border-before-style="solid" padding-top="10px" margin-top="5px">
            Page <fo:page-number/> from <fo:page-number-citation ref-id="last-page"/>
           </fo:block>
        </fo:static-content>
        
        <fo:flow flow-name="xsl-region-body">
            <fo:block break-before="page">
		
                 <fo:block font-size="30pt" margin-top="40pt" text-align="center" font-weight="bold">
                    Cook Book by Martin Ruzicka
                 </fo:block>
		 <fo:block text-align="center" margin-top="20pt">
        		   <xsl:element name="fo:external-graphic">
                             <xsl:attribute name="src">
                                images/main.jpg
                             </xsl:attribute>
                             <xsl:attribute name="content-width">300px</xsl:attribute> 
                           </xsl:element>	
		</fo:block>
		<fo:block font-size="20pt" margin-top="40pt" text-align="center" font-weight="thin">Based on https://www.woolworths.com.au</fo:block>
	    </fo:block>
        
	    <xsl:for-each select="breakfast_menu/food">
              <fo:block break-before="page">
              
                 <fo:block font-size="18pt" text-align="left" font-weight="bold">
                    <xsl:value-of select="name" />
                 </fo:block>
                 
                 <fo:block padding-top="15px" font-size="12pt" text-align="left" font-weight="bold">
                    Ingredients
                 </fo:block>

		<fo:list-block provisional-distance-between-starts="30px" start-indent="10px" font-size="12pt">
			<xsl:for-each select="ingredients/good">			
			<fo:list-item>
				<fo:list-item-label end-indent="label-end()">
			          <fo:block>&#x2022;</fo:block>
			        </fo:list-item-label>
			        <fo:list-item-body start-indent="body-start()">
			          <fo:block><xsl:value-of select="name" />  ( <xsl:value-of select="amount" /> )</fo:block>
			        </fo:list-item-body>
			</fo:list-item>
			</xsl:for-each>		
		</fo:list-block>

                 <fo:block padding-top="15px" font-size="12pt" text-align="left" font-weight="bold">
                    Instructions
                 </fo:block>

		<fo:list-block provisional-distance-between-starts="30px" start-indent="10px" font-size="12pt">
			<xsl:for-each select="instructions/step">			
			<fo:list-item>
				<fo:list-item-label end-indent="label-end()">
			          <fo:block>&#x2022;</fo:block>
			        </fo:list-item-label>
			        <fo:list-item-body start-indent="body-start()">
			          <fo:block><xsl:value-of select="value" /> </fo:block>
			        </fo:list-item-body>
			</fo:list-item>
			</xsl:for-each>		
		</fo:list-block>

                 <fo:block padding-top="15px" font-size="12pt" text-align="left" font-weight="bold">
                    Calories: <xsl:value-of select="calories" />
                 </fo:block>

                 <fo:block text-align="center">
			<xsl:element name="fo:external-graphic">
                             <xsl:attribute name="src">
                                images/<xsl:value-of select="imageID"/>.jpg
                             </xsl:attribute>
                             <xsl:attribute name="content-width">300px</xsl:attribute> 
                           </xsl:element>
                </fo:block>	            


              </fo:block>
            </xsl:for-each>
            <fo:block id="last-page"/>
        </fo:flow>
        
     </fo:page-sequence>
</fo:root>
