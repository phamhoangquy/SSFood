<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/FileList">
		<div class="head-title">
			<h1>
				<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
			</h1>
		</div>
		<div class="row">
			<div class="col-lg-10">
				<div class="table-brochure">
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">Title</th>
								<th scope="col">Download</th>
							</tr>
						</thead>
						<tbody>
							<xsl:apply-templates select="File"></xsl:apply-templates>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="File">
		<tr>
			<th scope="row">
				<a href="/SharedFiles/Download.aspx?fileid=26">
					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:attribute name="href">
						<xsl:value-of select="DownloadUrl"></xsl:value-of>
					</xsl:attribute>
				</a>
			</th>
			<td>
				<a href="">
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="DownloadUrl"></xsl:value-of>
					</xsl:attribute>
					<span class="ri-download-fill"></span>
				</a>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>