<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="es">
      <head>
        <title>Mapa del Sitio</title>
      </head>
      <body>
        <h2>Mapa del Sitio</h2>
        <table>
          <tr>
            <th>Ruta de la Página</th>
          </tr>
          <xsl:for-each select="//*[local-name()='url']">
            <tr>
              <td>
                <a href="{*[local-name()='loc']}">
                  <xsl:value-of select="*[local-name()='loc']"/>
                </a>
              </td>
              <td><xsl:value-of select="*[local-name()='lastmod']"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>