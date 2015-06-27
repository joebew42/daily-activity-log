<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Daily Activity Log</title>
        <link href="http://fonts.googleapis.com/css?family=Fauna+One" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="events.css" />
      </head>
      <body>
        <a target="_blank" href="https://github.com/joebew42/daily-activity-log"><img style="position: fixed; top: 0; right: 0; border: 0; z-index: 999" src="https://camo.githubusercontent.com/a6677b08c955af8400f44c6298f40e7d19cc5b2d/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677261795f3664366436642e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" /></a>
        <div class="header fixed at-top">What's happening ...</div>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="events">
    <ul class="with-top-margin">
      <xsl:apply-templates select="event"/>
    </ul>
  </xsl:template>

  <xsl:template match="event">
    <li class="event">
      <xsl:apply-templates select="action"/>
      <br/>
      <small>
        <xsl:value-of select="@date"/>
        <xsl:apply-templates select="references"/>
      </small>
    </li>
  </xsl:template>

  <xsl:template match="action">
    <span class="action-type"><xsl:value-of select="@type"/></span>
    <span class="event-title"><xsl:value-of select="."/></span>
  </xsl:template>

  <xsl:template match="references">
    <span class="references">
      (<xsl:apply-templates select="reference"/>)
    </span>
  </xsl:template>

  <xsl:template match="reference">
      <a target="_blank">
        <xsl:attribute name="href">
          <xsl:value-of select="@src"/>
        </xsl:attribute>
        <xsl:value-of select="@type"/>
    </a>
    <xsl:if test="position() != last()">, </xsl:if>
  </xsl:template>

</xsl:stylesheet>
