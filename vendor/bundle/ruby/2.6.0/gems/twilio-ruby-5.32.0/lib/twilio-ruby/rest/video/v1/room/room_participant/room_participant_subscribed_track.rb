##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Video < Domain
      class V1 < Version
        class RoomContext < InstanceContext
          class ParticipantContext < InstanceContext
            class SubscribedTrackList < ListResource
              ##
              # Initialize the SubscribedTrackList
              # @param [Version] version Version that contains the resource
              # @param [String] room_sid The SID of the room where the track is published.
              # @param [String] participant_sid The SID of the participant that subscribes to
              #   the track.
              # @return [SubscribedTrackList] SubscribedTrackList
              def initialize(version, room_sid: nil, participant_sid: nil)
                super(version)

                # Path Solution
                @solution = {room_sid: room_sid, participant_sid: participant_sid}
                @uri = "/Rooms/#{@solution[:room_sid]}/Participants/#{@solution[:participant_sid]}/SubscribedTracks"
              end

              ##
              # Lists SubscribedTrackInstance records from the API as a list.
              # Unlike stream(), this operation is eager and will load `limit` records into
              # memory before returning.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #    guarantees to never return more than limit.  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when
              #    not set will use the default value of 50 records.  If no page_size is defined
              #    but a limit is defined, stream() will attempt to read the limit with the most
              #    efficient page size, i.e. min(limit, 1000)
              # @return [Array] Array of up to limit results
              def list(limit: nil, page_size: nil)
                self.stream(limit: limit, page_size: page_size).entries
              end

              ##
              # Streams SubscribedTrackInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #    guarantees to never return more than limit. Default is no limit.
              # @param [Integer] page_size Number of records to fetch per request, when
              #    not set will use the default value of 50 records. If no page_size is defined
              #    but a limit is defined, stream() will attempt to read the limit with the most
              #    efficient page size, i.e. min(limit, 1000)
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)

                page = self.page(page_size: limits[:page_size], )

                @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
              end

              ##
              # When passed a block, yields SubscribedTrackInstance records from the API.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              def each
                limits = @version.read_limits

                page = self.page(page_size: limits[:page_size], )

                @version.stream(page,
                                limit: limits[:limit],
                                page_limit: limits[:page_limit]).each {|x| yield x}
              end

              ##
              # Retrieve a single page of SubscribedTrackInstance records from the API.
              # Request is executed immediately.
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              # @return [Page] Page of SubscribedTrackInstance
              def page(page_token: :unset, page_number: :unset, page_size: :unset)
                params = Twilio::Values.of({
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                })
                response = @version.page(
                    'GET',
                    @uri,
                    params
                )
                SubscribedTrackPage.new(@version, response, @solution)
              end

              ##
              # Retrieve a single page of SubscribedTrackInstance records from the API.
              # Request is executed immediately.
              # @param [String] target_url API-generated URL for the requested results page
              # @return [Page] Page of SubscribedTrackInstance
              def get_page(target_url)
                response = @version.domain.request(
                    'GET',
                    target_url
                )
                SubscribedTrackPage.new(@version, response, @solution)
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Video.V1.SubscribedTrackList>'
              end
            end

            class SubscribedTrackPage < Page
              ##
              # Initialize the SubscribedTrackPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [SubscribedTrackPage] SubscribedTrackPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of SubscribedTrackInstance
              # @param [Hash] payload Payload response from the API
              # @return [SubscribedTrackInstance] SubscribedTrackInstance
              def get_instance(payload)
                SubscribedTrackInstance.new(
                    @version,
                    payload,
                    room_sid: @solution[:room_sid],
                    participant_sid: @solution[:participant_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Video.V1.SubscribedTrackPage>'
              end
            end

            class SubscribedTrackContext < InstanceContext
              ##
              # Initialize the SubscribedTrackContext
              # @param [Version] version Version that contains the resource
              # @param [String] room_sid The SID of the Room where the Track resource to fetch
              #   is subscribed.
              # @param [String] participant_sid The SID of the participant that subscribes to
              #   the Track resource to fetch.
              # @param [String] sid The SID of the RoomParticipantSubscribedTrack resource to
              #   fetch.
              # @return [SubscribedTrackContext] SubscribedTrackContext
              def initialize(version, room_sid, participant_sid, sid)
                super(version)

                # Path Solution
                @solution = {room_sid: room_sid, participant_sid: participant_sid, sid: sid, }
                @uri = "/Rooms/#{@solution[:room_sid]}/Participants/#{@solution[:participant_sid]}/SubscribedTracks/#{@solution[:sid]}"
              end

              ##
              # Fetch a SubscribedTrackInstance
              # @return [SubscribedTrackInstance] Fetched SubscribedTrackInstance
              def fetch
                params = Twilio::Values.of({})

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                SubscribedTrackInstance.new(
                    @version,
                    payload,
                    room_sid: @solution[:room_sid],
                    participant_sid: @solution[:participant_sid],
                    sid: @solution[:sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Video.V1.SubscribedTrackContext #{context}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Video.V1.SubscribedTrackContext #{context}>"
              end
            end

            class SubscribedTrackInstance < InstanceResource
              ##
              # Initialize the SubscribedTrackInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] room_sid The SID of the room where the track is published.
              # @param [String] participant_sid The SID of the participant that subscribes to
              #   the track.
              # @param [String] sid The SID of the RoomParticipantSubscribedTrack resource to
              #   fetch.
              # @return [SubscribedTrackInstance] SubscribedTrackInstance
              def initialize(version, payload, room_sid: nil, participant_sid: nil, sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'sid' => payload['sid'],
                    'participant_sid' => payload['participant_sid'],
                    'publisher_sid' => payload['publisher_sid'],
                    'room_sid' => payload['room_sid'],
                    'name' => payload['name'],
                    'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                    'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                    'enabled' => payload['enabled'],
                    'kind' => payload['kind'],
                    'url' => payload['url'],
                }

                # Context
                @instance_context = nil
                @params = {
                    'room_sid' => room_sid,
                    'participant_sid' => participant_sid,
                    'sid' => sid || @properties['sid'],
                }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @return [SubscribedTrackContext] SubscribedTrackContext for this SubscribedTrackInstance
              def context
                unless @instance_context
                  @instance_context = SubscribedTrackContext.new(
                      @version,
                      @params['room_sid'],
                      @params['participant_sid'],
                      @params['sid'],
                  )
                end
                @instance_context
              end

              ##
              # @return [String] The unique string that identifies the resource
              def sid
                @properties['sid']
              end

              ##
              # @return [String] The SID of the participant that subscribes to the track
              def participant_sid
                @properties['participant_sid']
              end

              ##
              # @return [String] The SID of the participant that publishes the track
              def publisher_sid
                @properties['publisher_sid']
              end

              ##
              # @return [String] The SID of the room where the track is published
              def room_sid
                @properties['room_sid']
              end

              ##
              # @return [String] The track name
              def name
                @properties['name']
              end

              ##
              # @return [Time] The ISO 8601 date and time in GMT when the resource was created
              def date_created
                @properties['date_created']
              end

              ##
              # @return [Time] The ISO 8601 date and time in GMT when the resource was last updated
              def date_updated
                @properties['date_updated']
              end

              ##
              # @return [Boolean] Whether the track is enabled
              def enabled
                @properties['enabled']
              end

              ##
              # @return [subscribed_track.Kind] The track type
              def kind
                @properties['kind']
              end

              ##
              # @return [String] The absolute URL of the resource
              def url
                @properties['url']
              end

              ##
              # Fetch a SubscribedTrackInstance
              # @return [SubscribedTrackInstance] Fetched SubscribedTrackInstance
              def fetch
                context.fetch
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Video.V1.SubscribedTrackInstance #{values}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Video.V1.SubscribedTrackInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end