# Build the image

	docker build --build-arg pypi_user=<user> --build-arg pypi_pass=<password> -t twine_deploy ./

Your PyPi username and password are now baked into the image, be careful where you put it!

# Upload to your PRIVATE Google Container Registry

	docker push eu.gcr.io/pythonbuilds/twine_deploy

