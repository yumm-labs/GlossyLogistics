class UberPlivoStackController < ApplicationController
  # def speak(params={})
  # call_uuid = params.delete('call_uuid')
  # return request('POST', "/Call/#{call_uuid}/Speak/", params)
  # end
  def make_call
    rest_api = Plivo::RestAPI.new('MAMWI4ZJYWMWI4YZJLZG', 'NzczYmU0NmI2NjNkYTg3ZTY4NTg3NzBmYmZkOWZl')

    params = {'to' => '919742395094',
      'from' => '443308080226',
      'answer_url' => 'http://glossylogistics.heroku.com/uber_plivo_stack/answer_url',
      'answer_method' => 'POST',
      'hangup_url' => 'http://glossylogistics.heroku.com/uber_plivo_stack/hangup_url',
      'hangup_method' => 'POST'
    }

    response = rest_api.make_call(params)
  end

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

    dial_number = '917760601060'

    response = Plivo::Response.new()
    response.addWait({'length' => 0 })
    response.addSpeak('Hi... welcome to mentii... We are forwarding call to your mentor... Please wait...');
    dial = response.addDial()
    dial.addNumber(dial_number)
    render :xml => response.to_xml()

  # rest_api = Plivo::RestAPI.new('MAMWI4ZJYWMWI4YZJLZG', 'NzczYmU0NmI2NjNkYTg3ZTY4NTg3NzBmYmZkOWZl')
  #
  # args = {
  # :call_uuid => params['CallUUID'],
  # :text => 'Hi... welcome'
  # }
  #
  # resp = rest_api.speak(args)
  #
  # Rails.logger.info "===== Speak Response ===== #{resp.inspect} ==========="
  #
  # render :text => "====== in answer url ===== #{params.inspect} ==========="
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
