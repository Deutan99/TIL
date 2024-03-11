class Solution {
    public String solution(String my_string, int[][] queries) {
        char[] charArray = my_string.toCharArray(); // 문자열을 문자 배열로 변환합니다.
        
        for (int[] query : queries) {
            int start = query[0];
            int end = query[1];
            
            // start부터 end까지의 부분 문자열을 뒤집습니다.
            reverseSubstring(charArray, start, end);
        }
        
        return new String(charArray); // 문자 배열을 문자열로 변환하여 반환합니다.
    }
    
    // 문자 배열의 특정 부분을 뒤집는 함수
    private void reverseSubstring(char[] array, int start, int end) {
        while (start < end) {
            char temp = array[start];
            array[start] = array[end];
            array[end] = temp;
            start++;
            end--;
        }
    }
}
