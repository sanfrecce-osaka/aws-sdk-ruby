module Aws
  module Plugins
    class S3CompleteMultipartUploadFix < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          @handler.call(context).on_success do |response|
            if error = check_for_error(response)
              response.http_response.status_code = 500
              response.data = nil
              response.error = error
            end
          end
        end

        def check_for_error(response)
          xml = MultiXml.parse(response.http_response.body_contents)
          if xml['Error']
            error_code = xml['Error']['Code']
            error_message = xml['Error']['Message']
            svc_class = response.context.config.api.metadata['service_class_name']
            Errors.error_class(svc_class, error_code).new(error_message)
          end
        end

      end

      handler(Handler,
        step: :build,
        priority: 40,
        operations: [:complete_multipart_upload]
      )

    end
  end
end
