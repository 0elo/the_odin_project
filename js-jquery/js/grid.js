$(document).ready(function() {

  createGrid(16*16);
  pixelate();
  reset();
  toggleOutline();
  newGrid();

});

function createGrid(numBlocks) {

  for (i = 0; i < numBlocks; i++) {
      //$('.container').append("<div class='box'>'Row '+ i +' Col ' +j</div>");
      //$('.container').append('<div class="box">''Row ' + i + ' Col ' + j'</div>');
      $('.container').append("<div class='box'></div>");
    }

    newLength = $('.container').height() / Math.sqrt(numBlocks);
    $('.box').height(newLength);
    $('.box').width(newLength);

}

function newGrid() {
  $('.newGrid').click(function() {
    input = prompt("Pick a grid size! (e.g. enter 16 for 16x16 grid)");
    while (input > 48) {
      alert("Making grid size greater than 48x48 makes everything wonky!");
      input = prompt("Hey, you should pick a more reasonable grid size!");
    }
    $('.container').empty();
    createGrid(Math.pow(input,2));
    pixelate();
    //reset();
    return false;
  });
}

function pixelate() {
  $('.box').mouseenter(function() {
    $(this).css('background-color', 'black');
  })
}

function reset() {
  $('.reset').click(function() {
    $('.box').css('background-color', 'white');
    return false;
  });
}

function toggleOutline() {
  var state = false;
  $(".toggle").on('click', function() {
      $('.box').css("outline", state ? this.value : 'none');
      state = !state;
      return false;
  });
}
