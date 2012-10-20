class UberPlivoStackController < ApplicationController

  def answer_url

  # {
    # "Direction"=>"inbound",
    # "From"=>"919742395094",
    # "CallerName"=>"919742395094",
    # "BillRate"=>"0.00800",
    # "To"=>"443308080226",
    # "CallUUID"=>"d1569f32-1a85-11e2-8045-cbfbb0dc5cec",
    # "Event"=>"StartApp", "action"=>"answer_url", "controller"=>"uber_plivo_stack"
  # }

    # puts "===" + params['CallUUID'] + "==="

    msg = "====== in answer url ===== #{params.inspect} ==========="
    # puts msg
    Rails.logger.info msg
    render :text => "====== in answer url ===== #{params.inspect} ==========="
  end

  def fall_back_answer_url
    msg = "====== in fall back answer url =====#{params.inspect} ==========="
    puts msg
    Rails.logger.info msg
    render :text => "====== in fall back answer url ===== #{params.inspect} ==========="
  end

  def hangup_url
    msg = "====== in hangup url =====#{params.inspect} ==========="
    puts msg
    Rails.logger.info msg
    render :text => "====== in hangup url ===== #{params.inspect} ==========="
  end

  def message_url
    msg = "====== in message url =====#{params.inspect} ==========="
    puts msg
    Rails.logger.info msg
    render :text => "====== in message url ===== #{params.inspect} ==========="
  end

end
