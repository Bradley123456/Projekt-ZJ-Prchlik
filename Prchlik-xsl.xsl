<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/settingsRust">
        [
        <xsl:for-each select="player">
            <xsl:sort select="character" order="ascending"/>
            {
            "Name": "<xsl:value-of select="character"/>",
            "Screen resolution": "<xsl:value-of select="screen"/>",
            "Display mode": "<xsl:choose>
                <xsl:when test="screen/@windowed='false'">Full screen</xsl:when>
                <xsl:otherwise>Windowed</xsl:otherwise>
            </xsl:choose>",
            "Graphic quality": "<xsl:value-of select="profile/@name"/>"
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]               
    </xsl:template>
</xsl:stylesheet>
