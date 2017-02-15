require 'rails_helper'

describe User do
  let(:user) {User.new(username: "joe", email: "joe@joe.com", password: "joe")}

  describe "has attributes" do
    it "has a username" do
      expect(user.username).to eq("joe")
    end

    it "has an email" do
      expect(user.email).to eq("joe@joe.com")
    end

    it "has a password" do
      expect(user.password).to eq("joe")
    end
  end

end
