require_relative "../spec_helper"

describe "Artist Model" do
  let(:nas){Artist.create(name:"Nasir Jones",pic_url:"http://upload.wikimedia.org/wikipedia/commons/7/70/Nas-04.jpg",bio:"The World is Yours!")}

  let(:jon){User.create(name:"Jon",password:"1234")}

  before do
    nas
    jon
  end

  it 'should have a name' do
    expect(nas.name).to eq("Nasir Jones")
  end

  it 'should have a pic url' do
    expect{nas.pic_url}.not_to be_nil
  end

  it 'should have a bio' do
    expect{nas.bio}.not_to be_nil
  end

  it 'should have upvotes' do
    10.times do
      nas.upvotes.create(user:jon)
    end
    expect(nas.upvotes.length).to eq(10)
  end

  it 'should respond to #total votes' do
    10.times do
      nas.upvotes.create(user:jon)
    end
    expect{nas.total_votes}.not_to raise_error
  end
end