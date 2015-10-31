
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
    @idName


Template['EditorPage'].helpers do
  editorOptions: ->
    if @mode is '1'
      mode = 'htmlembedded'
    else if @mode is '2'
      mode = 'css'
    else
      mode = 'javascript'

    # console.log mode

    option =
      theme: 'paraiso-dark'
      keyMap: 'sublime'
      lineNumbers: true,
      mode: mode

  editorCode: ->
    console.log @
    if @idName is "html"
      '<div><p> webby is good! </p></div>'
    else if @idName is 'css'
      'div {
        width: 100px;
        height: 100px;
        background: blue;
      }
      p {
        font-size: 20px
      }'
    else if @idName is 'javascript'
      # '(function() {
      #   alert("webby is good!");
      # })()'
      "Talk is cheap, show me the code!"

Template['webby_answer_mysolution'].events do
  'click .full-screen': !->
    Template.instance!.$('.webby-answer-mysolution').toggle-class 'my-solution-full-screen'

  'click .webby-answer-mysolution .my-solution ul li.preview': !->
    preview = Template.instance().$("\#preview")
    preview.children!remove!
    
    html = $("\#html").val()
    css = $("\#css").val()
    js = $("\#javascript").val()

    css = '.my-answer ' + css 
    css1 = css.replace /}/ig, '} .my-answer '
    css2 = css.replace /\n/ig, ''
    css3 = css2.replace /\t/ig, ''

    console.log css
    console.log css1
    console.log css2
    console.log css3


    # console.log html, css, js

    div = document.createElement("div")
    div.className = 'my-answer'
    div.innerHTML = html

    console.log div

    style = document.createElement("style")
    style.innerHTML = css1

    console.log style

    script = document.createElement("script")
    script.innerHTML = js

    console.log script
    
    preview.append div
    preview.append style
    preview.append script




