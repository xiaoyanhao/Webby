
Router.route '/', !-> 
  @render 'webby_answer'

Router.route '/problem', !-> 
  @render 'webby_problem'