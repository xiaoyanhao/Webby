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
  Problems.insert {
    title: "Sass进阶篇",
    tips: "Sass使你摆脱重复编写css代码的工作。",
    number: 509,
    cover: "images/problem4.jpg",
    classification: "Sass"
  }
  Problems.insert {
    title: "七夕言情",
    tips: "为七夕节准备的HTML5+JS+CSS3特效案例",
    number: 1300,
    cover: "images/problem5.jpg",
    classification: "CSS3"
  }
  Problems.insert {
    title: "Tooltip",
    tips: "使用HTML5技术制作一个漂亮的SVG气泡",
    number: 822,
    cover: "images/problem6.jpg",
    classification: "HTML5"
  }

Meteor.publish "problems", ->
  return Problems.find!