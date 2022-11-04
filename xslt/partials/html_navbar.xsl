<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xsl tei xs" version="2.0">
    <xsl:template match="/" name="nav_bar">
        <div class="wrapper-fluid wrapper-navbar sticky-navbar" id="wrapper-navbar" >
            <a class="skip-link screen-reader-text sr-only" href="#content">Zum Inhalt</a>
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container" >
                    <!-- Your site title as branding in the menu -->
                    <a href="index.html" class="navbar-brand custom-logo-link" rel="home" itemprop="url"><img src="{$project_logo}" class="img-fluid" title="{$project_short_title}" alt="{$project_short_title}" itemprop="logo" /></a><!-- end custom logo -->
                    <!--<a class="navbar-brand site-title-with-logo" rel="home" href="index.html" itemprop="url">Schönbach-Briefe</a>-->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <!-- Your menu goes here -->
                        <ul id="main-menu" class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a title="Papers" href="#" data-toggle="dropdown" class="nav-link dropdown-toggle">Projekt <span class="caret"></span></a>
                                <ul class=" dropdown-menu" role="menu">
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Schönbach" href="about.html" class="nav-link">Über das Projekt</a>
                                    </li>
                                    <li>
                                        <a title="Bericht" href="verzeichnis.html" class="nav-link">Verzeichnis</a>
                                    </li>
                                    <li>
                                        <a title="SplitternachlassSchoenbach" href="nachlass.html" class="nav-link">Archivalische Beschreibung</a>
                                    </li>
                                    
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Team" href="team.html" class="nav-link">Team</a>
                                    </li>
                                    <div class="dropdown-divider"></div>
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Wikipedia" href="https://de.wikipedia.org/wiki/Anton_Emanuel_Sch%C3%B6nbach" class="nav-link" target="_blank">Schönbach (Wikipedia)</a>
                                    </li>
                                </ul>                                
                            </li>
                            <li class="nav-item dropdown">
                                <a title="Indexes" href="#" data-toggle="dropdown" class="nav-link dropdown-toggle">Register <span class="caret"></span></a>
                                <ul class=" dropdown-menu" role="menu">
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Werke" href="listperson.html" class="nav-link">Personen</a>
                                    </li>
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Werke" href="listwork.html" class="nav-link">Werke</a>
                                    </li>
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Institutionen" href="listorg.html" class="nav-link">Verlage</a>
                                    </li>
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Orte" href="listplace.html" class="nav-link">Orte</a>
                                    </li>
                                </ul>                                
                            </li>                            
                            <li class="nav-item"><a title="Editionseinheiten" href="toc.html" class="nav-link">Briefe</a></li>
                        </ul>                        
                        <form class="form-inline my-2 my-lg-0 navbar-search-form" method="get" action="search.html" role="search">
                            <input class="form-control navbar-search" id="s" name="q" type="text" placeholder="Suche" value="" autocomplete="off" />
                            <button type="submit" class="navbar-search-icon">
                                <i data-feather="search"></i>
                            </button>
                        </form>
                    </div>
                    <!-- .collapse navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
            <!-- .site-navigation -->
        </div>
    </xsl:template>
</xsl:stylesheet>