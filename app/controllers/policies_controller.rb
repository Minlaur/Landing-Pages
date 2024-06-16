class PoliciesController < ApplicationController
  def policies_en
    render partial: 'landing/policies_en'
  end

  def policies_ph
    render partial: 'landing/policies_ph'
  end

  def policies_jp
    render partial: 'landing/policies_jp'
  end
end
