class Notification
    def send
        raise NotImplementedError
    end
end

class ConcreteNotification < Notification

    def send(message)
        puts "Sending Notification : #{message}"
    end

end

class BaseDecorator < Notification
    def initialize(notification)
        @notification = notification
    end

    def send(message)
        @notification.send(message)
    end
end

class Email < BaseDecorator
    def send(message)
        super("Email: #{message}") 
    end
end

class Sms < BaseDecorator
    def send(message)
        super("Sms: #{message}")
    end
end


notification = ConcreteNotification.new

email_notification = Email.new(notification)

email_notification.send('hello this is sending from email')