class Doctor
  attr_accessor :name

  @@all = []  # remembers all doctors
  def initialize(name)  # starts with dr. name
    @name = name  
    @@all << self # pushes instance into array
  end

  def self.all  # reader for @@all
    @@all
  end

  def appointments  # searches appt. for matches of doctor
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient) # creates new appt. and links date, patient, and dr.
    new_appointment = Appointment.new(date, patient, self)
  end

  def patients # returns all patients of dr.
    appointments.map {|appointment| appointment.patient}
  end
end
