<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>asigment 1</title>
                <link rel="stylesheet" href="style1.css" />
            </head>
            <body>
                <nav>
                    <a href="index.html">HOME</a>
                    <a href="hobby.html">HOBBY</a>
                    <a href="contact.html">CONTACT</a>
                    <a href="https://joshua-gaspar.github.io/quiz-app/">QUIZ APP</a>
                    <a href="https://joshua-gaspar.github.io/Adobe_Animate/">ADOBE ANIMATE</a>
                    <a class="active" href="./textbook.html">Textbooks</a>
                </nav>
                <section>
                    <div class="text-box">
                        <a href="./textbooks.xml">Link for XML file</a>
                        <br />
                        <a href="./textbook.xsd">Link for XSD file</a>
                        <br />
                        <a href="./textbook.xsl">Link for XSL file</a>
                    </div>
                    <h1>My Textbook</h1>
                    <table border="1">
                        <tr>
                            <th>Title</th>
                            <th>Author First name</th>
                            <th>Author Last name</th>
                            <th>Publisher name</th>
                            <th>Publisher website</th>
                            <th>Year of Publication</th>
                            <th>ISBN</th>
                            <th>book website</th>
                            <th>edition</th>
                            <th style="text-align:left; color:#ffffff">cover type</th>
                        </tr>
                        <xsl:for-each select="textbooks/textbook">
                            <tr>
                                <td>
                                    <xsl:value-of select="title"/>
                                </td>
                                <td>
                                    <xsl:value-of select="authors/author/firstName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="authors/author/lastName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="publisher/name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="publisher/website"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Year-of-Publication"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ISBN"/>
                                </td>
                                <td>
                                    <xsl:value-of select="book-specific-website"/>
                                </td>
                                <td>
                                    <xsl:value-of select="edition"/>
                                </td>
                                <td>
                                    <xsl:value-of select="cover-type"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>