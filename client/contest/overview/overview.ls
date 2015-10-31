problem-data =
  * finish: true
    submit_num: '265'
    title: '静态页面'
    difficulty: [0]
    average_score: 90

  * finish: false
    submit_num: '144'
    title: '环形菜单'
    difficulty: [0, 0, 0]
    average_score: 82

  * finish: true
    submit_num: '168'
    title: '表单排序'
    difficulty: [0, 0, 0]
    average_score: 85

  * finish: true
    submit_num: '34'
    title: '异步JS'
    difficulty: [0, 0, 0, 0, 0]
    average_score: 68

if Meteor.is-client
  Template['contest_overview'].helpers {
    problem_items: -> problem-data
  }