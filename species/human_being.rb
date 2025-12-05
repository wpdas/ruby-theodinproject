require_relative "../utils/speak"
require_relative "../utils/bug/job"

class HumanBeing
  include Utils::Speak

  attr_accessor :name, :job

  def initialize(name)
    @name = name
    # Porque nao acusa erro aqui? [CORRIGIDO: faltava importar]
    # Porque no projeto da Lovell nao precisa importar no arquivo?
    @job = Utils::Bug::Job.new("Undefined")
  end

  def update_job(job)
    @job = job
  end
end