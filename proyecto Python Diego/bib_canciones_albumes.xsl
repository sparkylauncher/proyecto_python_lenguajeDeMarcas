<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <h1>Álbumes</h1>
	<hr/>
      <xsl:apply-templates select="//album"/>

    </html>
  </xsl:template>

  <xsl:template match="album">
    <h2><xsl:value-of select="titulo"/></h2>
	<h4>Canciones:</h4>
		<ul>
		<xsl:apply-templates select="cancion"/>
		</ul>
		<hr/>
  </xsl:template>

  <xsl:template match="cancion">
    <li><xsl:value-of select="titulo"/></li>
  </xsl:template>

  
</xsl:stylesheet>
