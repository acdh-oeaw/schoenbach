<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="tei xsl xs">
    <xsl:output encoding="UTF-8" media-type="text/html" method="xhtml" version="1.0" indent="yes" omit-xml-declaration="yes"/>
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="./partials/html_footer.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select=".//tei:titleStmt/tei:title[@level='a'][1]/text()"/>
        </xsl:variable>

        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="html_head">
                <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
            </xsl:call-template>
            
           <body class="page">
                <div class="hfeed site" id="page">
                    <xsl:call-template name="nav_bar"/>
                  <div class="wrapper" id="wrapper-hero">
                      <div class="jumbotron" style="background-image: url(https://shared.acdh.oeaw.ac.at/schoenbach/ACDH-CH_Campus.jpg); background-size: 100%;">
                      <div class="carousel-caption" style="background-image: linear-gradient(rgba(38.0, 35.3, 37.6, 0.5), rgba(38.0, 35.3, 37.6, 0.5));position: static;">
                           <h1>Anton Emanuel Schönbach</h1>
                                                <h2>Fünf Briefe aus seinem Nachlass</h2>
                                                
                                                
                            </div>
                        </div>                       
                    </div>
                    <div class="container" style="margin-top:1em;">
                        <div class="row">
                            <div class="col-md-8" style="margin: 0 auto; ">
                            <p style="font-size:18px;line-heigth:27px;">Im Archiv der Österreichischen Akademie der Wissenschaften wird ein Splitternachlass 
                                                des Germanisten Anton Emanuel Schönbach (1848–1911) aufbewahrt. Daraus veröffentlichen 
                                                wir vier Briefe von Ferdinand von Saar an ihn, sowie ein Kondolenzschreiben von Marie von
                                                Ebner-Eschenbach an seine Witwe.</p>
                                <p style="font-size:18px;line-heigth:27px;">Folgende Briefe wurden ediert:</p>
                                    
                                 <ul>
                                     <li><a href="schoenbach004.html">Ferdinand von Saar an Anton Emanuel Schönbach, 3. 1. 1888</a></li>
                                     <li><a href="schoenbach002.html">Ferdinand von Saar an Anton Emanuel Schönbach, 30. 10. 1888</a></li>
                                     <li><a href="schoenbach001.html">Ferdinand von Saar an Anton Emanuel Schönbach, 3. 12. 1898</a></li>
                                     <li><a href="schoenbach003.html">Ferdinand von Saar an Anton Emanuel Schönbach, 20. 10. 1905</a></li>
                                     <li><a href="schoenbach005.html">Marie von Ebner-Eschenbach an Anna Schönbach, 1. 9. 1911</a></li>	
                                 </ul>
                                
                                <p>Weitere Informationen zum Splitternachlass Schönbachs findet sich <a href="verzeichnis.html">hier</a>.</p>
                                
                            </div>                          
                        </div>
                    </div>
                    <div class="container" style="margin-top:1em;">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="listperson.html" class="index-link">                                   
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img src="https://shared.acdh.oeaw.ac.at/schoenbach/personen.jpg" class="d-block w-100" alt="..."/>
                                        </div>
                                        <div class="card-header">                                            
                                            <h3>Personen</h3>                                            
                                        </div>
                                    </div>                                     
                                </a>                                    
                            </div>
                            <div class="col-md-4">
                                <a href="listwork.html" class="index-link">                                   
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img src="https://shared.acdh.oeaw.ac.at/schoenbach/werke.jpg" class="d-block w-100" alt="..."/>
                                        </div>
                                        <div class="card-header">                                            
                                            <h3>Werke</h3>                                            
                                        </div>
                                    </div>                                     
                                </a>                                    
                            </div>
                            <div class="col-md-4">
                                <a href="listplace.html" class="index-link">                                   
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img src="https://shared.acdh.oeaw.ac.at/schoenbach/orte.jpg" class="d-block w-100" alt="..."/>
                                        </div>
                                        <div class="card-header">                                            
                                            <h3>Orte</h3>                                            
                                        </div>
                                    </div>                                     
                                </a>                                    
                            </div>
                            <div class="col-md-4">
                                <a href="listorg.html" class="index-link">                                   
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img src="https://shared.acdh.oeaw.ac.at/schoenbach/verlage.jpg" class="d-block w-100" alt="..."/>
                                        </div>
                                        <div class="card-header">                                            
                                            <h3>Verlag</h3>                                            
                                        </div>
                                    </div>                                     
                                </a>                                    
                            </div>
                        </div>
                    </div>
                    <xsl:call-template name="html_footer"/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tei:div//tei:head">
        <h2 id="{generate-id()}"><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p id="{generate-id()}"><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:list">
        <ul id="{generate-id()}"><xsl:apply-templates/></ul>
    </xsl:template>
    
    <xsl:template match="tei:item">
        <li id="{generate-id()}"><xsl:apply-templates/></li>
    </xsl:template>
    <xsl:template match="tei:ref">
        <xsl:choose>
            <xsl:when test="starts-with(data(@target), 'http')">
                <a>
                    <xsl:attribute name="href"><xsl:value-of select="@target"/></xsl:attribute>
                    <xsl:value-of select="."/>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>