# ETDMS & DSpace

[Library and Archives Canada](http://www.bac-lac.gc.ca/)

Reference implementation of ETDMS 1.1 support for DSpace 5.x

## Installation

### Dissemination Crosswalk (oai module)

For your repository to be harvested properly, this schema will add an etdms 1.1 output to your OAI module.

#### 1. Add the XSLT file

Copy `etdms11.xsl` at the following location in the source directory

    dspace/config/crosswalks/oai/metadataFormats/etdms11.xsl

#### 2. Register the new format

In the configuration file: `dspace/config/crosswalks/oai/xoai.xml`

add this line under `<Context baseurl="request" name="Default Context">`

    <Format ref="etdms11"/>

and add theses lines under `<Formats>`

    <Format id="etdms11">
        <Prefix>etdms11</Prefix>
        <XSLT>metadataFormats/etdms11.xsl</XSLT>
        <Namespace>http://www.ndltd.org/standards/metadata/etdms/1.1/</Namespace>
        <SchemaLocation>http://www.ndltd.org/standards/metadata/etdms/1-1/etdms11.xsd</SchemaLocation>
    </Format>


### Ingestion crosswalk

To harvest a valid ETDMS 1.1 repository, you will require this configuration so dspace can read it properly.

#### 1. Add the XSLT file

Copy the file at the following location in the source directory

    dspace/config/crosswalks/etdms11-submission.xsl

#### 2. Register the new format

In the configuration file: `dspace/config/modules/oai.cfg`

add this line in the section with similar entries

    harvester.oai.metadataformats.etdms11 = http://www.ndltd.org/standards/metadata/etdms/1.1/, ETD-MS 1.1 Metadata (etdms11)
