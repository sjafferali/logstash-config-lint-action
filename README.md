# Logstash Config Lint Action

This action runs [logstash-config](https://github.com/breml/logstash-config) on your logstash configuration pipeline files, verifying their syntax.

## Inputs

### linter-version

**Optional** The version of logstash-config to use. Default `"0.5.3"`. Releases can be found [here](https://github.com/breml/logstash-config/releases).


### config-directory

**Optional** The directory to scan for .conf files to check. Default `"./"`.


## Example usage

```yaml
uses: sjafferali@logstash-config-lint-action@v1
with:
  linter-version: '0.5.3'
  config-directory: './'
```
