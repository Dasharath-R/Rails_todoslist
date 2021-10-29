json.extract! todoslist, :id, :title, :description, :created_at, :updated_at
json.url todoslist_url(todoslist, format: :json)
