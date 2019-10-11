//
//  141.cpp
//  
//
//  Created by xuebingxin on 2019/9/27.
//

#include <stdio.h>

class Solution {
public:
    ListNode *detectCycle(ListNode *head) {
        if (head == NULL || head->next == NULL) {
            return NULL;
        }
        ListNode *p = head;
        ListNode *q = head;
        while (q != NULL && q->next != NULL) {
            p = p->next;
            q = q->next->next;
            
            if (p == q) {
                break;
            }
        }
        
        if (p != q) {
            return NULL;
        }
        
        p = head;
        while (p != q && q != NULL) {
            p = p -> next;
            q = q -> next;
        }
        
        return p;
    }
};
