class Article < ApplicationRecord
  include Visible

  has_one_attached :image

  has_many :comments, dependent: :destroy

  scoped_search on: [:title]

  # Validações
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validate :correct_image_type_and_size

  VALID_STATUSES = ['public', 'private', 'archived']
  validates :status, inclusion: { in: VALID_STATUSES }

  # Métodos de Instância
  def archived?
    status == 'archived'
  end

  private

  def correct_image_type_and_size
    if image.attached?
      if !image.content_type.in?(%w[image/png image/jpg image/jpeg])
        errors.add(:image, 'deve ser um arquivo PNG ou JPG')
      elsif image.byte_size > 5.megabytes
        errors.add(:image, 'deve ser menor que 5MB')
      end
    end
  end
end
