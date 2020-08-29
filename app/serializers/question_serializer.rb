class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :a_question, :theme_id
end
