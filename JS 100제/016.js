var words = prompt('단어를 입력해주세요.');
console.log(words.split("").reverse().join(""));

/*
문자열은 reverese() 함수가 없으므로 배열을 만들고 배열을 뒤집고 다시 배열을 문자열로 반환한다.
* split() 메서드는 문자열을 배열로 만들어 반환하고,
* reverse() 메서드는 배열의 순서를 반전하며,
* join() 메서드는 원소를 모두 붙여 문자열로 반환합니다.
*/

// 다른 답안
const n = prompt('입력하세요.');

const reverseString = n.split('').reverse().join('');
console.log(reverseString);