fake-data = 
 *place: '1',
  username: 'zhangsan',
  personal-info: 'xxxxxxxxxxxssssssss',
  problemnum:'32',
  grade: '300',
  avatar: "images/default01.png"

 *place: '2',
  username: 'lisi',
  personal-info: 'xxxxxxxxxxx',
  problemnum:'20',
  grade: '200',
  avatar: 'images/default02.png'

 *place: '3',
  username: 'wangwu',
  personal-info: 'xxxxxxxxxxx',
  problemnum:'12',
  grade: '120',
  avatar: "images/default03.png"

 *place: '4',
  username: 'zholiu',
  personal-info: 'xxxxxxxxxxx',
  problemnum:'11',
  grade: '110',
  avatar: "images/default04.png"

 *place: '5',
  username: 'ajhfas',
  personal-info: 'xxxxxxxxxxx',
  problemnum:'9',
  grade: '90',
  avatar: "images/default05.png"

 *place: '6',
  username: 'goodone',
  personal-info: 'xxxxxxxxxxx',
  problemnum:'7',
  grade: '70',
  avatar: "images/default06.png"



if Meteor.is-client

  Template['webby_ranklist_container'].helpers {

    ranklist_items: ->
      console.log fake-data[0]

      fake-data
  }
  Template['webby_ranklist_personal'].helpers {

    personal_info: ->
      personal_info = []
      personal_info.push {
        place: '1'
        avatar: "images/default01.png"
        username : 'zhangsan'
        problemnum:'32'
        grade: '300'
      }
      # console.log personal_info
      personal_info[0]
  }

