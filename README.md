## Installation


```shell
bundle install
```


## To verify types defined in signature files

```shell
bundle exec steep check
```


## To arrange settings of Steep

Edit Steepfile. Signature files are specified to locate under `./sig`

```shell
target :lib do
  signature "sig"

  check 'lib'
end
```
