FROM centos:7

RUN yum install -y rpm-build git vim wget
RUN yum install -y https://rdoproject.org/repos/rdo-release.rpm

# Install git-review
RUN yum install -y python-setup-tools python-pbr python python-pip
RUN pip install git-review ipython

# Clone all repos
RUN cd ~ \
    git clone https://review.openstack.org/stackforge/bansho \
    git clone https://review.openstack.org/stackforge/surveil \
    git clone https://review.openstack.org/stackforge/python-surveilclient

