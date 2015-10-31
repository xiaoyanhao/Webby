Template.webby_sidebar.on-created !->
  @expand-main-container = !->
    $ '.main-container' .remove-class 'collapsed' .add-class 'expanded'

  @collapse-main-container = !->
    $ '.main-container' .remove-class 'expanded' .add-class 'collapsed'

  @create-sidebar-FSM = !->
    options =
      name: 'sidebar'
      dom: '.webby-sidebar'
      runtime:
        initial-state: 'initial expanded'
        transitions:
          'expanded,initial -> collapsed':
            'click':
              'selector': '#webby-sidebar .collapse-sidebar'
              'action': @expand-main-container
          'collapsed -> expanded':
            'click':
              'selector': '#webby-sidebar .expand-sidebar'
              'action': @collapse-main-container

    sidebar-FSM = new FSM options

Template.webby_sidebar.on-rendered !->
  @$ '.button-collapse' .side-nav!
  @create-sidebar-FSM!
