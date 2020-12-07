class Patient
  attr_accessor :name

  @@all = []  # keeps track of all patients
  def initialize(name)
    @name = name  # starts with a name
    @@all << self # pushes instances to @@all array
  end
  
  def self.all  # getter method for @@all
    @@all
  end

  def new_appointment(date, doctor) # creates new appt., links date, patient, dr.
    new_appointment = Appointment.new(date, self, doctor)
  end 

  def appointments # returns all appt.'s for linked to patient
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors # returns all dr.'s linked to this patient
    appointments.map {|appointment| appointment.doctor}
  end

end
