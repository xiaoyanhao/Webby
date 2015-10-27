if Meteor.is-client
  Template['contest_list'].helpers {
    contest_items: ->
      contest_items = []

      for i from 1 to 4
        contest_items.push {
          num_of_participant: '4156'
          title: 'Webby年度挑战赛'
          avatar: 'images/contest/avatar1.jpeg'
          author_name: '系统管理员'
          start_time: '2015-12-10 18:30'
          end_time: '2015-12-10 22:30'
        }

      contest_items
  }

  Template['webby_contest'].events {
    'click .my-tab a': (event)!->
      $ '.my-tab li' .remove-class 'selected'
      $ event.target .parent! .add-class 'selected'

    'click .pagination li': (event)!->
      $ '.pagination li' .remove-class 'active'
      $ event.target .add-class 'active'

  }