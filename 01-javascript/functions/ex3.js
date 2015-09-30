

function assignGrade(score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 50) {
    return 'D';
  } else {
    return 'F';
  }
}

var testScore = 0;

while (testScore <= 100) {
  console.log(testScore, assignGrade(testScore) );
  testScore += 1; // testScore++
}