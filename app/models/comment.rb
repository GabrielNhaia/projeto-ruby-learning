class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
  class CreateComments < ActiveRecord::Migration[7.0]
    def change
      create_table :comments do |t|
        t.string :commenter
        t.text :body
        t.references :article, null: false, foreign_key: true
  
        t.timestamps
      end
    end
  end
end