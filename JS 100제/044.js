//자릿수의 합
let num = prompt("숫자를 입력해주세요.");
const arr = num.toString().split("").map(Number);
let answer = 0;

for (let i = 0; i < arr.length; i++) {
  answer += arr[i];
}

console.log("입력:", num);
console.log("출력:", answer);

//풀이
// let n = prompt('숫자를 입력하세요.');
// let sum = 0;

// while(n !== 0){
//   sum += (n % 10);
//   n = Math.floor(n/10);
// }

// console.log(sum);