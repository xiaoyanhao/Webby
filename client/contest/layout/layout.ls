if Meteor.is-client
  Template['contest_layout'].events {
    'click .my-tab a': !->
      $ '.my-tab li' .remove-class 'selected'
      $ event.target .parent! .add-class 'selected'

      selected-li = $ 'li.selected'
      inner-wrapper = $ '.inner-wrapper'

      console.log selected-li

      inner-wrapper .remove-class 'overview problem rank'

      switch
      | selected-li .has-class 'overview' => inner-wrapper.add-class 'overview'
      | selected-li .has-class 'problem' => inner-wrapper.add-class 'problem'
      | selected-li .has-class 'rank' => inner-wrapper.add-class 'rank'


  }