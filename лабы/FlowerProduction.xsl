<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <div style="padding-left: 30px;padding-top: 20px;font-family: 'Arial Black', sans-serif;font-size: medium;font-style: inherit">
                    <table border="1" cellspacing="1" cellpadding="10">
                        <tr>
                            <th>Date</th>
                            <th>Id flowers</th>
                            <th>Price</th>
                            <th>Seller</th>
                        </tr>
                        <xsl:for-each select="flower_class_list/flower_production/sale">
                            <tr>
                                <td>
                                    <xsl:value-of select="date"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@flower_id"/>
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