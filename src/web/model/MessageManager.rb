class MessageManager

  def initialize
    $messages = Hash.new
  end

  def add_message_with_key(message_key, message)
    $messages[message_key] = message
  end

end