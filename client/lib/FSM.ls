# Finite-state-machine
class @FSM

  (options)!->
    @name = options.name
    @dom = $ options.dom
    @runtime = options.runtime

    @activate-machine!

  create-transition: (from-state, to-state)~>
    !~>
      @dom .remove-class from-state
      @dom .add-class to-state

  activate-machine: !->
    @dom .add-class @runtime.initial-state

    for from-to, events of @runtime.transitions
      from-to = from-to.split ' -> '
      from-states = from-to[0].split ','
      to-state = from-to[1]
      for from-state in from-states
        for event, selector of events
          $ selector .bind event, @create-transition from-state, to-state
