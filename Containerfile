FROM registry.fedoraproject.org/fedora-minimal:31
RUN microdnf install git tar python3 python3-pip pipenv tar
