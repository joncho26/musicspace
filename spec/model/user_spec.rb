require_relative "../spec_helper"

describe "User Model" do
  let(:remy){User.create(name:"Remy Kartzman", password:"remy")}
  let(:nas){Artist.create(name:"Nasir Jones",pic_url:"http://upload.wikimedia.org/wikipedia/commons/7/70/Nas-04.jpg",bio:"The World is Yours!")}

  before do
    remy
    nas
  end

  it 'should have a name' do
    expect(remy.name).to eq("Remy Kartzman")
  end

  it 'should be able to add comments' do
    remy.comments.create(content:"test", artist:nas)
    expect(remy.comments.length).to eq(1)
  end


end