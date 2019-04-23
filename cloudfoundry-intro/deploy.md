Now we can deploy our application to CloudFoundry.

The Spring Music application comes with a manifest file, which specifies various options instructing CloudFoundry how the application should be deployed. You can inspect the manifest file using the commmand `cat manifest.yml`{{execute}}.

To deploy the application, execute `cf push`{{execute}}.

Once the application is deployed, you can obtain additional details about the application using the command `cf app spring-music`{{execute}}.

You can access the application in your browser by grabbing the URL from the `routes` field of the output:

```
name:              spring-music
requested state:   started
routes:            spring-music-<suffix>
```

Verify that your application in accessible using your unique application URL from the command output. 