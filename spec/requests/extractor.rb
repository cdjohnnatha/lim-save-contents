# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Extractor", type: :request do
  let(:valid_attrs) { { data: { type: "extractors", attributes: attributes_for(:extractor) } } .as_json }
  let(:invalid_attrs) { { data: { type: "extractors", attributes: attributes_for(:extractor, url: "") } } .as_json }
  let(:invalid_attribute_attrs) { { data: { type: "extractors", url: nil } } .as_json }

  describe "/v1/extractors" do
    context "GET" do
      before { create(:extractor) }
      context "when logged in" do
        before(:each) { get api_v1_extractors_path }

        it "should be returns a success" do
          expect(response).to have_http_status(200)
        end

        it "validate serializer" do
          expect(response).to match_response_schema("extractors")
        end

        it "should be returns a extractors list" do
          expect(response.body).not_to be_blank
          expect(json).not_to be_empty
          expect(json["data"].count).to be >= 1
        end
      end
    end

    context "POST" do
      context "valid extractor attributes" do
        before(:each) { post api_v1_extractors_path, params: valid_attrs }

        it "should return a created extractor" do
          expect(response).to have_http_status(201)
          expect(response).to be_successful
        end

        it "validate serializer" do
          expect(json).to match_response_schema("extractor")
        end

        it_behaves_like "a json pattern"

        it_behaves_like "a extractor attributes"
        #   let(:body) { json }
        #   let(:attrs) { valid_attrs }
        # end
      end
    end
    context "invalid extractor attributes" do
      before(:each) { post api_v1_extractors_path, params: invalid_attrs }

      include_examples "a json error pattern"
      include_examples "an unprocessable error"
    end
  end
end
