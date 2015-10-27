if Meteor.is-client
  Template['contest_rank'].helpers {
    rank_items: ->
      rank_items = []

      for i from 1 to 4
        rank_items.push {
          rank: i
          username: 'aaa' + i
          avatar: 'images/contest/avatar2.png'
          submit_num: i + 2
          solve_num: 3
          score: 270 - i * 6
        }

      rank_items
  }