// # 문제19 : 제곱을 구하자

// 공백으로 구분하여 두 숫자 a와 b가 주어지면, **a의 b승**을 구하는 프로그램을 작성하세요.

var [a, b] = prompt('숫자를 입력해주세요.').split(" "); //공백을 기준으로 나고 싶다면? split()함수에 " " 공백이 들어간 문자열을 넣어주면 된다.

console.log(Math.pow(a, b));

//다른 답안
const n = prompt('수를 입력하세요.').split(' ');

console.log(Math.pow(parseInt(n[0], 10), parseInt(n[1], 10)));