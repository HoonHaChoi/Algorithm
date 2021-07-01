class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result = nums1+nums2
    result = result.sorted(by: <)
    if result.count%2 != 0 {
        return Double(result[result.count/2])
    }
    return Double((result[result.count/2] + result[result.count/2 - 1])) / 2
    }
}
