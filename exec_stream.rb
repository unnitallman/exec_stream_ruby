require 'pty'



def exec_stream(cmd)
  begin
    PTY.spawn(cmd) do |stdout, _, _|
      begin
        stdout.each { |line| yield(line) }
      rescue Errno::EIO
      end
    end
  rescue PTY::ChildExited
  end
end