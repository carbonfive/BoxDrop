require 'BoxDrop'

describe BoxDrop do
  describe "authentication" do
    it "outputs the oauth url which requires authentication"
    context "given valid credentials" do
      it "outputs an access token and secret"
    end
    context "given invalid credentials" do
      it "returns an error code"
      it "outputs an error message"
    end
  end
  
  describe "upload a file" do
    context "given an invalid local path" do
      it "returns an error code"
      it "outputs an error message"
    end
    context "given a valid local path" do
      context "given a non-existant remote path" do
        it "returns an error code"
        it "outputs an error message"
      end
      context "given a relative path which leaves dropbox" do
        it "returns an error code"
        it "outputs an error message"
      end
      context "given a valid remote path" do
        context "when the upload succeeds" do
          it "returns success"
        end
        context "when the upload fails" do
          context "and the user is unauthorized" do
            it "returns an error code"
            it "outputs an error message"
          end
          context "and error occurred" do
            it "returns an error code"
            it "outputs an error message"
          end
        end
      end
    end
  end
end