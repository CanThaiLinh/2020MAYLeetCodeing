class Solution {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        var root : TreeNode?
        for value in preorder{
            bstUtil(root: &root, value: value)
        }
        return root
    }
    
    func bstUtil(root : inout TreeNode?, value : Int)->TreeNode{
        if root == nil{
            root = TreeNode(value)
            return root!
        }
        if root!.val > value{
            root!.left = bstUtil(root: &root!.left, value: value)
        }else{
            root!.right = bstUtil(root: &root!.right, value: value)
        }
        return root!
    }
}
