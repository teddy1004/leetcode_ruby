# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}`

def add_two_numbers(l1, l2)
  val = 0
  new_list = ListNode.new(0)

  l3 = new_list

  while l1 || l2
    if l1
      val += l1.val
      l1 = l1.next
    end

    if l2
      val += l2.val
      l2 = l2.next
    end

    l3.next = ListNode.new(val % 10)
    l3 = l3.next

    val /= 10
  end

  l3.next = ListNode.new(1) if val == 1

  new_list.next
end
