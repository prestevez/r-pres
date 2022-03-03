FROM rocker/geospatial
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

RUN install2.r --error -s \
    arm \
    arsenal \
    bbmle \
    broom.mixed \
    car \
    coin \
    dgof \
    gganimate \
    pbapply \
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
    R2admb \
    Cairo \
    downloader \
    MCMCglmm \
    httr \
    jsonlite \
    pglm \
    microsynth \
    metafor \
    forecast \
    fable \
    feasts \
    future.apply \
    hexbin \
    cowplot \
    furrr \
    ggsn \
    WebPower \
    PASSED \
    MatchIt \
    randomizr \ 
    ## from devtools and r-forge
    && R -e "devtools::install_github('prestevez/victim')" \
    && R -e "devtools::install_github('prestevez/crimeineq')" \
    #&& R -e "devtools::install_github('glmmTMB/glmmTMB/glmmTMB', build_vignettes=FALSE)" \
    && R -e "install.packages('glmmADMB', repos=c('http://glmmadmb.r-forge.r-project.org/repos', getOption('repos')), type='source')" \
    && R -e "install.packages('countreg', repos='http://R-Forge.R-project.org')" \
    && R -e "devtools::install_github('leifeld/texreg')" 

RUN echo "Europe/London" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
