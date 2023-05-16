//1. 함수 사용
const word = prompt('입력하세요.');

function replaceAll(str, searchStr, replaceStr) {
   return str.split(searchStr).join(replaceStr);
}

console.log(replaceAll(word,"q","e"));

//2. 정규식 사용
const word2 = prompt('입력하세요.');

console.log(word2.replace(/q/gi, 'e'));