



Router.route '/', !-> 
  @render 'webby_answer'


Router.route '/ranklist', !-> 
  @render 'webby_ranklist'

Router.route '/problem', !-> 
  @render 'webby_problem'

