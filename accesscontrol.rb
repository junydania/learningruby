class Dania

  def public_announcement
    p "This is a public announcement from Dania"
    protected_cia
    private_potus
  end

protected

  def protected_cia
    p "Got an heavily protected network infrastructure riding off AWS"
  end

 private

  def private_potus
    p "This is the confidential part of my office "
  end
end

oj = Dania.new

oj.public_announcement

# The next part of this code has to do with testing private and protected methods

class DevOps < Dania
  def public_announcement_devops
    public_announcement
    data1 = DevOps.new
    data1.protected_cia
    data1.private_potus
  end
end

data = DevOps.new
data.public_announcement_devops

# calling a protected and private method from the instance of a subclass

#data.protected_cia
#data.private_potus
