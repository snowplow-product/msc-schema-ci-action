# Snowplow Schema CI GitHub Actions

[![](https://img.shields.io/bintray/v/snowplow/snowplow-generic/schema-ci?color=blue&label=version&logo=github)](https://bintray.com/snowplow/snowplow-generic/schema-ci/0.1.0)

A set of [GitHub Action](https://github.com/features/actions) for using the [Snowplow's Schema CI](https://bintray.com/snowplow/snowplow-generic/schema-ci) 
tool from your CI/CD pipeline

A different action is required depending on the task you want to integrate on your workflow. We currently support:

* [Check Deployments](check)

Here's an example of using one of the Actions, in this case to check deployments

```yaml
name: Example workflow using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Run Snowplow's Schema CI
      uses: snowplow-product/msc-schema-ci-action/check@master
      with:
        manifest-path: 'snowplow-schemas.json'            
        organization-id: ${{ env.ORGANIZATION_ID }}
        auth-client-id: ${{ secrets.AUTH_CLIENT_ID }}
        auth-client-secret: ${{ secrets.AUTH_CLIENT_SECRET }}
        auth-audience: ${{ env.AUTH_AUDIENCE }}
        auth-username: ${{ secrets.AUTH_USER }}
        auth-password: ${{ secrets.AUTH_PASSWORD }}
        environment: ${{ env.ENVIRONMENT }}
```

> Note: GitHub Actions will not pass on secrets set in the repository to forks being used in pull requests, and so the Snowplow's Schema CI actions that require them will fail to run.
