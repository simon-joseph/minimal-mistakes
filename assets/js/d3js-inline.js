
function appendCanvas(placeholder_id, title, initDrawing) {
    var canvasPlaceholder = d3.select("#"+placeholder_id);
    canvasPlaceholder.append("em").text(title);
    var canvas = canvasPlaceholder.append("canvas");
    canvas.text("Cannot display canvas. Sorry, this is only supported by modern browsers.");
    var ctx = canvas[0][0].getContext("2d");
    initDrawing(title, canvasPlaceholder, canvas, ctx);
}
