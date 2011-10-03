<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<html>
			<body>
				<table border="1"><tr>
				<th>Reference</th>
				<th>Auteur</th>
				<th>Date</th>
				<th>Contenu</th>
				</tr>
					<xsl:apply-templates select="messages/message"/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="message">
<tr>
		<td><xsl:value-of select="@reference"/></td>
		<td><xsl:value-of select="auteur"/></td>
		<td><xsl:value-of select="date"/></td>
		<td><xsl:value-of select="contenu"/></td>
</tr>
	</xsl:template>

</xsl:stylesheet>