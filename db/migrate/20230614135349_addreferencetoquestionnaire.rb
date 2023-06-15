class Addreferencetoquestionnaire < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :questionnaire, foreign_key: true
    add_reference :questions, :section, foreign_key: true
  end
end
