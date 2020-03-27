##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'EndUser' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .end_users.create(friendly_name: 'friendly_name', type: 'individual')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'FriendlyName' => 'friendly_name', 'Type' => 'individual', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "type": "individual",
          "attributes": {
              "email": "foobar@twilio.com"
          },
          "date_created": "2019-07-30T21:57:45Z",
          "date_updated": "2019-07-30T21:57:45Z",
          "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .end_users.create(friendly_name: 'friendly_name', type: 'individual')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .end_users.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "results": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "results"
          }
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .end_users.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "results": [
              {
                  "sid": "ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "type": "individual",
                  "attributes": {
                      "email": "foobar@twilio.com"
                  },
                  "date_created": "2019-07-30T21:57:45Z",
                  "date_updated": "2019-07-30T21:57:45Z",
                  "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "results"
          }
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .end_users.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .end_users('ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "type": "individual",
          "attributes": {
              "email": "foobar@twilio.com"
          },
          "date_created": "2019-07-30T21:57:45Z",
          "date_updated": "2019-07-30T21:57:45Z",
          "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .end_users('ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .end_users('ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "type": "individual",
          "attributes": {
              "email": "foobar@twilio.com"
          },
          "date_created": "2019-07-30T21:57:45Z",
          "date_updated": "2019-07-30T21:57:45Z",
          "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/EndUsers/ITaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .end_users('ITXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end