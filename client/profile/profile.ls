window.onload = !->
  # $ 'input#input_text, textarea#textarea1' .character-counter!
  canvas = document.get-element-by-id "myGrowth"
  if canvas
    my-growth = new Chart canvas.get-context "2d" .Line my-growth-fake-datas, {responsive: false, bezier-curve: false}

  else set-timeout (!->
    canvas = document.get-element-by-id "myGrowth"
    my-growth = new Chart canvas.get-context "2d" .Line my-growth-fake-datas, {responsive: false, bezier-curve: false}) , 1000

