if Problems.find!.count! is 0
  Problems.insert {
    title: "HTML5小游戏---爱心鱼",
    tips: "学做html5游戏，从超有爱的小清新游戏开始，轻松带你上手。",
    number: 5244,
    cover: "images/problem1.jpg",
    classification: "HTML5"
  }
  Problems.insert {
    title: "CSS3动画---环形菜单",
    tips: "用CSS3做出酷炫动态菜单效果。",
    number: 2102,
    cover: "images/problem2.jpg",
    classification: "CSS3"
  }
  Problems.insert {
    title: "JavaScript训练---表格排序",
    tips: "Table sorter包括JavaScript和一点CSS，能够让原始的html table变得可以分别按照各栏数据值，对各行排序。",
    number: 1102,
    cover: "images/problem3.jpg",
    classification: "JavaScript"
  }

Meteor.publish "problems", ->
  return Problems.find!