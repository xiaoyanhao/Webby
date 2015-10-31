
Router.route '/', !->
  @render 'webby_home'

Router.route '/profile', !->
  @render 'webby_profile'

Router.route '/problem', !->
  @render 'webby_problem'

Router.route '/contest', !->
  @render 'webby_contest'

Router.route '/test_contest', !->
  @render 'contest_layout'

Router.route '/ranklist', !->
  @render 'webby_ranklist'

Router.route '/problem/problemId', !->
  @render 'webby_answer'

