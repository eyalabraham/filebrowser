# openshift-filebrowser

OpenShift-compatible variant of https://filebrowser.org/

## Getting Started

1. Log in to OpenShift Container Platform (OCP) web console and switch to 'Developer' view

2. Click '+Add' and select Git Repository 'Import from Git':

   -  Git Repo URL: `https://github.com/eyalabraham/filebrowser`

   -  Dockerfile path: `Dockerfile` (default)

   -  Application name: No Application group

   -  Name: `openshift-filebrowser-git` (just an example)

   -  Ensure that `Create a Route to the Application` is selected (default)

3. Next, select the newly created _Deployment_ and click 'Actions → Add Storage'

   - Either 'Use existing claim', or 'Create new claim':

       -   Storage Class: Select your storage class

       -   Persistent Volume Claim Name: `filebrowser-claim` (just an example)

       -   Access Mode: `Shared Access (RWX)`

       -   Size: Choose desired size

       -   Volume Mode: `Filesystem` (default)

   - **Important** - Mount Path: `/files`

4. Optional. Create sample files by running the ```/mkfiles.sh``` script from the pod's command line shell.

5. You're all set! Find the _Route_ that was created for the application and open it from a web browser. Default Username is `admin`, default Password is `admin`.


## Copyright and license

Copyright 2021 Achim Christ, released under the terms of the [MIT License](LICENSE)
