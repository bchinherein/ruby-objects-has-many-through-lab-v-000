class Doctor
  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor= self
  end

  def appointments
    @appointments
  end

  def patients
    appointments.collect {|a| a.patient}
  end

end #class Doctor
