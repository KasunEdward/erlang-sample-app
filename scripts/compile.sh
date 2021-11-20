cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
mkdir -p /opt/sample_app
chown ubuntu /opt/sample_app
export PATH=$PATH:~/.cache/rebar3/bin
rebar3 as prod tar
cp _build/prod/rel/sample_app/sample_app-1.0.tar.gz /opt/sample_app
cd /opt/sample_app
tar -zxvf sample_app-1.0.tar.gz
