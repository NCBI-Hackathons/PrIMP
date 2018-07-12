# Prediction of Infection-prone Microbiome Pathways (PrIMP)

## Microbial Communities and Infection
When exposed to similar bacterial challenges, some people get sick and some don't. Antibiotic use disrupts the gut microbiome and significantly increases susceptibility to gastrointestinal infections, suggesting that healthy gut flora play a role in excluding harmful pathogens.

## What's the problem?
Currently, the components of the microbiome that determine resistance or susceptibility to infection are not well understood, and streamlined tools for predicting susceptibility are not readily available for researchers or clinicians. Microbiome data, however, is abundant and publicly accessible, making it possible to develop powerful predictive models and identify the biological factors that permit or prevent infection. 

## Why should we solve it?
If a patient's susceptibility to infection could be predicted from their gut microbiome before they get sick, patients especially vulnerable to hospital-acquired infection could be screened for susceptibility. Furthermore, if the factors in the gut microbiome that make someone resistant to infection can be identified, probiotic therapies could be designed to maintain that resistant state.

# What is PrIMP?
PrIMP (Prediction of Infection-prone Microbiome Pathways) is a workflow for predicting disease states from metagenomic data.  Rather than relying solely on taxonomic classification of the species present in the sample, PrIMP examines the molecular pathways present in the microbiome. PrIMP is therefore able to identify specific molecular functions that make the microbiome resistant or susceptible to colonization by a pathogen. 

# How to use PrIMP
The user provides a set of 16S DNA sequences from healthy patients and from patients in the disease or pre-disease state the user wants to predict. PrIMP will then generate a predictive model that can classify a patient sample as (pre)disease or healthy.

# Software Workflow Diagram
![Image](PrIMP_workflow.png)


# File structure diagram
#### _Define paths, variable names, etc_

# Installation options:

We provide two options for installing <this software>: Docker or directly from Github.

### Docker

The Docker image contains <this software> as well as a webserver and FTP server in case you want to deploy the FTP server. It does also contain a web server for testing the <this software> main website (but should only be used for debug purposes).

1. `docker pull ncbihackathons/<this software>` command to pull the image from the DockerHub
2. `docker run ncbihackathons/<this software>` Run the docker image from the master shell script
3. Edit the configuration files as below

### Installing <this software> from Github

1. `git clone https://github.com/NCBI-Hackathons/<this software>.git`
2. Edit the configuration files as below
3. `sh server/<this software>.sh` to test
4. Add cron job as required (to execute <this software>.sh script)

### Configuration

```Examples here```

# Testing

We tested four different tools with <this software>. They can be found in [server/tools/](server/tools/) .

# Additional Functionality

### DockerFile

<this software> comes with a Dockerfile which can be used to build the Docker image.

  1. `git clone https://github.com/NCBI-Hackathons/<this software>.git`
  2. `cd server`
  3. `docker build --rm -t <this software>/<this software> .`
  4. `docker run -t -i <this software>/<this software>`

### Website

There is also a Docker image for hosting the main website. This should only be used for debug purposes.

  1. `git clone https://github.com/NCBI-Hackathons/<this software>.git`
  2. `cd Website`
  3. `docker build --rm -t <this software>/website .`
  4. `docker run -t -i <this software>/website`
