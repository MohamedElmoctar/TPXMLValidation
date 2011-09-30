<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<!-- Continuez ici... -->
		<xsl:element name="auteurs">
			<xsl:apply-templates select="messages" />
		</xsl:element>
	</xsl:template>
	<xsl:template match="messages">
		<auteur>
			<nom>Alice</nom>
			<xsl:for-each select="message">
				<xsl:if test="auteur='Alice'">
					<xsl:variable name="ref" select="@reference"></xsl:variable>
					<message reference='{$ref}'>
						<date>
							<xsl:value-of select="date"></xsl:value-of>
						</date>
						<contenu>
							<xsl:value-of select="contenu"></xsl:value-of>
						</contenu>
					</message>

				</xsl:if>

			</xsl:for-each>
		</auteur>
		<auteur>
			<nom>Guillaume</nom>
			<xsl:for-each select="message">
				<xsl:if test="auteur='Guillaume'">
					<xsl:variable name="ref" select="@reference"></xsl:variable>
					<message reference='{$ref}'>
						<date>
							<xsl:value-of select="date"></xsl:value-of>
						</date>
						<contenu>
							<xsl:value-of select="contenu"></xsl:value-of>
						</contenu>
					</message>

				</xsl:if>

			</xsl:for-each>
		</auteur>
		<auteur>
			<nom>Julien</nom>
			<xsl:for-each select="message">
				<xsl:if test="auteur='Julien'">
					<xsl:variable name="ref" select="@reference"></xsl:variable>
					<message reference='{$ref}'>
						<date>
							<xsl:value-of select="date"></xsl:value-of>
						</date>
						<contenu>
							<xsl:value-of select="contenu"></xsl:value-of>
						</contenu>
					</message>

				</xsl:if>

			</xsl:for-each>
		</auteur>

	</xsl:template>

</xsl:stylesheet>