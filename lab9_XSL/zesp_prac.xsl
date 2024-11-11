<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1>Zespoły:</h1>

                <ol>
                    <xsl:apply-templates select="/ZESPOLY/ROW" mode="names"/>
                </ol>

                <div>
                    <xsl:apply-templates select="/ZESPOLY/ROW" mode="details"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ROW" mode="names">
        <li>
            <a href="#{ID_ZESP}">
            <xsl:value-of select="NAZWA"/>
            </a>
        </li>
    </xsl:template>

    <xsl:template match="ROW" mode="details">
        <h4 id="{ID_ZESP}">
                NAZWA: <xsl:value-of select="NAZWA"/>
            <br/>
            ADRES: <xsl:value-of select="ADRES"/>
        </h4>
        <xsl:choose>
        <xsl:when test="PRACOWNICY/ROW">
        <table border="1" border-style = "double">
            <tr>
                <th>Nazwisko</th>
                <th>Etat</th>
                <th>Data Zatrudnienia</th>
                <th>Płaca Podstawowa</th>
                <th>Szef</th>
            </tr>
            <xsl:apply-templates select="PRACOWNICY/ROW" mode="employee">
                <xsl:sort select="NAZWISKO"/>
            </xsl:apply-templates>
        </table>
        </xsl:when>
        </xsl:choose>
        <p>Liczba pracowników: <xsl:value-of select="count(PRACOWNICY/ROW)"/></p>
    </xsl:template>

    <xsl:template match="ROW" mode="employee">
        <tr>
            <td><xsl:value-of select="NAZWISKO"/></td>
            <td><xsl:value-of select="ETAT"/></td>
            <td><xsl:value-of select="ZATRUDNIONY"/></td>
            <td><xsl:value-of select="PLACA_POD"/></td>
            <td>
                <xsl:choose>
                    <xsl:when test="ID_SZEFA">
                        <xsl:value-of select="/ZESPOLY/ROW/PRACOWNICY/ROW[ID_PRAC=current()/ID_SZEFA]/NAZWISKO"/>
                    </xsl:when>
                    <xsl:otherwise>
                        brak
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
