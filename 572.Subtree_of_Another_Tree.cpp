struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution {
public:
    bool isSubtree(TreeNode* s, TreeNode* t) {
        if (s == NULL) {
            return false;
        }
        if (isSame(s, t)){
            return true;
        }
        return isSubtree(s -> left, t) || isSubtree(s -> right, t);
    }
    
    bool isSame(TreeNode* pRoot1, TreeNode* pRoot2) {
        if (pRoot1 != NULL && pRoot2 == NULL) {
            return false;
        } else if (pRoot1 == NULL && pRoot2 != NULL) {
            return false;
        } else if (pRoot1 == NULL && pRoot2 == NULL) {
            return true;
        } else if (pRoot1 -> val != pRoot2 -> val) {
            return false;
        }
        
        return isSame(pRoot1 -> right, pRoot2 -> right) && isSame(pRoot1 -> left, pRoot2 -> left);
    }
};
