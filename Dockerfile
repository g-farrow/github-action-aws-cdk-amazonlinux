FROM amazonlinux:2

LABEL name="github-action-aws-cdk-amazonlinux"
LABEL repository="https://github.com/g-farrow/github-action-aws-cdk-amazonlinux"
LABEL homepage="https://github.com/g-farrow/github-action-aws-cdk-amazonlinux"

LABEL "com.github.actions.name"="github-action-aws-cdk-amazonlinux"
LABEL "com.github.actions.description"="GitHub Action for AWS CDK based on amazonlinux"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

RUN yum -y update
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash -
RUN yum -y install nodejs python3-pip libffi libffi-devel openssl-devel redhat-rpm-config gcc python3-devel
RUN npm install -g aws-cdk
#RUN pip3 install aws-cdk.core

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["python3 --version"]
