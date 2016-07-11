module Elasticsearch
  module API
    module XPack
      module License
        module Actions

          # Delete a license
          #
          # @see https://www.elastic.co/guide/en/shield/current/license-management.html
          #
          def delete(arguments={})
            method = HTTP_DELETE
            path   = "_xpack/license"
            params = {}
            body   = nil

            perform_request(method, path, params, body).body
          end
        end
      end
    end
  end
end
