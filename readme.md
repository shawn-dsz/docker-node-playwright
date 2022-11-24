# Docker example

## Build

```shell
❯ docker build -t express-hello .
```

## Run

### Port forwarding

-p Local:Container

```shell
❯ docker run -p 5000:3000 express-hello
```
