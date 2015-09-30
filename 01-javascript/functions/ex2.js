
// 'en', 'es'

function helloWorld(languageCode) {

  var greeting = 'hello world';

  if (languageCode === 'en') {
    greeting = 'hello world';
  } else if (languageCode === 'de') {
    greeting = 'hallo, welt';    
  } else if (languageCode === 'es') {
    greeting = 'hola, mundo';
  }

  return greeting;
}