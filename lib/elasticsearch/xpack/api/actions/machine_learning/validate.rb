module Elasticsearch
  module XPack
    module API
      module MachineLearning
        module Actions

          # TODO: Description
          #
          # @option arguments [Hash] :body The job config (*Required*)
          #
          # @see http://www.elastic.co/guide/en/x-pack/current/ml-valid-job.html
          #
          def validate(arguments={})
            raise ArgumentError, "Required argument 'body' missing" unless arguments[:body]
            method = Elasticsearch::API::HTTP_POST
            path   = "_xpack/ml/anomaly_detectors/_validate"
            params = {}
            body   = arguments[:body]

            perform_request(method, path, params, body).body
          end
        end
      end
    end
  end
end
