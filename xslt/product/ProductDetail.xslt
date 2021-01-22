<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ProductDetail">
		<section class="product-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="project_detail_slide">
							<div class="swiper-container gallery-top">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="ProductImages"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="ProductImages"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="item-desc-pro-detail">
							<div class="title">
								<h1>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
							</div>
							<div class="table-pro-detail">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
								<div href="" class="view-more">
										<img src="/data/sites/1/skins/default/img/home/h-icon.png" />
									<span>Contact us</span>
								</div>
								<div class="links-pro-detail">
									<ul>
										<li>
											<a href="#">
												<xsl:attribute name="href">
													<xsl:text disable-output-escaping="yes">
														https://www.facebook.com/sharer/sharer.php?u=
													</xsl:text>
													<xsl:value-of disable-output-escaping="yes" select="FullUrl">
													</xsl:value-of>
												</xsl:attribute>
												<span class="ri-facebook-box-fill"></span>
											</a>
										</li>
										<li>
											<a href="#">
												<xsl:attribute name="href">
													<xsl:text disable-output-escaping="yes">
														https://twitter.com/home?status=
													</xsl:text>
													<xsl:value-of disable-output-escaping="yes" select="FullUrl">
													</xsl:value-of>
												</xsl:attribute>
												<span class="ri-twitter-fill"></span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-product-detail">
					<div class="tab-description">
						<ul class="tab-navigation">
							<xsl:apply-templates select="ProductAttributes" mode="Tab"></xsl:apply-templates>
						</ul>
					</div>
					<div class="content-description">
						<div class="tab-wrapper">
							<xsl:apply-templates select="ProductAttributes" mode="Content"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<xsl:if test="count(ProductOther) > 0">
			<section class="other-product-detail">
				<div class="container">
					<div class="head-title">
						<h2>Other products</h2>
					</div>
					<div class="row">
						<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>

	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Tab">
		<li>
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="javascript:void(0)">
				<xsl:attribute name="data-type">
					<xsl:text disable-output-escaping="yes">tab-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Content">
		<div class="tab-item">
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">tab-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="fullcontent">
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="col-lg-4">
			<div class="item-main-product">
				<div class="card_img">
					<a class="zoom-in" href="#">
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
				<div class="title-zone">
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
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>