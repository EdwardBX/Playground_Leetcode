//
//  117.cpp
//  
//
//  Created by xuebingxin on 2020/2/9.
//

#include <stdio.h>

class Node {
public:
    int val;
    Node* left;
    Node* right;
    Node* next;
    
    Node() : val(0), left(NULL), right(NULL), next(NULL) {}
    
    Node(int _val) : val(_val), left(NULL), right(NULL), next(NULL) {}
    
    Node(int _val, Node* _left, Node* _right, Node* _next)
    : val(_val), left(_left), right(_right), next(_next) {}
};

class Solution {
public:
    Node* connect(Node* root) {
        while (root == NULL) {
            return NULL;
        }
        
        if (root -> left != NULL) {
            root -> left -> next = root -> right ?: findNext(root -> next);
        }
        
        if (root -> right != NULL) {
            root -> right -> next = findNext(root -> next);
        }
        
        connect(root -> right);
        connect(root -> left);
        
        return root;
    }
};

Node* findNext(Node* curr) {
    if (!curr) {
        return NULL;
    }
    
    if (curr -> left != NULL) {
        return curr -> left;
    }
    
    if (curr -> right != NULL) {
        return curr -> right;
    }
    
    return findNext(curr -> next);
}
