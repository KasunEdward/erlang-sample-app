mkdir -p /opt/test/sample_app
chown owner /opt/test/sample_app
export PATH=/home/kasun/.cache/rebar3/bin:$PATH
rebar3 as prod tar
cp _build/prod/rel/sample_app/sample_app-1.0.tar.gz /opt/test/sample_app
cd /opt/test/sample_app
tar -zxvf sample_app-1.0.tar.gz
