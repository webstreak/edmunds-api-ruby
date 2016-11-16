RSpec.shared_examples 'make request to api' do |api_path_regex, method, method_params|

  let(:body) { JSON.generate({response: ''}) }

  before do
    stub_request(:get, api_path_regex).to_return(status: 200, body: body)
  end

  it 'basic request' do
    if method_params
      api.send method, method_params
    else
      api.send method
    end
    expect(WebMock).to have_requested(:get, api_path_regex).once
  end

end
