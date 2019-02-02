# frozen_string_literal: true

module Jirad
  # Model for "basic issues" returned from JIRA API.  This model was initially
  # designed to support issues returned as "linked issues" within other
  # issues.  In this case, the "linked issues" only contain a subset of the
  # attributes of an issue.  `Issue` extends this class and adds additional
  # attributes and behaviors.
  class BaseIssue < BaseModel
    attr_reader :issue

    attribute :id
    attribute :key
    attribute :summary,     key: %w[fields summary]
    attribute :description, key: %w[fields description]
    attribute :summary,     key: %w[fields summary]
    attribute :summary,     key: %w[fields summary]
    attribute :type,        key: %w[fields issuetype], type: Jirad::IssueType
    attribute :status,      key: %w[fields status],    type: Jirad::IssueStatus
    attribute :priority,    key: %w[fields priority],  type: Jirad::Priority

    def initialize(issue)
      super
      @client = Jirad.client
    end

    def field(field_name)
      @hash['fields'][field_name.to_s]
    end
  end
end
