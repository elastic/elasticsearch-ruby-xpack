module Elasticsearch
  module XPack
    module API
      module MachineLearning
        module Actions

          # TODO: Description
          #
          # @option arguments [String] :job_id The name of the job to close (*Required*)
          # @option arguments [Boolean] :force True if the job should be forcefully closed
          # @option arguments [Time] :timeout Controls the time to wait until a job has closed. Default to 30 minutes
          #
          # @see http://www.elastic.co/guide/en/x-pack/current/ml-close-job.html
          #
          def close_job(arguments={})
            raise ArgumentError, "Required argument 'job_id' missing" unless arguments[:job_id]
            valid_params = [
              :force,
              :timeout ]
            method = Elasticsearch::API::HTTP_POST
            path   = "_xpack/ml/anomaly_detectors/#{arguments[:job_id]}/_close"
            params = Elasticsearch::API::Utils.__validate_and_extract_params arguments, valid_params
            body   = nil

            perform_request(method, path, params, body).body
          end
        end
      end
    end
  end
end
