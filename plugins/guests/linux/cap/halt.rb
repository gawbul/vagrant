module VagrantPlugins
  module GuestLinux
    module Cap
      class Halt
        def self.halt(machine)
          begin
            machine.communicate.sudo("PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin shutdown -h now")
          rescue IOError
            # Do nothing, because it probably means the machine shut down
            # and SSH connection was lost.
          end
        end
      end
    end
  end
end
