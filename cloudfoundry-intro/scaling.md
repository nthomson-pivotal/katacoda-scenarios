Increasing the available disk space or memory can improve overall app performance. Similarly, running additional instances of an app can allow an app to handle increases in user load and concurrent requests. These adjustments are called scaling.

Scaling your app horizontally adds or removes app instances. Adding more instances allows your application to handle increased traffic and demand.

Increase the number of app instances from one to two by running the command `cf scale spring-music -i 2`{{execute}}.

Now verify there are two instances running `cf app spring-music`{{execute}}.

```
state       since                  cpu  memory
#0 running  2016-02-23 10:55:08 AM 0.1% 461M of 512M
#1 running  2016-02-23 01:14:59 PM 0.0% 455.1M of 512M
```