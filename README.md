# ASPNET Alpine image Timezone bug
Recrete what appears to be a bug in the alpine aspnet image

to reacte issue logged here: https://github.com/dotnet/dotnet-docker/issues/3237

To recreate the issue simply run:
```sh
docker-compose up --build 
```

Which should give a results as below:
```
...
dotnet-6-tz-bug-tz-test-alpine-1              | Date: 10/20/2021 09:41:11, kind: Local
dotnet-6-tz-bug-tz-test-alpine-1              | (UTC) Coordinated Universal Time
dotnet-6-tz-bug-tz-test-1                     | Date: 10/20/2021 11:41:11, kind: Local
dotnet-6-tz-bug-tz-test-1                     | (UTC+02:00) South Africa Standard Time (Johannesburg)
dotnet-6-tz-bug-tz-test-alpine-system-date-1  | Wed Oct 20 11:41:13 SAST 2021
dotnet-6-tz-bug-tz-test-system-date-1         | Wed Oct 20 11:41:13 SAST 2021
...
```

The system timezone seems to be configured correctly on both the `aspnet-alpine` & `aspnet` images, but the dotnet application is not using the configured timezone on the alpine image. 
