FROM rocker/rstudio:3.4.3

MAINTAINER Rion Dooley <deardooley@gmail.com>

USER root

# Install Agave Platform SDKs
RUN apt-get update && \
    apt-get install -y libssh2-1-dev zlib1g-dev libxml2-dev && \
    Rscript -e 'if(!require(devtools)) { install.packages("devtools") }' \
            -e 'if(!require(xml2)) { install.packages("xml2") }' \
            -e 'if(!require(plyr)) { install.packages("plyr") }' \
            -e 'if(!require(oxygen2)) { install.packages("roxygen2") }'

# Add Agave Python SDK
RUN apt-get install -y jq python-pip && \
    pip install agavepy

COPY R /home/rstudio/src/rAgave/R
COPY man /home/rstudio/src/rAgave/man
COPY NAMESPACE /home/rstudio/src/rAgave/NAMESPACE
COPY README.md /home/rstudio/src/rAgave/README.md
COPY LICENSE /home/rstudio/src/rAgave/LICENSE
COPY DESCRIPTION /home/rstudio/src/rAgave/DESCRIPTION

# Add Agave R SDK
RUN Rscript -e 'devtools::install("/home/rstudio/src/rAgave")' \
            -e 'devtools::document("/home/rstudio/src/rAgave")' \
            -e 'devtools::install("/home/rstudio/src/rAgave")' && \
    echo '\n\
\n# Add devtools and rAgave SDK to the default environment \
\nlibrary(devtools) \
\nlibrary(rAgave) \
\nlibrary(plyr) \
\n' >> /usr/local/lib/R/etc/Rprofile.site

# Add Agave CLI
RUN git clone --depth=1 -b develop https://github.com/agaveplatform/agave-cli.git /home/rstudio/src/cli && \
    echo 'export PATH=$PATH:/home/rstudio/src/cli/bin' >> /home/rstudio/.bashrc && \
    echo 'export AGAVE_JSON_PARSER=jq' >> /home/rstudio/.bashrc

# Add example notebooks, data, etc
ADD examples /home/rstudio/examples

RUN chown -R rstudio /home/rstudio

LABEL org.agaveplatform.devops.architecture="x86_64"                                \
      org.agaveplatform.devops.build-date="$BUILD_DATE"                             \
      org.agaveplatform.devops.license="BSD 3-clause"                               \
      org.agaveplatform.devops.name="agaveplatform/rstudio"                         \
      org.agaveplatform.devops.summary="RStudio datascience server with Agave CLI, Python & R SDK" \
      org.agaveplatform.devops.version="$VERSION"                                   \
      org.agaveplatform.devops.vcs-type="git"                                       \
      org.agaveplatform.devops.vcs-url="https://github.com/agaveplatform/rstudio"   \
      org.agaveplatform.devops.rstudio.version="3.4.3"                              \
      org.agaveplatform.devops.environment="training"                               \
      org.agaveplatform.training="rstudio"
