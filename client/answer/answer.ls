
Template['webby_answer_solutions'].helpers do
  discuss-data: ->
    [
      {src: 'https://ss0.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=167939925,4162465656&fm=21&gp=0.jpg', comment: '不错不错，做的像模像样。美中不足的是，中心的圆圈是突然变大的，不是渐变。'},
      {src: 'https://ss0.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=980200403,2803782645&fm=11&gp=0.jpg', comment: '我觉得做的非常好啊！基本上完成要求了，真实佩服。我现在要看看代码，研究一下。'},
      {src: 'https://ss0.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1164853378,3476526399&fm=21&gp=0.jpg', comment: '真实厉害，请问答主是用了多长时间来做，我做了好久都没能实现这么好的效果。'}
      {src: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=4016443836,1705192102&fm=21&gp=0.jpg" alt="" class="circle responsive-img', comment: '哇哇哇，学习了学习了，果断mark。对了，答主用了什么框架了吗，还是纯css实现的？'}
    ]

Template['webby_answer_solutions'].on-rendered !->
  @.$('ul.tabs').tabs!

Template['webby_answer_mysolution'].on-rendered !->
  @.$('ul.tabs').tabs!

Template['EditorPage'].helpers do
  idname: ->
    console.log @idName
    @idName


Template['EditorPage'].helpers do
  editorOptions: ->
    if @mode is '1'
      mode = 'htmlembedded'
    else if @mode is '2'
      mode = 'css'
    else
      mode = 'javascript'

    console.log mode

    option =
      theme: 'paraiso-dark'
      keyMap: 'sublime'
      lineNumbers: true,
      mode: mode

  editorCode: ->
    "Code to show in editor"

Template['webby_answer_mysolution'].events do
  'click .full-screen': !->
    # console.log cm
    Template.instance!.$('.webby-answer-mysolution').toggle-class 'my-solution-full-screen'
