<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
        xmlns:etd="http://www.ndltd.org/standards/metadata/etdms/1.1/"
        version="1.0">

    <xsl:template match="/">
        <dim:dim>
            <xsl:apply-templates select="*[local-name()='thesis']/*"/>
        </dim:dim>
    </xsl:template>

    <xsl:template match="*[local-name()='title']">
        <dim:field mdschema="dc" element="title">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='creator']">
        <dim:field mdschema="dc" element="contributor" qualifier="author">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='subject']">
        <dim:field mdschema="dc" element="subject">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='description']">
        <dim:field mdschema="dc" element="description" qualifier="abstract">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='date']">
        <dim:field mdschema="dc" element="date" qualifier="issued">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='type']">
        <dim:field mdschema="dc" element="type">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='identifier']">
        <dim:field mdschema="dc" element="identifier" qualifier="uri">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='language']">
        <dim:field mdschema="dc" element="language">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='relation']">
        <dim:field mdschema="dc" element="relation">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='rights']">
        <dim:field mdschema="dc" element="rights">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='format']">
        <dim:field mdschema="dc" element="format">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='coverage']">
        <dim:field mdschema="dc" element="coverage">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='publisher']">
        <dim:field mdschema="dc" element="publisher">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='source']">
        <dim:field mdschema="dc" element="source">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='degree']/*[local-name()='name']">
        <dim:field mdschema="thesis" element="degree" qualifier="name">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='degree']/*[local-name()='level']">
        <dim:field mdschema="thesis" element="degree" qualifier="level">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='degree']/*[local-name()='discipline']">
        <dim:field mdschema="thesis" element="degree" qualifier="discipline">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="*[local-name()='degree']/*[local-name()='grantor']">
        <dim:field mdschema="thesis" element="degree" qualifier="grantor">
            <xsl:value-of select="normalize-space(.)"/>
        </dim:field>
    </xsl:template>

    <xsl:template match="text()">

    </xsl:template>


</xsl:stylesheet>
