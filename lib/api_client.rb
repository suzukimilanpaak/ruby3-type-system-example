require 'json'
require 'net/http'

class ApiClient
  HOST_NAME = 'test.com'

  def get_request(path)
    response = Net::HTTP.get_response(HOST_NAME, path)
    JSON.parse(response.body) || {} if response.code == 200
  end

  def undefined_request(path)
  end
end
