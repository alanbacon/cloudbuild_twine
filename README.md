# Build the image

	docker build --build-arg pypi_user=<user> --build-arg pypi_pass=<password> -t twine_deploy ./

Your PyPi username and password are now baked into the image, so be careful where you put it!

# Upload to your PRIVATE Google Container Registry

	docker push eu.gcr.io/pythonbuilds/twine_deploy

# Use the image as part of a cloudbuild process

Create a `cloudbuild.yaml` file at the same level as your `setup.py` file in your python package, and put this in it:

```
steps:
  - name: 'eu.gcr.io/pythonbuilds/twine_deploy'
```

Create a trigger in cloudbuild on the git repo of the python package. This can trigger on either a push to a branch or on a release.

The git repo will be cloned into the cloudbuild "workspace" this workspace is mounted into the working directory of the docker container we created. TLDR: all the files will magically be where they need to be.

