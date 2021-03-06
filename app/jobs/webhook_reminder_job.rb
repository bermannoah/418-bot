class WebhookReminderJob < ApplicationJob
  queue_as :default

  def perform(webhook_url, type, text: nil)
    conn = Faraday.new(url: webhook_url)
    update_text = {text: "The #{type} is ready!"} if text.nil?
    update_text = {text: text} if text
    conn.post do |req|
      req.url webhook_url
      req.headers['Content-Type'] = 'application/json'
      req.body = update_text.to_json
    end
  end
end
