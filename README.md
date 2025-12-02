# Snowplow Data Structures CI GitHub Actions

[![](https://img.shields.io/github/downloads/snowplow-product/msc-schema-ci-tool/total)](https://github.com/snowplow-product/msc-schema-ci-tool/releases/download/2.0.0/data_structures_ci_2.0.0.zip)

A set of [GitHub Actions](https://github.com/features/actions) for integrating [Snowplow's Data Structures CI](https://github.com/snowplow-product/msc-schema-ci-tool) 
into your CI/CD pipeline.  
To use these you’ll need to be a Snowplow customer, find out more [here](https://snowplowanalytics.com/get-started/).

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
      uses: snowplow-product/msc-schema-ci-action/check@v2
      with:
        organization-id: ${{ env.SNOWPLOW_ORG_ID }}
        api-key-id: ${{ secrets.SNOWPLOW_API_KEY_ID }}
        api-key: ${{ secrets.SNOWPLOW_API_KEY }}
        manifest-path: 'snowplow-schemas.json'            
        environment: ${{ env.ENVIRONMENT }}
```

> Note: GitHub Actions will not pass on secrets set in the repository to forks being used in pull requests, and so the Snowplow's Data Structures CI actions that require them will fail to run.
