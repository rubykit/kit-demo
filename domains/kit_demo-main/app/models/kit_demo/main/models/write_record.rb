class KitDemo::Main::Models::WriteRecord < KitDemo::Main::Models::EngineRecord

  include Kit::Domain::Models::Concerns::WriteRecord

  establish_connection :primary_write

end
