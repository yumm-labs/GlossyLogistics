class UberPlivoStackController < ApplicationController


      # def speak(params={})
          # call_uuid = params.delete('call_uuid')
          # return request('POST', "/Call/#{call_uuid}/Speak/", params)
      # end

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

    Rails.logger.info "====== in answer url ===== #{params.inspect} ==========="
    Rails.logger.info "====== #{params['CallUUID'].inspect} ============"
    
    rest_api = Plivo::RestAPI.new('MAMWI4ZJYWMWI4YZJLZG', 'NzczYmU0NmI2NjNkYTg3ZTY4NTg3NzBmYmZkOWZl')

    args = {
      'call_uuid' => params['CallUUID'],
      'text' => 'Hi... welcome to mentii'
    }

    resp = rest_api.speak(args)
    
    Rails.logger.info "===== Speak Response ===== #{resp.inpsect} ==========="
    
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
