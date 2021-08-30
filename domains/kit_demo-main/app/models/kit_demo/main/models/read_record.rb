class KitDemo::Main::Models::ReadRecord < KitDemo::Main::Models::EngineRecord

  include Kit::Domain::Models::Concerns::ReadRecord

  establish_connection :primary_readonly

end
