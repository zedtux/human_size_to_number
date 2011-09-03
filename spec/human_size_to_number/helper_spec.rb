require 'spec_helper'

describe ActionView::Helpers::TextHelper do
  
  describe "#human_size_to_number" do
    context "when passing the string 123" do
      context "wihout raise option" do
        it "should not raise an exception and return nil" do
          subject.human_size_to_number("123").should be_nil
        end
      end
      context "wih raise option" do
        it "should raise an InvalidSizeStringError exception" do
          lambda {
            subject.human_size_to_number("123", :raise => true)
          }.should raise_error(
            ActionView::Helpers::TextHelper::InvalidSizeStringError
          )
        end
      end
    end
    context "when passing the string 123 Bytes" do
      it "should return the number 123" do
        subject.human_size_to_number("123 Bytes").should == 123
      end
    end
    context "when passing the string 1.21 KB" do
      it "should return the number 1239.04" do
        subject.human_size_to_number("1.21 KB").should == 1239.04
      end
    end
    context "when passing the string 12.1 KB" do
      it "should return the number 12390.4" do
        subject.human_size_to_number("12.1 KB").should == 12390.4
      end
    end
    context "when passing the string 1.18 MB" do
      it "should return the number 1237319.68" do
        subject.human_size_to_number("1.18 MB").should == 1237319.68
      end
    end
    context "when passing the string 1.15 GB" do
      it "should return the number 1234803097.6" do
        subject.human_size_to_number("1.15 GB").should == 1234803097.6
      end
    end
    context "when passing the string 1.12 TB" do
      it "should return the number 1231453023109.12" do
        subject.human_size_to_number("1.12 TB").should == 1231453023109.12
      end
    end
    context "when passing the string lorem Bytes" do
      it "should " do
        subject.human_size_to_number("lorem Bytes").should be_nil
      end
    end
  end
  
end
