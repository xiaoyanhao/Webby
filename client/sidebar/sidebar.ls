if Meteor.is-client
  Template.webby_sidebar.on-created !->
    @create-sidebar-FSM = !->
      options =
        name: 'sidebar'
        dom: '.webby-sidebar'
        runtime:
          initial-state: 'expanded'
          transitions:
            'expanded -> collapsed':
              'click': '#webby-sidebar .collapse-sidebar a'
            'collapsed -> expanded':
              'click': '#webby-sidebar .expand-sidebar a'

      sidebar-FSM = new FSM options

  Template.webby_sidebar.on-rendered !->
    @$ '.button-collapse' .side-nav!
    @create-sidebar-FSM!
