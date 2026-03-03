class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(final ListNode? head) {
    ListNode? slow = head, fast = head;

    while (fast?.next?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }

    return fast?.next == null ? slow : slow?.next;
  }
}
