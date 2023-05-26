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

In order to reproduce the manuscript, run the following in a terminal on Ubuntu 22.

The process takes just 3-4 minutes and has minimal computational requirements (1 CPU thread, 4GB RAM).

```
sudo apt update && sudo apt install docker.io #skip this if you have docker already installed

sudo docker pull rocker/rstudio:4.3

sudo docker run -it rocker/rstudio:4.3 bash -c "wget https://raw.githubusercontent.com/markziemann/5pillars/main/main.sh ; bash main.sh"

```

If the process completed, the HTML document can be copied from the container to the host and visualised
with firefox or your favourite web browser.

```

docker cp $(docker ps -aql):/5pillars/manuscript/5pillars.html .

firefox 5pillars.html

```

