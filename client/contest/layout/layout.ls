if Meteor.is-client
  Template['contest_layout'].events {
    'click .tabs a': !->
      $ '.tabs li' .remove-class 'active'
      $ event.target .parent! .add-class 'active'

      active-li = $ 'li.active'
      inner-wrapper = $ '.inner-wrapper'

      console.log active-li

      inner-wrapper .remove-class 'overview submit rank'

      switch
      | active-li .has-class 'overview' => inner-wrapper.add-class 'overview'
      | active-li .has-class 'submit' => inner-wrapper.add-class 'submit'
      | active-li .has-class 'rank' => inner-wrapper.add-class 'rank'


  }