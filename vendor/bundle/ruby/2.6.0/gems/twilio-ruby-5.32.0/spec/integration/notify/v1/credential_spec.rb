##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Credential' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.credentials.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://notify.twilio.com/v1/Credentials',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "credentials": [
              {
                  "sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "Test slow create",
                  "type": "apn",
                  "sandbox": "False",
                  "date_created": "2015-10-07T17:50:01Z",
                  "date_updated": "2015-10-07T17:50:01Z",
                  "url": "https://notify.twilio.com/v1/Credentials/CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 1,
              "first_page_url": "https://notify.twilio.com/v1/Credentials?PageSize=1&Page=0",
              "previous_page_url": null,
              "url": "https://notify.twilio.com/v1/Credentials?PageSize=1&Page=0",
              "next_page_url": null,
              "key": "credentials"
          }
      }
      ]
    ))

    actual = @client.notify.v1.credentials.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "credentials": [],
          "meta": {
              "page": 0,
              "page_size": 1,
              "first_page_url": "https://notify.twilio.com/v1/Credentials?PageSize=1&Page=0",
              "previous_page_url": null,
              "url": "https://notify.twilio.com/v1/Credentials?PageSize=1&Page=0",
              "next_page_url": null,
              "key": "credentials"
          }
      }
      ]
    ))

    actual = @client.notify.v1.credentials.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.credentials.create(type: 'gcm')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Type' => 'gcm', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://notify.twilio.com/v1/Credentials',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "Test slow create",
          "type": "apn",
          "sandbox": "False",
          "date_created": "2015-10-07T17:50:01Z",
          "date_updated": "2015-10-07T17:50:01Z",
          "url": "https://notify.twilio.com/v1/Credentials/CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.credentials.create(type: 'gcm')

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://notify.twilio.com/v1/Credentials/CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "Test slow create",
          "type": "apn",
          "sandbox": "False",
          "date_created": "2015-10-07T17:50:01Z",
          "date_updated": "2015-10-07T17:50:01Z",
          "url": "https://notify.twilio.com/v1/Credentials/CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://notify.twilio.com/v1/Credentials/CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "Test slow create",
          "type": "apn",
          "sandbox": "False",
          "date_created": "2015-10-07T17:50:01Z",
          "date_updated": "2015-10-07T17:50:01Z",
          "url": "https://notify.twilio.com/v1/Credentials/CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://notify.twilio.com/v1/Credentials/CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.notify.v1.credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end