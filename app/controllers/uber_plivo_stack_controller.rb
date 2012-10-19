class UberPlivoStackController < ApplicationController

	def call_receiver
		puts "====== in call reciever ====="
		Rails.logger.info "====== in call reciever ====="
                render :text => "==== Call has been recieved ===== #{params.inspect} ==========="
	end

end
