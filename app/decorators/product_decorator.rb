class ProductDecorator < Draper::Decorator
  delegate_all

  def author
    "#{object.user.firstname} #{object.user.lastname}" if object.user
  end
end
