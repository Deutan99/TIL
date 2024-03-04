import java.util.*;

public class Solution {
    public ArrayList<Integer> solution(int[] arr) {
        ArrayList<Integer> answerList = new ArrayList<>();
        
        // 첫 번째 값은 무조건 추가
        answerList.add(arr[0]);
        
        // 이전 값과 현재 값을 비교하여 중복된 값이 아니면 추가
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] != arr[i - 1]) {
                answerList.add(arr[i]);
            }
        }
        
        return answerList; // 중복된 값 제거 후 리스트 반환
    }
}
