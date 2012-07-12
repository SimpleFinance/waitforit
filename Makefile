NAME=waitforit
VERSION=$(shell bin/waitforit -v | cut -d' ' -f 2)
DESCRIPTION="Wait until a service responds to healthchecks or the timeout elapses"
VENDOR="Simple Finance"
MAINTAINER="<cosmin@offbytwo.com>"
URL="https://github.com/SimpleFinance/waitforit"
LICENSE="Apache-2.0"
PREFIX=/usr/local

BUILDCMD=-n ${NAME} -s dir -v ${VERSION} --url=${URL} --description=${DESCRIPTION} -m ${MAINTAINER} --vendor=${VENDOR} --license=${LICENSE} --prefix=${PREFIX} -a all -e bin

clean:
	rm -f *.deb
	rm -f *.rpm

deb:
	fpm -t deb ${BUILDCMD}

rpm:
	fpm -t rpm ${BUILDCMD}
