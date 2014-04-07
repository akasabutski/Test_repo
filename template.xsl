<xsl:template name="remove_br">
 <xsl:param name="from"/>
 <xsl:variable name="var_1">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$from"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt; &#xA;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
 <xsl:variable name="var_2">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$var_1"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt;&#xA;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
  <xsl:variable name="var_3">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$var_2"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
 <xsl:value-of select="$var_3"/>
</xsl:template>