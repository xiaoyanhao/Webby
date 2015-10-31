Template.body.on-created !->
  @create-body-FSM = !->
    options =
      name: 'body'
      dom: 'body'
      runtime:
        initial-state: 'initial'
        transitions: {}

    body-FSM = new FSM options

  @remove-initial-state = !->
    $ 'body' .remove-class 'initial'

Template.body.on-rendered !->
  @create-body-FSM!
  Meteor.set-timeout @remove-initial-state, 5 * 1000
