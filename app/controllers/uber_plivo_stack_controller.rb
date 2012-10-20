class UberPlivoStackController < ApplicationController

  def answer_url
    msg = "====== in answer url ===== #{params.inspect} ==========="
    puts msg
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
