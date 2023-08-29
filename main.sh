#!/bin/bash
docker run -it bioconductor/bioconductor:RELEASE_3_17 bash -c "wget --no-check-certificate --no-cache --no-cookies https://raw.githubusercontent.com/markziemann/5pillars/main/main.sh ; bash main.sh"
docker cp $(docker ps -aql):/5pillars/manuscript/5pillars.html . \
  && echo Build successful \
  || echo Error Build Failed
[[ $(hostname) == "ziemann-01" ]] && cp 5pillars.html ~/public/5pillars/
