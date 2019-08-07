# My Personal Site

[![Build Status](https://travis-ci.org/bertold/bertold.kolics.net.svg?branch=master)](https://travis-ci.org/bertold/bertold.kolics.net)

This is my static site that is hosted on [Amazon AWS](https://aws.amazon.com/) (using S3 and Cloudfront services). [Travis CI](https://travis-ci.org/) deploys changes to my site as soon as the site is changed. Travis CI executes the [cibuild](https://github.com/bertold/bertold.kolics.net/blob/master/script/cibuild) script with some environment variables (such as keys) inserted at build time.

An example [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/) integration has also been setup. See [this file](https://github.com/bertold/bertold.kolics.net/blob/master/azure-pipelines.yml). This pipeline also kicks off automated tests at [mabl](https://mabl.com). The [mabl integration script](https://github.com/bertold/bertold.kolics.net/blob/master/script/mabl-deployment-integration.sh) invokes the deployment API to execute tests and then polls the notification API to wait for the tests to complete.

This site is based on the [Much-Worse jekyll theme](https://github.com/gchauras/much-worse-jekyll-theme). The theme is avaiable under [MIT License](https://opensource.org/licenses/MIT).

