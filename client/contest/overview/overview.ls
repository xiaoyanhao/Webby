if Meteor.is-client
  Template['contest_overview'].helpers {
    problem_items: ->
      problem_items = []

      for i from 1 to 4
        problem_items.push {
          finish: i <= 2
          submit_num: '100'
          title: '环形菜单'
          difficulty: [0,0,0]
          average_score: 80
        }

      problem_items
  }