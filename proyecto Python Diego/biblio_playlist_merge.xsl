<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:variable name="bib" select="'biblioteca.xml'" />
  
  <xsl:template match="playlists">
    <html>
      <h1>Playlists</h1>
      <xsl:apply-templates select="playlist"/>
    </html>
  </xsl:template>

  <xsl:template match="playlist">
    <p><xsl:value-of select="@nombre"/></p>
    <ul>
      <xsl:apply-templates select="cancion"/>
			<xsl:apply-templates select="album"/>
    </ul>
  </xsl:template>
  
  <xsl:template match="cancion">
    <xsl:variable name="cancionid" select="@id"/>
     <li><xsl:value-of select="document($bib)//cancion[@id=$cancionid]/titulo"/></li>
  </xsl:template>

  <xsl:template match="album">
    <xsl:variable name="albumid" select="@id"/>
     <li><xsl:value-of select="document($bib)//album[@id=$albumid]/titulo"/> (album)</li>
  </xsl:template>

</xsl:stylesheet>
