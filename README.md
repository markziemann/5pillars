# 5pillars

This repo contains the manuscript entitled *Five pillars of computational reproducibility*.
This is an effort to solidify some previously proposed best-practices into a simple infographic.
It highlights the importance of these five concepts to reproducibility:

* Code version control and persistent sharing.

* Compute environment control.

* Literate programming.

* Documentation.

* FAIR & persistent data sharing.

A live version of the manuscript is available at the Ziemann lab website [here](https://ziemann-lab.net/public/5pillars/5pillars2.html).

## Recipe

This is an executable manuscript, follow the recipe to reproduce it on your system.

**REQUIREMENTS:** Ubuntu 22 (or similar Unix system) with 1 CPU thread and 4GB RAM.
Docker must be installed.
To install it on Ubuntu, run the following in a terminal:

```

sudo apt update && sudo apt install docker.io #skip this if you have docker already installed

```

To generate the manuscript run the following in a terminal.
It will take ~5 minutes.

```

sudo docker pull rocker/rstudio:4.3

sudo docker run -it rocker/rstudio:4.3 bash -c "wget https://raw.githubusercontent.com/markziemann/5pillars/main/main.sh ; bash main.sh"

```

If the process completed, the HTML document can be copied from the container to the host and visualised
with firefox or your favourite web browser.

```

sudo docker cp $(docker ps -aql):/5pillars/manuscript/5pillars.html .

firefox 5pillars.html

```

## How to contribute

Raise an issue on GitHub to report problems with the article or give your suggestions.

## Funding

No external funding was required.

