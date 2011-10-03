<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" indent="no" />

	<xsl:template match="/">
		
		<xsl:apply-templates select="messages/message" />

	</xsl:template>
	<xsl:template match="message">
		<xsl:value-of select="@reference" />
		<xsl:text><!-- retour a la ligne -->
		</xsl:text>
		<xsl:value-of select="auteur" />
		<xsl:text> <!-- retour a la ligne -->
		</xsl:text>
		<xsl:value-of select="date" />
		<xsl:text><!-- retour a la ligne -->
		</xsl:text>
		<xsl:value-of select="contenu" />
		
	</xsl:template>
</xsl:stylesheet>