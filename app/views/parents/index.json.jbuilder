json.array!(@parents) do |parent|
  json.extract! parent, :id, :child_name, :parent_name, :email
  json.url parent_url(parent, format: :json)
end
