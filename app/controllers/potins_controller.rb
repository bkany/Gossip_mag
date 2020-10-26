class PotinsController < ApplicationController
  def potin
		@id = params[:id]
		@potin = Potin.find(@id)
		@potin_title = @potin.title
		@potin_author_first_name = @potin.user.first_name
		@potin_author_last_name = @potin.user.last_name
		@potin_content = @potin.content
		@potin_user_id = @potin.user_id
  end
end
