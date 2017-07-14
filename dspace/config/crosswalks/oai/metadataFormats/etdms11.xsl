<?xml version="1.0" encoding="UTF-8" ?>
<!--


    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

 -->
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:doc="http://www.lyncode.com/xoai"
	version="1.0">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="yes" />

	<xsl:template match="/">
		<thesis xmlns="http://www.ndltd.org/standards/metadata/etdms/1.1/"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xmlns:dc="http://purl.org/dc/elements/1.1/"
			xmlns:dcterms="http://purl.org/dc/terms/"
			xsi:schemaLocation="http://www.ndltd.org/standards/metadata/etdms/1.1/
			http://www.ndltd.org/standards/metadata/etdms/1-1/etdms11.xsd
			http://purl.org/dc/elements/1.1/
			http://www.ndltd.org/standards/metadata/etdms/1-1/etdmsdc.xsd
			http://purl.org/dc/terms/
			http://www.ndltd.org/standards/metadata/etdms/1-1/etdmsdcterms.xsd"
		>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">
				<dc:title><xsl:value-of select="." /></dc:title>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element[@name='alternative']/doc:field[@name='value']">
				<dc:title.alternative><xsl:value-of select="." /></dc:title.alternative>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='creator']/doc:element/doc:field[@name='value']">
				<dc:creator><xsl:value-of select="." /></dc:creator>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='subject']/doc:element/doc:field[@name='value']">
				<dc:subject><xsl:value-of select="." /></dc:subject>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element/doc:field[@name='value']">
				<dc:description><xsl:value-of select="." /></dc:description>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element[@name='abstract']/doc:element/doc:field[@name='value']">
				<dc:description.abstract><xsl:value-of select="." /></dc:description.abstract>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element[@name='note']/doc:element/doc:field[@name='value']">
				<dc:description.note><xsl:value-of select="." /></dc:description.note>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element[@name='release']/doc:element/doc:field[@name='value']">
				<dc:description.release><xsl:value-of select="." /></dc:description.release>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='publisher']/doc:element/doc:field[@name='value']">
				<dc:publisher><xsl:value-of select="." /></dc:publisher>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='publisher']/doc:element[@name='country']/doc:element/doc:field[@name='value']">
				<dc:publisher.country><xsl:value-of select="." /></dc:publisher.country>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='contributor']/doc:element[@name!='author']/doc:element/doc:field[@name='value']">
				<dc:contributor><xsl:value-of select="." /></dc:contributor>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='contributor']/doc:element[@name!='author']/doc:element[@name='role']/doc:field[@name='value']">
				<dc:contributor.role><xsl:value-of select="." /></dc:contributor.role>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element[@name='issued']/doc:element/doc:field[@name='value']">
				<dc:date><xsl:value-of select="substring(.,0,11)" /></dc:date>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='type']/doc:element/doc:field[@name='value']">
				<dc:type><xsl:value-of select="." /></dc:type>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='format']/doc:element/doc:field[@name='value']">
				<dc:format><xsl:value-of select="." /></dc:format>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='format']/doc:element/doc:element/doc:field[@name='value']">
				<dc:format><xsl:value-of select="." /></dc:format>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']">
				<dc:identifier><xsl:value-of select="." /></dc:identifier>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='language']/doc:element/doc:field[@name='value']">
				<dc:language><xsl:value-of select="." /></dc:language>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='language']/doc:element/doc:element/doc:field[@name='value']">
				<dc:language><xsl:value-of select="." /></dc:language>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element/doc:field[@name='value']">
				<dc:coverage><xsl:value-of select="." /></dc:coverage>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element/doc:element/doc:field[@name='value']">
				<dc:coverage><xsl:value-of select="." /></dc:coverage>
			</xsl:for-each>

			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='rights']/doc:element/doc:element/doc:field[@name='value']">
				<dc:rights><xsl:value-of select="." /></dc:rights>
			</xsl:for-each>
			<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='rights']/doc:element/doc:field[@name='value']">
				<dc:rights><xsl:value-of select="." /></dc:rights>
			</xsl:for-each>

			<xsl:if test="doc:metadata/doc:element[@name='thesis']">
			<degree>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='name']/doc:element/doc:field[@name='value']">
					<name><xsl:value-of select="." /></name>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='name']/doc:element/doc:element/doc:field[@name='value']">
					<name><xsl:value-of select="." /></name>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='level']/doc:element/doc:field[@name='value']">
					<level><xsl:value-of select="." /></level>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='level']/doc:element/doc:element/doc:field[@name='value']">
					<level><xsl:value-of select="." /></level>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='discipline']/doc:element/doc:field[@name='value']">
					<discipline><xsl:value-of select="." /></discipline>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='discipline']/doc:element/doc:element/doc:field[@name='value']">
					<discipline><xsl:value-of select="." /></discipline>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='grantor']/doc:element/doc:field[@name='value']">
					<grantor><xsl:value-of select="." /></grantor>
				</xsl:for-each>
				<xsl:for-each select="doc:metadata/doc:element[@name='thesis']/doc:element[@name='degree']/doc:element[@name='grantor']/doc:element/doc:element/doc:field[@name='value']">
					<grantor><xsl:value-of select="." /></grantor>
				</xsl:for-each>
			</degree>
			</xsl:if>
		</thesis>
	</xsl:template>
</xsl:stylesheet>
