class Appointment
  attr_accessor :date, :patient, :doctor 

  @@all = []  # collects all appt. instances
  def initialize(date, patient, doctor)
    @date = date        # starts with date, patient, and doctor
    @patient = patient  # allows access to each branch
    @doctor = doctor    # this is the single source of truth
    @@all << self
  end

  def self.all  # reader method for @@all
    @@all
  end
end
