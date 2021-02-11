FROM rocker/tidyverse:4.0.3

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install -yq apt-utils libapparmor-dev libpoppler-cpp-dev && \
    R -e "install.packages(c( \
          'foreach', \
          'doParallel', \
          'DT', \
          'ISOweek', \
          'openxlsx', \
          'plotly', \
          'R.utils', \
          'RODBC', \
          'TTR', \
          'geosphere', \
          'gdata', \
          'binhf', \
          'readtext', \
          'shiny' \
          ))"
