<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<auteurs>
			<xsl:apply-templates select="messages" />
		</auteurs>
	</xsl:template>
	<xsl:template match="messages">
		<xsl:for-each
			select="//message[not(auteur = preceding-sibling::message/auteur)]">
			<auteur>
				<!-- nomAuteur varibale contenant le nom de l'auteur selectionné par la boucle for-->
				<xsl:variable name="nomAuteur">
					<xsl:value-of select="auteur" />
				</xsl:variable>
				<nom>
					<xsl:value-of select="$nomAuteur" />
				</nom>
				<!-- afficher tous les messages de l'auteur  $nomAuteur-->
				<xsl:for-each select="//message[auteur=$nomAuteur]">
				
					<!-- ref une variable pour l'affichage de l'attribut reference -->
					<xsl:variable name="ref" select="@reference"></xsl:variable>
					<message reference='{$ref}'>
						<contenu>
							<xsl:value-of select="contenu" />
						</contenu>
						<date>
							<xsl:value-of select="date"></xsl:value-of>
						</date>
					</message>
				</xsl:for-each>
			</auteur>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>