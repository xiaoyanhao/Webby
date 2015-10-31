# Router.configure({
#   layoutTemplate: 'webby_home'
# });

# Router.route('/', {name: 'webby_home_index'});
# Router.route('/ranklist', {name: 'webby_ranklist'});
Router.route '/ranklist', !-> 
  @render 'webby_ranklist'

