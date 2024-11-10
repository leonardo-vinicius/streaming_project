class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :index] 

  # GET /subscriptions
  def index
    @subscriptions = @user.subscriptions

    render json: @subscriptions
  end

  # GET /subscriptions/:id
  def show
    render json: @subscription
  end

  # POST /subscriptions
  def create
    @subscription = PaymentService.new(subscription_params).call
    
    if @subscription.save
      render json: @subscription, status: :created
    else
      render json: { errors: @subscription.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /subscriptions/:id/edit
  def edit
    # Você pode retornar o formulário para edição, mas o formato JSON é mais comum para APIs.
  end

  # PATCH/PUT /subscriptions/:id
  def update
    if @subscription.update(subscription_params)
      render json: @subscription, status: :ok
    else
      render json: { errors: @subscription.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /subscriptions/:id
  def destroy
    @subscription.destroy
    head :no_content # Retorna apenas o status 204 sem conteúdo no corpo da resposta.
  end

  private

  # Set subscription by ID for show, edit, update, destroy actions
  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  # Set user by ID for actions that require a user (create, index)
  def set_user
    @user = User.find(params[:user_id])
  end

  def subscription_params
    params.require(:subscription).permit(:status, :user_id, :end_date)
  end
end
