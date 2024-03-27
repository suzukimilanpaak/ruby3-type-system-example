## Installation


```shell
bundle install
```


## To verify types defined in signature files

```shell
% bundle exec steep check
# Type checking files:

.......................................................................................................

No type error detected. 🫖
```


## To arrange settings of Steep

Edit Steepfile. Signature files are specified to locate under `./sig`

```shell
target :lib do
  signature "sig"

  check 'lib'
end
```

## To get a blueprint of a signature of a class

**typeprof** is a convenient command that infers types and prints the results. It's useful when you want to blueprint the signature of a module or class.

```shell
% typeprof lib/api_client.rb
# TypeProf 0.21.11

# Classes
class ApiClient
  HOST_NAME: String

  def get_request: (untyped path) -> Hash[untyped, untyped]?
  def undefined_request: (untyped path) -> nil
end
```
