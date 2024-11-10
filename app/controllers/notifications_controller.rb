class NotificationsController < ApplicationController
  before_action :set_user

  def create
    @notification = NotificationService.new(notification_params[:user_id], notification_params[:title], notification_params[:description]).call

    if @notification.save
      render json: @notification, status: :created
    else
      render json: { errors: @notification.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def notification_params
    params.require(:notification).permit(:title, :description, :user_id)
  end
end
