# Test Swaggo

In this repo I wrote a simple test using the `v2.0.0-rc3` installed on my machine to be able to generate the OpenApi 3.1 specs.

# Problem

When I try to load the description content from a MD file, nothing is printed into the output yaml.

This only happens when I try to generate with the flag `-v3.1`.

# Output

You can view the issue and compare the results looking into the folder [docs-v2](./docs-v2/swagger.yaml) and comparing with the [docs-v3](./docs-v3/swagger.yaml).

# How to reproduce?

First, install the release candidate:

```bash
go install github.com/swaggo/swag/v2/cmd/swag@latest
```

Or

```bash
go install github.com/swaggo/swag/v2/cmd/swag@v2.0.0-rc3
```

Then run the following command to generate in Swagger 2.0:

```bash
make swagger-2.0
```

And run the following command to generate in OpenApi 3.1:

```bash
make swagger-3.1
```
