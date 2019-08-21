FROM python:3

ARG pypi_user
ARG pypi_pass

ENV PYPI_USER=$pypi_user
ENV PYPI_PASS=$pypi_pass

RUN pip install --no-cache-dir twine

COPY buildAndDeployPythonPackage.sh /
RUN ["chmod", "+x", "/buildAndDeployPythonPackage.sh"]

CMD "/buildAndDeployPythonPackage.sh"