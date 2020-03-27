##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Assistant' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "development_stage": "in-development",
          "needs_model_build": false,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "style_sheet": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet",
              "defaults": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Defaults",
              "dialogues": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "webhooks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Webhooks",
              "export_assistant": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Export"
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://autopilot.twilio.com/v1/Assistants',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assistants": [],
          "meta": {
              "first_page_url": "https://autopilot.twilio.com/v1/Assistants?PageSize=50&Page=0",
              "key": "assistants",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://autopilot.twilio.com/v1/Assistants?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assistants": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2017-07-04T08:34:00Z",
                  "date_updated": "2017-07-04T08:34:00Z",
                  "friendly_name": "so so friendly",
                  "latest_model_build_sid": null,
                  "log_queries": true,
                  "development_stage": "in-development",
                  "needs_model_build": false,
                  "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "so-so-unique",
                  "links": {
                      "field_types": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
                      "tasks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
                      "model_builds": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
                      "queries": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
                      "style_sheet": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet",
                      "defaults": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Defaults",
                      "dialogues": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
                      "webhooks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Webhooks",
                      "export_assistant": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Export"
                  },
                  "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "callback_url": "https://example.com/callback_url",
                  "callback_events": "model_build_completed model_build_failed"
              }
          ],
          "meta": {
              "first_page_url": "https://autopilot.twilio.com/v1/Assistants?PageSize=50&Page=0",
              "key": "assistants",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://autopilot.twilio.com/v1/Assistants?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://autopilot.twilio.com/v1/Assistants',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "development_stage": "in-development",
          "needs_model_build": false,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "style_sheet": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet",
              "defaults": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Defaults",
              "dialogues": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "webhooks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Webhooks",
              "export_assistant": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Export"
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants.create()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "development_stage": "in-development",
          "needs_model_build": false,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "style_sheet": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet",
              "defaults": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Defaults",
              "dialogues": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "webhooks": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Webhooks",
              "export_assistant": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Export"
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end