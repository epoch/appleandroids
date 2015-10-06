var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var goRight = true;


var catWalk = function() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left, 10);

  if (goRight) {
    img.style.left = (currentLeft + movePixels) + 'px';
    img.style.transform = "scaleX(-1)";
  } else {
    img.style.left = (currentLeft - movePixels) + 'px';    
    img.style.transform = "scaleX(1)";
  }

  if (goRight === true && currentLeft > (window.innerWidth - img.width)) {
    goRight = false; // turn left
  } else if (goRight === false && currentLeft < 0) {
    goRight = true; // turn right
  }  

  // if (currentLeft > (window.innerWidth - img.width)) {
  //   img.style.left = '0px';
  // }
}

var goFaster = function() {
  movePixels += 5;
}

var startCatWalk = function() {
  if (catTimer !== null) {
    return;
  }
  catTimer = window.setInterval(catWalk, delayMs);
}

var stopCatWalk = function() {
  clearInterval(catTimer);
  catTimer = null;
}

document.getElementById('start-btn').addEventListener('click', startCatWalk);
document.getElementById('stop-btn').addEventListener('click', stopCatWalk);
