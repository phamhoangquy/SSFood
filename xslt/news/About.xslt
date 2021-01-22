<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ZoneList">

		<section class="about" setBackground="/data/sites/1/skins/default/img/about/bg-1.png">
			<div class="container">
				<div class="head-title">
					<h1>
						<xsl:value-of disable-output-escaping="yes" select="Zone[1]/Title"></xsl:value-of>
					</h1>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="content-about">
							<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News/BriefContent">
							</xsl:value-of>
							<xsl:value-of select="Zone[1]/News/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card_img">
							<div class="img">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="Zone[1]/News/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Zone[1]/News/Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="content-about">
							<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News/FullContent">
							</xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="about-2" setBackground="/data/sites/1/skins/default/img/about/bg-2.png">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Zone[2]/Title"></xsl:value-of>
					</h2>
				</div>
				<div class="about-news-swiper-wrapper">
					<div class="nav-arrow-prev">
						<img src="/data/sites/1/skins/default/img/home/h-icon-2.png" />
					</div>
					<div class="nav-arrow-next">
						<img src="/data/sites/1/skins/default/img/home/h-icon.png" />
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone[2]/News" mode="ZoneNews-2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="about-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<div class="card_img">
							<div class="img">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="Zone[3]/News/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Zone[3]/News/Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="desc-about-3">
							<div class="head-title">
								<h2>
									<xsl:value-of disable-output-escaping="yes" select="Zone[3]/News/Title">
									</xsl:value-of>
									<xsl:value-of select="Zone[3]/News/EditLink" disable-output-escaping="yes">
									</xsl:value-of>
								</h2>
							</div>
							<div class="caption-about">
								<xsl:value-of disable-output-escaping="yes" select="Zone[3]/News/BriefContent">
								</xsl:value-of>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card_img">
							<div class="img">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="Zone[3]/News/ThumbnailUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Zone[3]/News/Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="about-4" setBackground="/data/sites/1/skins/default/img/home/bg-international-h.png">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Zone[4]/Title"></xsl:value-of>
					</h2>
				</div>
				<div class="about-certificates-swiper-wrapper">
					<div class="nav-arrow-prev">
						<img src="/data/sites/1/skins/default/img/home/h-icon-2.png" />
					</div>
					<div class="nav-arrow-next">
						<img src="/data/sites/1/skins/default/img/home/h-icon.png" />
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone[4]/News" mode="ZoneNews-4"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="about-5">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Zone[5]/Title"></xsl:value-of>
					</h2>
				</div>
				<div class="desc-system">
					<xsl:value-of disable-output-escaping="yes" select="Zone[5]/Description"></xsl:value-of>
				</div>
				<div class="row">
					<xsl:apply-templates select="Zone[5]/News" mode="ZoneNews-5"></xsl:apply-templates>
				</div>
			</div>
		</section>

		<section class="about-6">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Zone[6]/Title"></xsl:value-of>
					</h2>
				</div>
				<div class="desc-client">
					<xsl:value-of disable-output-escaping="yes" select="Zone[6]/Description"></xsl:value-of>
				</div>
				<div class="about-client-swiper-wrapper">
					<div class="nav-arrow-prev">
						<img src="/data/sites/1/skins/default/img/home/icon-arr-left.png" />
					</div>
					<div class="nav-arrow-next">
						<img src="/data/sites/1/skins/default/img/home/icon-arr-right.png" />
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone[6]/News" mode="ZoneNews-6"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-2">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="caption-slide">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="text">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<div class="img-slide">
					<div class="img zoom-in">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-4">
		<div class="swiper-slide">
			<div class="wrapper zoom-in">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-5">
		<div class="col-lg-4">
			<xsl:if test="position() mod 2 = 0">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">col-lg-8</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="item-about-5">
				<div class="card_img">
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="item-hover">
					<div class="item-hover-inner">
						<div class="title-hover">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="content-hover">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-6">
		<div class="swiper-slide">
			<div class="wrapper zoom-in">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>