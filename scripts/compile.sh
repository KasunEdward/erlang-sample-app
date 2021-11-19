mkdir -p /opt/sample_app
chown owner /opt/sample_app
export PATH=/home/kasun/.cache/rebar3/bin:$PATH
rebar3 as prod tar
cp _build/prod/rel/sample_app/sample_app-1.0.tar.gz /opt/sample_app
cd /opt/sample_app
tar -zxvf sample_app-1.0.tar.gz
