FROM skranz/rskranz:latest

# based on skranz/shinyrstudio
# so we already have
# rstudio + shiny + hadleyverse R packages
# rskranz installs several additional packages

MAINTAINER Sebastian Kranz "sebastian.kranz@uni-ulm.de"

# copy and run package installation file
COPY install.r /tmp/install.r
RUN Rscript /tmp/install.r

# Use manual shiny-server configuration
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf
RUN chmod 644 /etc/shiny-server/shiny-server.conf
