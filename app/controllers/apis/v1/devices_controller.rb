class Apis::V1::DevicesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    return render :json => {status: :ok}
  end

  def create
    if params["device"].present?
      device = Device.new device_params
      if device.save
        return render :json => {status: :ok, data: device}
      end
    end
    return render :json => {status: :not_ok}
  end

  def update
    return render :json => {status: :ok}
  end

  def destroy
    return render :json => {status: :ok}
  end

  private

  def device_params
    params.require(:device).permit([:id, :name, :data])
  end
end
