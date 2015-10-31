window.onload = !->
  # $ 'input#input_text, textarea#textarea1' .character-counter!
  if canvas = document.get-element-by-id "myGrowth"
    my-growth = new Chart canvas.get-context "2d" .Line my-growth-fake-datas, {responsive: false, bezier-curve: false}

