require 'test_helper'

# downloads configuration and gems
# not using must respond to since we are not testing a controller

describe Channel do

  it "raises an error if it does not have 2 parameters (name or id)" do
    proc {
      Channel.new
    }.must_raise ArgumentError

    proc {
      Channel.new "Name"
    }.must_raise ArgumentError
  end

  it "Must initialize name & id properly" do
    channel = Channel.new("Name", "ID")
    channel.name.must_equal "Name"
    channel.id.must_equal "ID"
  end
end
