# 5pillars

This repo contains the manuscript entitled *Five pillars of computational reproducibility*.
This is an effort to solidify some previously proposed best-practices into a simple infographic.
It highlights the importance of these five concepts to reproducibility:

* Code version control and persistent sharing.

* Compute environment control.

* Literate programming.

* Documentation.

* Persistent data sharing.

A live version of the manuscript is available at the Ziemann lab website [here](https://ziemann-lab.net/public/5pillars/5pillars.html).

## Contents

There are three folders:

* `manuscript`: the source document and bibliography.

* `img`: images.

* `LICENCE`: MIT Licence.

* `README.md`: This helpful document.

* `main.sh`: Master script. Execute this to reproduce the manuscript HTML. Requries Docker.

* `helper.sh`: This is a helper script required by the main.sh script.

## Recipe

This is an executable manuscript, follow the recipe to reproduce it on your system.

**REQUIREMENTS:** Ubuntu 22 (or similar Unix system) with 1 CPU thread and 4GB RAM.
Docker must be installed.
To install it on Ubuntu, run the following in a terminal:

```

sudo apt update && sudo apt install docker.io #skip this if you have docker already installed

```

To generate the manuscript run the following in a terminal.
It will take 2-3 minutes.

```

bash main.sh

```

If the process completed, the HTML document was copied from the container to the host.
It can be visualised with firefox or your favourite web browser.

```

firefox 5pillars.html

```

## How to contribute

Raise an issue on GitHub to report problems with the article or give your suggestions.

## Funding

No external funding was required.

