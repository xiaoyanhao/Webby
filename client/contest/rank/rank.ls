rank-data =
  * rank: 1
    username: 'Max'
    avatar: 'images/contest/avatar2.png'
    submit_num: 5
    solve_num: 3
    score: 233

  * rank: 2
    username: 'JS高手'
    avatar: 'images/contest/avatar4.jpeg'
    submit_num: 6
    solve_num: 3
    score: 207

  * rank: 3
    username: '码农'
    avatar: 'images/contest/avatar5.jpeg'
    submit_num: 8
    solve_num: 2
    score: 159

  * rank: 4
    username: '地主'
    avatar: 'images/contest/avatar1.jpeg'
    submit_num: 3
    solve_num: 1
    score: 85

  * rank: 5
    username: 'fool'
    avatar: 'images/contest/avatar3.jpeg'
    submit_num: 3
    solve_num: 0
    score: 0


if Meteor.is-client
  Template['contest_rank'].helpers {
    rank_items: -> rank-data
      # rank_items = []

      # for i from 1 to 4
      #   rank_items.push {
      #     rank: i
      #     username: 'aaa' + i
      #     avatar: 'images/contest/avatar2.png'
      #     submit_num: i + 2
      #     solve_num: 3
      #     score: 270 - i * 6
      #   }

      # rank_items
  }