# Snowplow Data Structures CI GitHub Actions

[![](https://img.shields.io/bintray/v/snowplow/snowplow-generic/data-structures-ci?color=blue&label=version&logo=github)](https://bintray.com/snowplow/snowplow-generic/data-structures-ci/0.3.1)

A set of [GitHub Actions](https://github.com/features/actions) for integrating [Snowplow's Data Structures CI](https://snowplowanalytics.com/products/snowplow-insights/) 
into your CI/CD pipeline.  
To use these you’ll need to be a Snowplow customer, find out more [here](https://snowplowanalytics.com/pricing/).

A different action is required depending on the task you want to integrate on your workflow. Currently supported actions are:

* [Check Deployments](check)

Here's an example of using one of the Actions, in this case to check deployments

```yaml
name: Example workflow using Snowplow's Data Structures CI
on: push
jobs:
  data-structures-check:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Run Snowplow's Data Structures CI
      uses: snowplow-product/msc-schema-ci-action/check@v0.3.1
      with:
        manifest-path: 'snowplow-schemas.json'            
        username: ${{ secrets.AUTH_USER }}
        password: ${{ secrets.AUTH_PASSWORD }}
        environment: ${{ env.ENVIRONMENT }}
```

> Note: GitHub Actions will not pass on secrets set in the repository to forks being used in pull requests, and so the Snowplow's Data Structures CI actions that require them will fail to run.
