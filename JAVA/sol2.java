class Solution {
    public int solution(int a, int d, boolean[] included) {
        int answer = 0;
        int n = included.length; 
        
        for (int i = 0; i < n; i++) {
            if (included[i] == true) {
                int an = a + i * d; // 등차수열의 일반항
                answer += an;
            }
        }
        return answer;
    }
}
