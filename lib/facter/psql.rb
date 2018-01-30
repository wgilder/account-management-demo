Facter.add(:postgres_server) do
    confine :exists => "/var/lib/pgsql"
    setcode do
       "True"
    end
  end