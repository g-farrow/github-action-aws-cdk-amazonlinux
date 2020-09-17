FROM amazonlinux:latest

LABEL name="github-action-aws-cdk-amazon-linux"
LABEL repository="https://github.com/g-farrow/github-action-aws-cdk-amazon-linux"
LABEL homepage="https://github.com/g-farrow/github-action-aws-cdk-amazon-linux"

LABEL "com.github.actions.name"="github-action-aws-cdk-amazon-linux"
LABEL "com.github.actions.description"="GitHub Action for AWS CDK based on amazonlinux"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

#RUN yum install nodejs nodejs-npm python3 py3-pip
RUN npm install -g aws-cdk
#RUN pip3 install aws-cdk.core

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
