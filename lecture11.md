```
Package "nginx"
  is expected to be installed

Port "80"
  is expected to be listening

Command "curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s"
  stdout
    is expected to match /^200$/

Finished in 0.08704 seconds (files took 0.39161 seconds to load)
3 examples, 0 failures
```
