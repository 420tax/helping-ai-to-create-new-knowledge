<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
    <head>
      <title>Sitemap — Helping AI to Create New Knowledge</title>
      <style>
        body { font-family: system-ui, sans-serif; max-width: 800px; margin: 2em auto; color: #222; }
        h2 { color: #0F4761; }
        a { color: #0645AD; text-decoration: none; }
        a:hover { text-decoration: underline; }
      </style>
    </head>
    <body>
      <h2>Sitemap for Helping AI to Create New Knowledge</h2>
      <p>This file lists the canonical URLs for crawlers and humans alike:</p>
      <ul>
        <xsl:for-each select="urlset/url">
          <li>
            <a href="{loc}">
              <xsl:value-of select="loc"/>
            </a>
            <xsl:text> — last modified </xsl:text>
            <xsl:value-of select="lastmod"/>
          </li>
        </xsl:for-each>
      </ul>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
