Meteor.subscribe "problems"
Session.set "classification", "全部"

Template["webby_problem_body"].helpers do
  problems: ->
    if (Session.get "classification") is "全部"
      return Problems.find!
    else
      return Problems.find {classification: Session.get "classification"}

Template["webby_problem_nav"].events do
  "click .classification": (e)!->
    Session.set "classification", ($ e.target).text!
    $ '.classification' .remove-class 'active'
    $ e.target .add-class 'active'