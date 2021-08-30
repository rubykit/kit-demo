# Library specific wrapper for KitDemo::Main.
module KitDemo::Main::Log

  def self.log(msg:, flags: [])
    flags.unshift([:gem, :as_main])
    Kit::Log.log(msg: msg, flags: flags)
  end

end
