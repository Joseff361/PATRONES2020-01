<?xml version="1.0" encoding="windows-1252"?>

<!--
    Document   : tuberia02.xsl
    Created on : June 10, 2020, 12:32 AM
    Author     : Usuario
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Mi segunda tubería</title>
                <style type="text/css">
                    body {
                    color: purple;
                    background-color: #d8da3d;
                    text-align: center;
                    font-size: 1.5rem;
                    }
                    table,th, td {
                    align-text: text-center ;
                    border: 1px solid black;
                    }
                </style>
            </head>
            <body>               
                <table>
                    <thead>
                        <tr>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD</th>
                            <th>PRECIO</th>
                            <th>DESCRIPCION</th>
                            <th>MONTO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="content/producto">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="cantidad"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td><xsl:value-of select="descripcion"/></td>
                                <td><xsl:value-of select="monto"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
            
        </html>
    </xsl:template>

</xsl:stylesheet>
