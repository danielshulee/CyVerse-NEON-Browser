# CyVerse NEON Browser

A multifunctional R Shiny tool hosted by [CyVerse](https://cyverse.org) and designed to make NEON data accessible, visible, and easy to interact with.

## Overview

The CyVerse NEON Browser is an interactive tool to browse, pull, and manipulate data collected by [NEON](https://www.neonscience.org/). This R Shiny app uses [leaflet](https://leafletjs.com/), [neonUtilities](https://github.com/NEONScience/NEON-utilities/tree/master/neonUtilities), and [nneo](https://github.com/ropensci/nneo) (community compiled packages) to create a comprehensive tool that allows users to do everything from browsing NEON sites, to finding and downloading data products.

### Features

First, this app displays relevant features of NEON and their operations on a map. Users can view and filter map features such as NEON [Field Sites](https://www.neonscience.org/field-sites), NEON domains, [AOP](https://www.neonscience.org/data-collection/airborne-remote-sensing) flight boxes, and sublocations within field sites (plots, grids, sensors).

<**image/gif**>

Additionally, this app provides an easy, in-app alternative to NEON's [data portal](http://data.neonscience.org/browse-data). Users can browse data products, view their details (e.g. description, abstract, availability), and easily download them to their CyVerse account.

<img src = "Img/data_browse.gif" width = "420"/> <img src = "Img/data_download:unzip.gif" width = "420" align = "right"/>

### NEON

The National Ecological Observatory Network <a href="https://www.neonscience.org/"><img src = "Img/NEON.png" width=30/></a> is a "continental-scale ecological observation facility" that provides open data on our ecosystems. The envisioned 30-year project collects environmental data like precipitation, soil temperature, humidity, and pressure across 81 field sites (47 terrestrial and 34 aquatic) to measure the patterns and changes in our environment. With over 180 data products describing the characteristics of a diverse range of ecosystems, their data will be crucial to future studies of biology and climate change over time.

## Use

The CyVerse NEON Browser is officially recognized a NEON community-contributed app and hosted by CyVerse using VICE (Visual Interactive Computing Environment) technology. This means that everybody with a CyVerse account can access this app in the [discovery environment](https://www.cyverse.org/discovery-environment). Visit the app **<here>**. The reason that only CyVerse users can access the app on the web spawns from limitations with [R Shiny](https://shiny.rstudio.com/)'s framework; we intended to host the app through a public server, but quickly found that one user downloading locked everyone else out.

However, those without CyVerse accounts *can* host the app on their own computer using [R](https://www.r-project.org/) and [R Shiny](https://shiny.rstudio.com/). Learn how [here](https://github.com/Danielslee51/NEON-Shiny-Browser).

## FEEDBACK
This is a message from the main developer of this app, [Daniel Lee](https://github.com/Danielslee51). I am an intern at [CyVerse](http://www.cyverse.org/). I don't personally know much about NEON data, sensors, or AOP tiles. Due to this, when displaying NEON data I put relevant attributes to the best of my ability, but sometimes I do not know what is actually useful to a scientist. For example, on the popups for the NEON field sites I included their site types and habitats, but maybe what really matters is the elevation (I have no clue). If anyone notices anything like this on any feature, please email me at dantheman6100@gmail.com.

And of course, any other feedback or suggestions would be nice. I'd love to hear reactions from anyone who would potentially use the app in the future, as ultimately the app is here to help scientists who want to use it.
