# lib/message_formatter.rb
class MessageFormatter < ActiveSupport::Logger::SimpleFormatter
  def call(severity, time, progname, msg)
    formatted_severity = sprintf("%-5s",severity.to_s)
    formatted_time = time.strftime("%Y-%m-%d %H:%M:%S")
    "[#{formatted_severity} #{formatted_time} #{$$}] : #{progname} #{msg}\n"
  end
end
