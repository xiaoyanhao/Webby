
submit-data =
  * title: '异步JS'
    length: 532
    time: '2015-10-31 22:40:34'

  * title: '异步JS'
    length: 486
    time: '2015-10-31 21:56:32'

  * title: '表单排序'
    length: 254
    time: '2015-10-31 21:02:45'

  * title: '表单排序'
    length: 312
    time: '2015-10-31 20:45:11'

  * title: '静态页面'
    length: 188
    time: '2015-10-31 20:20:03'


if Meteor.is-client
  Template['contest_submit'].helpers {
    submit_items: -> submit-data
  }