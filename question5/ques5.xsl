<?xml version="1.0" encoding="UTF-8" ?>
  

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
   <xsl:template match="/">

      <html>
         <head>
            <title>DATA</title>
         </head>

         <body>
         <h1>INFORMATION</h1>
          <table border="6">
          <tr style="background-color:yellow"><th>COUNTRY NAME</th> <th>CAPITAL</th> <th>UNEMPLOYMENT</th> <th>TOTAL GDP</th></tr>
                    <xsl:for-each select="//country">
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                    <xsl:value-of select="@capital" /><br/>
                            </td>
                            
                            <td>
                                <xsl:value-of select="unemployment" />
                            </td>
                            
                            <td>
                                <xsl:value-of select="gdp_total" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
         </body>

      </html>
   </xsl:template>

</xsl:stylesheet>
