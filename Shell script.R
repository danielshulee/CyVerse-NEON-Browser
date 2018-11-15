# This is a super informal script with bad notation just for me. It is for installing and running this app from a clean shell

# Basic update
RUN sudo apt-get update && sudo apt-get -y dist-upgrade
# Download latest R
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' \
sudo apt update \
sudo apt install r-base
# Install shiny server
RUN sudo su - \
-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""
RUN sudo apt-get install gdebi-core \
wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.9.923-amd64.deb \
sudo gdebi shiny-server-1.5.9.923-amd64.deb
# Install packages and their dependencies
RUN sudo apt-get install -y git \
libproj-dev \
libgdal-dev \
libudunits2-dev \
libssl-dev \
libgit2-dev
RUN sudo su - \
-c "R -e \"install.packages(c('leaflet','leaflet.extras','neonUtilities','shinythemes','shinyWidgets','shinyBS','shinyjs','sf','geosphere','jsonlite', 'dplyr', 'DT'))\""
# Get app onto shiny server, modify config file to change user
RUN sudo rm -rf /srv/shiny-server/*
cd /srv/shiny-server/ \
sudo git clone https://github.com/Danielslee51/NEON-Hosted-Browser.git
RUN sudo nano /etc/shiny-server/shiny-server.conf