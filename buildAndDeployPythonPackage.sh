python setup.py sdist bdist_wheel
twine upload --username $PYPI_USER --password $PYPI_PASS dist/*