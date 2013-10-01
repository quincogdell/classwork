require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get "/search" do
  # given "/search?q=Miley%20Cyrus&src=tyah"
  # I expect{ "q" => "Miley Cyrus", "src" => tyah}
  params.to_s
end

get "/photos/:username/galleries/:gallery_id" do
  # to get "/photos/wakingdesiree/galleries/72157622560223171"
  params.to_s
end

get "/products/:product_group/:product_name" do
  # to get "/products/kid/kid-kanteen-baby-bottle"
  params.to_s
  end

get "/:username" do
  params.to_s
end

get "/:username/friends_mutual" do
  # given "/kathy.zhou.311"

  params.to_s
end

get "/projects/:username/:project_name" do
  # given "/projects/machinewerks/cs-x51-usb-midi-control-surface"
  # i think the hash will be  {"username" => machinewerks, :project_name => cs-x51-usb-midi-control-surface}
  params.to_s
end

get "/:username/picture" do
  # given "/friendjonathanleung/picture"
  # I expect {"username" => friendjonathanleung}

  # given "/friendjonathanleung/picture?type=large"
  # I expect {:username => friendjonathanleung, "type" => large}

  # given "/friendjonathanleung/picture?type=small"
  # I expect {:username => friendjonathanleung, "type" => small}

  params.to_s
end


#twitter
# { 'full name' => 'Quin Cogdell',
#   'email' => 'quincogdell@gmail.com',
#   'passowrd' => '1234',
#   'username' => 'qc',
#   'keep me signed in' => 'true',
#   'tailor twitter' => 'true'
#}



