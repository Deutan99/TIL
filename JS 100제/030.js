// # 문제30 : 문자열 속 문자 찾기

// 문자 pineapple에는 apple이라는 문자가 숨어 있습니다. 원범이는 이렇듯 문자열 속에 숨어있는 문자를 찾아보려고 합니다.

// 첫번째 입력에서는 문자열이 입력되고, 두번째에는 찾을 문자가 입력되어야 합니다.
// **그 문자가 시작하는 index를 반환하는 프로그램**을 만들어 주세요

// 입력
// pineapple is yummy
// apple

// 출력
// 4

const sentence = prompt("문장을 입력해주세요.");
const word = prompt('단어를 입력해주세요.');

console.log(sentence.indexOf(word));
//indexOf() 메서드는 호출한 스트링 객체나 배열에서 주어진 값과 일치하는 값 혹은 요소의 첫 번째 인덱스를 반환하고 존재하지 않으면 -1을 반환한다.
