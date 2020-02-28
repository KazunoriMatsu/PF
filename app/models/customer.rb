class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   # has_many :favorites, dependent: :destroy
   has_many :answers
   has_many :posts
   has_many :questions


	#バリデーションチェック
  validates :last_name, presence: true, length: {minimum: 1}
  validates :first_name, presence: true, length: {minimum: 1}
  validates :last_name_kana, presence: true, length: {minimum: 1}
  validates :first_name_kana, presence: true, length: {minimum: 1}
  validates :phone_number1, presence: true, length: {minimum: 1, maximum: 4}, numericality: { only_integer: true }
  validates :phone_number2, presence: true, length: {minimum: 1, maximum: 4}, numericality: { only_integer: true }
  validates :phone_number3, presence: true, length: {minimum: 1, maximum: 4}, numericality: { only_integer: true }
end
