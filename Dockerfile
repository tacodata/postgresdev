FROM tacodata/pythondev

MAINTAINER Greg Fausak <greg@tacodata.com>

# a simple postgres instance

RUN apt-get update
RUN apt-get install -y wget ca-certificates

# postgres PGP key
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# postgres current repo
RUN /bin/echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4

CMD [ '/bin/bash' ]

