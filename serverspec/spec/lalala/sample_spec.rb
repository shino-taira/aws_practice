require 'spec_helper'

#80番ポートを指定
listen_port = 80

#Nginxのインストールを確認
describe package('nginx') do
  it { should be_installed }
end

#80番ポートの開放を確認
describe port(listen_port) do
  it { should be_listening }
end

#HTTPステータスコードが正常(200)であることを確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
