Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11660795"  # 放測試站的 key

    pay2go.hash_key    = "KB2nwUpnWDPxDSkUNsBoa9oFKfY0E8vp"
    pay2go.hash_iv     = "KxMgrcDoPtVtmgn9"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "11660795"  # 放正式站的 key

    pay2go.hash_key    = "KB2nwUpnWDPxDSkUNsBoa9oFKfY0E8vp"
    pay2go.hash_iv     = "KxMgrcDoPtVtmgn9"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
