
contest-data =
  * num_of_participant: '4156'
    title: 'Webby年度挑战赛'
    avatar: 'images/contest/avatar1.jpeg'
    author_name: '系统管理员'
    start_time: '2015-12-10 18:30'
    end_time: '2015-12-10 22:30'

  * num_of_participant: '1634'
    title: '前端新手赛'
    avatar: 'images/contest/avatar2.png'
    author_name: '肖总'
    start_time: '2015-11-05 14:30'
    end_time: '2015-11-05 18:30'

  * num_of_participant: '755'
    title: 'CSS高级比赛'
    avatar: 'images/contest/avatar3.jpeg'
    author_name: 'star'
    start_time: '2015-11-07 09:00'
    end_time: '2015-11-07 12:00'

  * num_of_participant: '1564'
    title: 'JS娱乐赛'
    avatar: 'images/contest/avatar4.jpeg'
    author_name: 'dust'
    start_time: '2015-12-06 16:00'
    end_time: '2015-12-06 18:30'



Template['webby_contest'].on-rendered !->
  @.$('ul.tabs').tabs!

Template['contest_list'].helpers {
  contest_items: -> contest-data
}

Template['webby_contest'].events {
  'click .my-tab a': (event)!->
    $ '.my-tab li' .remove-class 'selected'
    $ event.target .parent! .add-class 'selected'

  'click .pagination li': (event)!->
    $ '.pagination li' .remove-class 'active'
    $ event.target .add-class 'active'

  'mouseenter .left-column-content': !->
    $ event.target .remove-class 'num' .add-class 'apply'

  'mouseleave .left-column-content': !->
    $ event.target .remove-class 'apply' .add-class 'num'
}