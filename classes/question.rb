class question
  @@question = []
  attr_reader :title, 
  def initialize(category, question, method)
    if category.nil? || question.nil? || method.nil?
      raise StandardError
    end
    @category = category
    @question = questions
    @method = method
    @@question.push(self)
  end

  def self.call_question
    return @@question
  end

  def self.show_categories
    @@questions
end