<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-3 uk-section">
			<div class="uk-container">
				<div class="product-category">
					<div class="product-category-slider uk-position-relative">
						<div class="uk-slider" uk-slider="">
							<ul class="uk-slider-items uk-grid uk-child-width-1-1">
								<xsl:choose>
									<xsl:when test="count(/ProductList/Product) mod 3 = 0">
										<xsl:apply-templates select="/ProductList/Product" mode="Product-1">
										</xsl:apply-templates>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="/ProductList/Product" mode="Product-2">
										</xsl:apply-templates>
									</xsl:otherwise>
								</xsl:choose>
							</ul>
							<a class="slider-nav uk-position-center-left-out" href="#" uk-slidenav-previous=""
								uk-slider-item="previous">
								<span class="lnr lnr-arrow-left"></span>
							</a>
							<a class="slider-nav uk-position-center-right uk-position-center-right-out" href="#"
								uk-slidenav-next="" uk-slider-item="next">
								<span class="lnr lnr-arrow-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product" mode="Product-1">
		<xsl:if test="position() mod 3 = 1">
			<xsl:text disable-output-escaping="yes">&lt;li&gt;&lt;div class="group-item"&gt;&lt;div class="uk-grid uk-child-width-1-2@l" uk-grid=""&gt;</xsl:text>
		</xsl:if>
		<div class="wrapper">
			<div class="item">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="caption-wrapper">
					<div class="caption">
						<div class="title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</div>
						<div class="desc">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<div class="view-more">
							<a class="btn-primary" href="#">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="/ProductList/ViewMore"></xsl:value-of>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<xsl:if test="(position() mod 3) = 0">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;&lt;/li&gt;</xsl:text>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Product" mode="Product-2">
		<xsl:if test="position() = 1">
			<xsl:text disable-output-escaping="yes">&lt;li&gt;&lt;div class="group-item"&gt;&lt;div class="uk-grid
				uk-child-width-1-2@l" uk-grid=""&gt;</xsl:text>
		</xsl:if>
		<div class="wrapper">
			<div class="item">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="caption-wrapper">
					<div class="caption">
						<div class="title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</div>
						<div class="desc">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<div class="view-more">
							<a class="btn-primary" href="#">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="/ProductList/ViewMore"></xsl:value-of>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<xsl:if test="(position() mod 3) = 0">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;&lt;/li&gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position() = last()">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;&lt;/li&gt;</xsl:text>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>