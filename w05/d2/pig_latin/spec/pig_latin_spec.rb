require 'rspec'
require 'pry'
require_relative("../pig_latin")

describe "Pig Latin Translator" do

  it "it translates happy to appyhay" do
    translation = translate("happy")
    expect(translation).to eq("appyhay")
  end

  it "it translates duck to uckday" do
    translation = translate("duck")
    expect(translation).to eq("uckday")
  end

  it "it translates glove to oveglay" do
    translation = translate("glove")
    expect(translation).to eq("oveglay")
  end

  it "it translates egg to eggway" do
    translation = translate("egg")
    expect(translation).to eq("eggway")
  end

  it "it translates inbox to inboxway" do
    translation = translate("inbox")
    expect(translation).to eq("inboxway")
  end

  it "it translates yellow to ellowyay" do
    translation = translate("yellow")
    expect(translation).to eq("ellowyay")
  end

  it "it translates rhythm to ythmrhay" do
    translation = translate("rhythm")
    expect(translation).to eq("ythmrhay")
  end


end
