require 'spec_helper'

#80番ポート(Nginx)を指定
listen_port = 80

#Nginxがインストールされているか確認
describe package('nginx') do
  it { should be_installed }
end

#80番ポートをListenしているか確認
describe port(listen_port) do
  it { should be_listening }
end

#HTTPアクセスで200/OKが返ってくるか確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
