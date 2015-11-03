<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
      <xsl:for-each select="//book">
        <xsl:value-of select="title"/>
        <xsl:when test = "price < 30"/>
        <xsl:text "<30">
        </xsl:when>
          <xsl:when test = "price > 30"/>
          <xsl:text ">30">
            </xsl:when>
            <xsl:when test = "price < 30"/>
            <xsl:text "=30">
              </xsl:when>
      </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
