Overview
------------
Library to generate secure tokens for Akamai Live streaming service.

Generate Token Example
------------
```bash
ruby ./generate_token.rb <binary-key-file>

e.g. ruby ./generate_token.rb ./event1.key
st=1402427781~exp=1402428081~acl=%2f*~hmac=a1e9fb2130cdd1b9f160133d6681d10d9e47eed4a233c81db44dd1c7562e97f6
```

Library Example
------------
```ruby
require './akamai_streaming.rb'
streaming = AkamaiStreaming.new(:key => 'your key in hexademical format')
streaming.encrypted_token
```

Testing
------------
```ruby
describe Stream do
  it_behaves_like "a akamai token generator" do
    let(:params){ Hash.new } #all your test params
    let(:generated_token){ streaming.encrypted_token } #pass method invoking token generator for comparising
  end
end
```
