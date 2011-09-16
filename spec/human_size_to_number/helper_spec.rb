require 'spec_helper'

describe String do
  
  describe "#human_size_to_number" do
    context "when passing the string 123" do
      context "wihout raise option" do
        it "should not raise an exception and return nil" do
          "123".human_size_to_number.should be_nil
        end
      end
      context "wih raise option" do
        it "should raise an InvalidSizeStringError exception" do
          lambda {
            "123".human_size_to_number(:raise => true)
          }.should raise_error(
            String::InvalidSizeStringError
          )
        end
      end
    end
    context "when passing the string 0 Bytes" do
      it "should return the number 0" do
        "0 Bytes".human_size_to_number.should == 0
      end
    end
    context "when passing the string 123 Bytes" do
      it "should return the number 123" do
        "123 Bytes".human_size_to_number.should == 123
      end
    end
    context "when passing the string 1.21 KB" do
      it "should return the number 1239" do
        "1.21 KB".human_size_to_number.should == 1239
      end
    end
    context "when passing the string 12.1 KB" do
      it "should return the number 12390" do
        "12.1 KB".human_size_to_number.should == 12390
      end
    end
    context "when passing the string 1.18 MB" do
      it "should return the number 1237320" do
        "1.18 MB".human_size_to_number.should == 1237320
      end
    end
    context "when passing the string 1 MB" do
      it "should return the number 1048576" do
        "1 MB".human_size_to_number.should == 1048576
      end
    end
    context "when passing the string 1.15 GB" do
      it "should return the number 1234803098" do
        "1.15 GB".human_size_to_number.should == 1234803098
      end
    end
    context "when passing the string 1.12 TB" do
      it "should return the number 1231453023109" do
        "1.12 TB".human_size_to_number.should == 1231453023109
      end
    end
    context "when passing the string lorem Bytes" do
      it "should " do
        "lorem Bytes".human_size_to_number.should be_nil
      end
    end
  end
  
end