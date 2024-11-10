class NotificationService
  def initialize(user, title, description)
    @user = User.find_by(id: user)
    @title = title
    @description = description
  end

  def call
    notification = @user.notifications.create(title: @title, description: @description)

    if notification.persisted?
      return notification
    else
      raise "Erro ao criar notificação: #{notification.errors.full_messages.join(', ')}"
    end
  end
end
