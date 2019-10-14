<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <h1>Álbumes</h1>
      <xsl:apply-templates select="//album"/>
      <h1>Artistas</h1>
      <ul>
        <xsl:apply-templates select="//artista"/>
      </ul>
    </html>
  </xsl:template>

  <xsl:template match="album">
     <p><xsl:value-of select="titulo"/></p>
  </xsl:template>
  
  <xsl:template match="artista">
     <li><xsl:value-of select="nombre"/></li>
  </xsl:template>

</xsl:stylesheet>
