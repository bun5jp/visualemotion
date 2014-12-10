json.array!(@contacts) do |contact|
  json.extract! contact, :name, :email, :content, :type, :res_do, :del_flg
  json.url contact_url(contact, format: :json)
end