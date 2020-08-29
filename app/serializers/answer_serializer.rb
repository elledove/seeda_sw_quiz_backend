class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :an_answer , :question_id
end
