Facter.add(:postgres_server) do
    confine do
        File.exist? '/var/lib/pgsql'
    end
    setcode do
       "True"
    end
  end