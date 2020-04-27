FROM rocker/tidyverse:3.4.4

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN R -e "install.packages(c( \
          'foreach', \
          'doParallel', \
          'DT', \
          'ISOweek', \
          'plotly', \
          'R.utils', \
          'RODBC', \
          'TTR', \
          'geosphere', \
          'gdata', \
          'binhf' \
          ))"
