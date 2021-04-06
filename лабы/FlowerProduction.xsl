<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <body style="padding-left:30px;padding-top: 20px;font-family: 'Arial', sans-serif;font-size: medium;">
                <h1>Statistics:</h1>
                <div>
                    <xsl:text>
                        Full sale price:
                    </xsl:text>
                    <xsl:value-of select="sum(/flower_class_list/flower_production/sale/sale_price)"/>
                    <br/>
                    <xsl:text>
                        Count of sales:
                    </xsl:text>
                    <xsl:value-of select="count(//flower_production/sale)"/>
                    <br/>
                </div>
                <h1>Information:</h1>
                <div style="padding-top: 10px;">
                    <table border="1" cellspacing="1" cellpadding="10">
                        <tr>
                            <th>Date</th>
                            <th>Flowers</th>
                            <th>Price</th>
                            <th>Seller</th>
                        </tr>
                        <xsl:for-each select="flower_class_list/flower_production/sale">
                            <tr>
                                <td>
                                    <xsl:value-of select="date"/>
                                </td>
                                <td>
                                    <xsl:variable name="ID">
                                        <xsl:value-of select="@flower_id"/>
                                    </xsl:variable>
                                    <table>
                                        <tr>
                                            <xsl:for-each
                                                    select="/flower_class_list/classes/class[contains($ID,@flower_class_id)]">
                                                <td>
                                                    <xsl:value-of select="type"/>
                                                </td>
                                            </xsl:for-each>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <xsl:value-of select="sale_price"/>
                                </td>
                                <td>
                                    <xsl:value-of select="seller"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>