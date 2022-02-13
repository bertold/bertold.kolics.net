# My Personal Site

This is my static site that is hosted on [Amazon AWS](https://aws.amazon.com/). On every push to this repository, a GitHub [workflow](https://github.com/bertold/bertold.kolics.net/blob/main/.github/workflows/publish.yml) is kicked off. The workflow is using a [GitHub Action](https://github.com/paygoc6/action-jekyll-to-s3-cloudfront) to regenerate the site, push the files to an S3 bucket and invalidate a Cloudfront distribution that serves up the files.

This site is based on the [Much-Worse jekyll theme](https://github.com/gchauras/much-worse-jekyll-theme). The theme is available under [MIT License](https://opensource.org/licenses/MIT).

