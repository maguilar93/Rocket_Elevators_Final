##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class MessageContext < InstanceContext
            class FeedbackList < ListResource
              ##
              # Initialize the FeedbackList
              # @param [Version] version Version that contains the resource
              # @param [String] account_sid The SID of the
              #   [Account](https://www.twilio.com/docs/iam/api/account) that created the
              #   MessageFeedback resource.
              # @param [String] message_sid The SID of the Message resource for which the
              #   feedback was provided.
              # @return [FeedbackList] FeedbackList
              def initialize(version, account_sid: nil, message_sid: nil)
                super(version)

                # Path Solution
                @solution = {account_sid: account_sid, message_sid: message_sid}
                @uri = "/Accounts/#{@solution[:account_sid]}/Messages/#{@solution[:message_sid]}/Feedback.json"
              end

              ##
              # Retrieve a single page of FeedbackInstance records from the API.
              # Request is executed immediately.
              # @param [feedback.Outcome] outcome Whether the feedback has arrived. Can be:
              #   `unconfirmed` or `confirmed`. If `provide_feedback`=`true` in [the initial HTTP
              #   POST](https://www.twilio.com/docs/sms/api/message-resource#create-a-message-resource), the initial value of this property is `unconfirmed`. After the message arrives, update the value to `confirmed`.
              # @return [FeedbackInstance] Newly created FeedbackInstance
              def create(outcome: :unset)
                data = Twilio::Values.of({'Outcome' => outcome, })

                payload = @version.create(
                    'POST',
                    @uri,
                    data: data
                )

                FeedbackInstance.new(
                    @version,
                    payload,
                    account_sid: @solution[:account_sid],
                    message_sid: @solution[:message_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Api.V2010.FeedbackList>'
              end
            end

            class FeedbackPage < Page
              ##
              # Initialize the FeedbackPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [FeedbackPage] FeedbackPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of FeedbackInstance
              # @param [Hash] payload Payload response from the API
              # @return [FeedbackInstance] FeedbackInstance
              def get_instance(payload)
                FeedbackInstance.new(
                    @version,
                    payload,
                    account_sid: @solution[:account_sid],
                    message_sid: @solution[:message_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Api.V2010.FeedbackPage>'
              end
            end

            class FeedbackInstance < InstanceResource
              ##
              # Initialize the FeedbackInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] account_sid The SID of the
              #   [Account](https://www.twilio.com/docs/iam/api/account) that created the
              #   MessageFeedback resource.
              # @param [String] message_sid The SID of the Message resource for which the
              #   feedback was provided.
              # @return [FeedbackInstance] FeedbackInstance
              def initialize(version, payload, account_sid: nil, message_sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'message_sid' => payload['message_sid'],
                    'outcome' => payload['outcome'],
                    'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                    'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                    'uri' => payload['uri'],
                }
              end

              ##
              # @return [String] The SID of the Account that created the resource
              def account_sid
                @properties['account_sid']
              end

              ##
              # @return [String] The SID of the Message resource for which the feedback was provided
              def message_sid
                @properties['message_sid']
              end

              ##
              # @return [feedback.Outcome] Whether the feedback has arrived
              def outcome
                @properties['outcome']
              end

              ##
              # @return [Time] The RFC 2822 date and time in GMT that the resource was created
              def date_created
                @properties['date_created']
              end

              ##
              # @return [Time] The RFC 2822 date and time in GMT that the resource was last updated
              def date_updated
                @properties['date_updated']
              end

              ##
              # @return [String] The URI of the resource, relative to `https://api.twilio.com`
              def uri
                @properties['uri']
              end

              ##
              # Provide a user friendly representation
              def to_s
                "<Twilio.Api.V2010.FeedbackInstance>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                "<Twilio.Api.V2010.FeedbackInstance>"
              end
            end
          end
        end
      end
    end
  end
end