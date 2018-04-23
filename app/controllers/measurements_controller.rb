class MeasurementsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @measurement = @post.measurements.create(measurement_params)
    redirect_to post_path(@post)
  end

private
  def measurement_params
    params.require(:measurement).permit(:F0, :F1)
  end

end
