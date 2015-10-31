
Router.route '/', !->
  @render 'webby_answer'

Router.route '/problem', !->
  @render 'webby_problem'

Router.route '/contest', !->
  @render 'webby_contest'

Router.route '/test_contest', !->
  @render 'contest_layout'