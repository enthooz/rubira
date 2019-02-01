class Jirad::IssueType < Jirad::BaseModel
  attribute :name
  attribute :is_subtask?, key: 'subtask'

  alias_method :to_s, :name

  def is?(symbol)
    to_sym == symbol
  end

  def to_sym
    name.to_sym
  end
end
