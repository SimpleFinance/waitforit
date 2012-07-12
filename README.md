# waitforit

Wait until a service responds to healthchecks or the timeout elapses

## Usage

The simple usage is

```
waitforit -p 8080
```

Which will attempt to connect every 5 seconds to
`http://localhost:8080/healthcheck` for up to 1 minute. Each
individual connection attempt is allowed up to 2 seconds.

For advanced usage see `waitforit -h`, displayed below for reference

```
Usage: waitforit [options] -p PORT

Options:
  -p PORT            port for the healthceck
  -H HOST            host to check [default: localhost]
  -u URL             url to check [default: /healtcheck]

  -i INTERVAL        interval between checks in seconds [default: 5]
  -t TOTAL_TIMEOUT   total time to wait in seconds [default: 60]
  -c CON_TIMEOUT     max time an individual check is allowed [default: 2]
```
