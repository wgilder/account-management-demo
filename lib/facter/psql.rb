Facter.add(:fact_this_is_a_test) do
    confine :kernel => :Linux
    setcode do
       "True"
    end
  end