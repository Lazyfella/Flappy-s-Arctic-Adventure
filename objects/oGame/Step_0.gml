/// @description Insert description here
// You can write your code in this editor
// Check if the maximum score has been reached, and show the message if it has
if (global.score >= global.max_score && !showed_message) {
  show_message("All Fish collected");
  showed_message = true;
}