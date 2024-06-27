class PrivacyController < ApplicationController
  def privacy_en
    render partial: 'landing/privacy_en'
  end

  # def privacy_ph
  #   render partial: 'landing/privacy_ph'
  # end

  def privacy_jp
    render partial: 'landing/privacy_jp'
  end
end
