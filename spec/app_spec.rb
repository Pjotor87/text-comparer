describe "Start page" do
  it "loads a page without any errors" do
    get '/'
    expect(last_response).to be_ok
  end

  xit "fetches some data from a public url" do
    
  end
end
