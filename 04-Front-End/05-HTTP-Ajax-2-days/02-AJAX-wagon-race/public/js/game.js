$(document).ready(function() {

  $.get( "/session/create", function(data) {
    var session_id = data.id;
    $('#start-btn').show();
    $('#start-btn').on('click', function(e){
      e.preventDefault();
      $('#form_name').show();
      $('#start-btn').hide();
      $('#submit-btn').on('click', function(e){
        var name_of_player1 = $('#name_player1').val();
        var name_of_player2 = $('#name_player2').val();
        var url = "/session/" + session_id + "/game/create";
        var stringJSON = JSON.stringify({
          "players": [
          { "name": name_of_player1 },
          { "name": name_of_player2 }
          ]
        })
      });
    });
  });

  $.post(url, stringJSON, function(data) {
    var gameId = data.game.id
    $('#form_name').hide();
      runGame(gameId);
  });
});



//   runGame();
//   $('#restart-btn').on('click', runGame);
//   // $('#end-game p').append(gameWinner())
//   // $('#end-game').slideDown();
// });

// function runGame() {
//   restartGame();
//     $(document).on('keyup', function(event) {
//       // Detect which key was pressed and call the appropriate function
//       // Google "jquery keyup what key was pressed" if you don't know how
//       //player 1 : q code 80 / player2 : p code 81
//       result = gameWinner();

//       if (result == false) {
//         if (event.which == 80){
//            updatePlayerPosition('player1');
//         } else if (event.which == 81){
//            updatePlayerPosition('player2');
//         }
//       } else {
//         $('#end-game p').text(result);
//         $('#end-game').slideDown();
//         $(document).off('keyup');
//       }
//     });
// }

// function restartGame() {
//   $('#end-game').hide();

//   // Restart player1
//   $('#player1_race td').removeClass('active');
//   $('#player1_race td').eq(0).addClass('active');
//   // Restart player2
//   $('#player2_race td').removeClass('active');
//   $('#player2_race td').eq(0).addClass('active');
// }

// function gameWinner() {
//   var raceLength = $('#player1_race td').length - 1;

//   if ($('#player1_race td.active').index() == raceLength) {
//     return 'player 1 wins';
//   }
//   else if ($('#player2_race td.active').index() == raceLength) {
//     return 'player 2 wins';
//   }
//   else {
//     return false;
//   }
// }

// function updatePlayerPosition(player) {
//   var index = $('#' + player + '_race').find('.active').index();
//   $('#' + player + '_race td').eq(index).removeClass('active');
//   $('#' + player + '_race td').eq(index + 1).addClass('active');
// }