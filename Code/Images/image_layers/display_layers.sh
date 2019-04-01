#!/bin/bash

dockerdir=/var/lib/docker
storagedriver=overlay2
dockersvc=${1}
dockername=${2}

upperdir=$(docker ${dockersvc} inspect --format '{{.GraphDriver.Data.UpperDir}}' ${dockername} | head -n 1 | sed -e 's/-init.*//g; s/\/diff.*//')

if [[ ${?} -ne 0 ]]; then
  exit
fi

function calcDependencies() {
  dirlevel=${1}
  echo "${dirlevel}: ${2}"
  dirtoinspect="${2}"
  dircat=$(cat ${dirtoinspect}/lower)
  IFS=':'; read -ra arraydirs <<< "${dircat}"
  lower="${dockerdir}/${storagedriver}/"$(readlink "${dockerdir}/${storagedriver}/${arraydirs[0]}" | sed 's/^\.\.\///; s/\/diff.*//g')
  let dirlevel=${dirlevel}+1
  if [[ -f "${lower}/lower" ]]; then
    calcDependencies ${dirlevel} ${lower}
  else
    lower="${dockerdir}/${storagedriver}/"$(readlink "${dockerdir}/${storagedriver}/${arraydirs[0]}" | sed 's/^\.\.\///; s/\/diff.*//g')
    echo "${dirlevel}: ${lower}"
  fi
}

dirlevel=0
calcDependencies ${dirlevel} ${upperdir}
