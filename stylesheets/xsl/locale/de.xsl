<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

<!-- 
	German Localisation file.

	See: locale.xsl.in for more information.

	$Id: de.xsl,v 1.3 2001-08-11 16:12:23 jmoore Exp $

-->
		
		
 <xsl:template name="get.locale.text">
  <xsl:param name="text"/>

  <xsl:choose>
   <xsl:when test="$text='authors'">
    <xsl:text>PHP-GTK Autoren</xsl:text>		 
   </xsl:when>
   <xsl:when test="$text='contributors'">
    <xsl:text>PHP-GTK Mitwirkende</xsl:text>		 
   </xsl:when>
   <xsl:when test="$text='manual.contributors'">
    <xsl:text>PHP-GTK Mitwirkende am Handbuch</xsl:text>		 
   </xsl:when>
   <xsl:when test="$text='edited.by'"> 
    <xsl:text>Herausgegeben von</xsl:text>		 
   </xsl:when>
  
   <xsl:otherwise>
    <xsl:message>
     <xsl:text>Could not find Locale text for </xsl:text>
     <xsl:value-of select="$text"/>
     <xsl:text>. Defaulting to en Locale</xsl:text>
    <xsl:call-template name="get.default.text">
     <xsl:with-param name="text" select="$text"/>
    </xsl:call-template>
   </xsl:otherwise>
  </xsl:choose>

 </xsl:template>
		
</xsl:stylesheet>

