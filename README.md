# ETDMS & DSpace


ETDMS 1.1 support for DSpace 5.x


## Dissemination Crosswalk (oai module)

Add the XSLT at the following location in the source directory

    dspace/config/crosswalks/oai/metadataFormats/etdms11.xsl

Then register it in the configuration file:

    dspace/config/crosswalks/oai/xoai.xml

add this line under `<Context baseurl="request" name="Default Context">`

    <Format ref="etdms11"/>

add theses lines under `<Formats>`

    <Format id="etdms11">
        <Prefix>etdms11</Prefix>
        <XSLT>metadataFormats/etdms11.xsl</XSLT>
        <Namespace>http://www.ndltd.org/standards/metadata/etdms/1.1/</Namespace>
        <SchemaLocation>http://www.ndltd.org/standards/metadata/etdms/1-1/etdms11.xsd</SchemaLocation>
    </Format>

## Ingestion crosswalk

add the XSLT at the following location in the source directory

    dspace/config/crosswalks/etdms11-submission.xsl

then register it in the configuration file:

    dspace/config/modules/oai.cfg

add this line in the section with similar entries

    harvester.oai.metadataformats.etdms11 = http://www.ndltd.org/standards/metadata/etdms/1.1/, ETD-MS 1.1 Metadata (etdms11)
