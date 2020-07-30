require File.expand_path '../spec_helper.rb', __FILE__

describe "Start page" do
  it "loads a page without any errors" do
    get '/'
    expect(last_response).to be_ok
  end

  it "fetches some data from a public url" do
    get '/req/'
    expect(last_response.body).to include("Thai Embassy Stockholm")
  end
end
