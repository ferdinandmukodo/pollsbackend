class ReviewsController < ApplicationController

    # Error Handling
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422
  
    # GET /polls
    def index
        polls = Polls.all
        render json: polls, status: :ok
    end
  
    # POST /polls
    def create
        poll = Polls.create!(poll_params)
        render json: poll, status: :created
    end
  
    # DELETE /polls/:id
    def destroy
        poll = Polls.find(params[:id])
        poll.destroy
        head :no_content
    end
  
    # Private methods
    private
  
    def poll_params
        params.permit(question:, :response, :poll, :user_id)
    end
  
    def render_404
        render json: {error: "Poll not found"}, status: :not_found
    end
  
    def render_422(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
  end