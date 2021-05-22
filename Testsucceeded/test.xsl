<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="ph[@product='ZStack'][text()='ZStack']
        [following-sibling::*[1][@product='Aliyun'][text()='ZStack for Alibaba Cloud']]
        [following-sibling::*[2][@product='OEM'][@conref='Internal_Reuse_Library_0001.dita#Internal_Reuse_Library_0001/ph_lyr_hnq_kjb']]">
        <keydef keyref='Product_Name_EN'/>
    </xsl:template>
    
    <xsl:template match="ph[@product='Aliyun'][text()='ZStack for Alibaba Cloud']">
        <!-- Just remove this -->
    </xsl:template>
    
    <xsl:template match="ph[@product='OEM'][@conref='Internal_Reuse_Library_0001.dita#Internal_Reuse_Library_0001/ph_lyr_hnq_kjb']">
        <!-- Just remove this -->
    </xsl:template>
</xsl:stylesheet>