//
//  141.cpp
//  
//
//  Created by xuebingxin on 2019/9/27.
//

#include <stdio.h>

class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        int sizeA = 0;
        int sizeB = 0;
        ListNode *pa = headA;
        ListNode *pb = headB;
        for (ListNode *p = headA; p; p = p->next) {
            sizeA++;
        }
        for (ListNode *p = headB; p; p = p->next) {
            sizeB++;
        }
        
        if (sizeA > sizeB){
            for(int a = 0; a < sizeA - sizeB; a++){
                pa = pa->next;
            }
        } else {
            for(int a = 0; a < sizeB - sizeA; a++){
                pb = pb->next;
            }
        }
        ListNode *p1 = pa;
        ListNode *p2 = pb;
        for (; p1 && p2; p1 = p1->next, p2 = p2->next) {
            if(p1 == p2) {
                return p1;
            }
        }
        return nullptr;
    }
};
