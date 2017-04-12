ActiveModelSerializers.config.default_includes = '**'
ActiveModelSerializers.config.adapter = :json
ActiveModelSerializers.config.key_transform = :underscore

api_mime_types = %W(  
  application/vnd.api+json
  text/x-json
  application/json
)
Mime::Type.register 'application/vnd.api+json', :json, api_mime_types