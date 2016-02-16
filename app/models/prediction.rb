class Prediction

  attr_accessor :question, :answer

  def initialize
    self.prediction
  end

  def prediction
    questions = {
      :boba => {
        :question => 'Is Boba Fett Alive?',
        :answers => ['Yes.', 'No.']
      },
      :rey => {
        :question => 'Who is Rey\'s father?',
        :answers => ['Luke Skywalker. Duh.', 'She is a Kenobi.', 'She was born of the force.']
      },
      :snoke => {
        :question => 'Who is Snoke?',
        :answers => ['The Emperor, who survived his fall and went into hiding.', 'Darth Plagueis.', 'A corporeal incarnation of the dark side itself.', 'Luke Skywalker.', 'Meesa Supreme Leader Jar Jar Binks!']
      },
    }

    category = questions.keys.sample
    answer = questions[category][:answers].sample

    @question = "Q: #{questions[category][:question]}" 
    @answer = "A: #{answer}"
  end


end