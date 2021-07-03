import Foundation

//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() {
//        self.val = 0
//        self.left = nil
//        self.right = nil
//    }
//    public init(_ val: Int) {
//        self.val = val
//        self.left = nil
//        self.right = nil
//    }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        guard let root = root else {
            return true
        }
        
        return isValid(root, min: nil, max: nil)
    }
    
    func isValid(_ root: TreeNode?, min: Int? = nil, max: Int? = nil) -> Bool {
        guard let root = root else {
            return true
        }
        
        if let min = min, min >= root.val { return false }
        if let max = max, max <= root.val { return false }
        
        return isValid(root.left, min: min, max: root.val) && isValid(root.right, min: root.val, max: max)
    }
}
