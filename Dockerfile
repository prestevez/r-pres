FROM rocker/geospatial
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

RUN install2.r --error \
    arm \
    arsenal \
    bbmle \
    broom.mixed \
    car \
    coin \
    dgof \
    gganimate \
    #ggradar \
    ggridges \
    ggthemes \
    glmmTMB \
    Hmisc \
    ineq \
    KSgeneral \
    lme4 \
    lmtest \
    Matching \
    pscl \
    sandwich \
    survey \
    texreg \
    tseries \
    tsModel \
    R2admb
    ## from devtookls
    && R -e "devtools::install_github('prestevez/victim')" \
    && R -e "devtools::install_github('prestevez/crimeineq')" \
    && R -e "install.packages('glmmADMB', repos=c('http://glmmadmb.r-forge.r-project.org/repos', getOption('repos')), type='source'))"
