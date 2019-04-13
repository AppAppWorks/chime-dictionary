//Copyright (c) 2016 Matthijs Hollemans and contributors
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.
import Foundation

private enum RBTreeColor {
    case red
    case black
}

private enum RotationDirection {
    case left
    case right
}

// MARK: - RBNode
public class RBTreeNode<T, V> : Equatable where T : Comparable {
    public typealias RBNode = RBTreeNode<T, V>
    
    fileprivate var color: RBTreeColor = .black
    fileprivate var key: T?
    var value: V?
    var leftChild: RBNode?
    var rightChild: RBNode?
    fileprivate weak var parent: RBNode?
    
    public init(key: T? = nil, value: V? = nil, leftChild: RBNode? = nil, rightChild: RBNode? = nil, parent: RBNode? = nil) {
        self.key = key
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
        self.parent = parent
        
        self.leftChild?.parent = self
        self.rightChild?.parent = self
    }
    
    var isRoot: Bool {
        return parent == nil
    }
    
    var isLeaf: Bool {
        return rightChild == nil && leftChild == nil
    }
    
    var isNullLeaf: Bool {
        return key == nil && isLeaf && color == .black
    }
    
    var isLeftChild: Bool {
        return parent?.leftChild === self
    }
    
    var isRightChild: Bool {
        return parent?.rightChild === self
    }
    
    var grandparent: RBNode? {
        return parent?.parent
    }
    
    var sibling: RBNode? {
        if isLeftChild {
            return parent?.rightChild
        } else {
            return parent?.leftChild
        }
    }
    
    var uncle: RBNode? {
        return parent?.sibling
    }
}

// MARK: - RedBlackTree
public class RedBlackTree<T, V> where T : Comparable {
    public enum SearchResult {
        case hit
        case precede
        case follow
    }
    
    public struct Comparator {
        fileprivate let compare: (_ lhs: T, _ rhs: T) -> Bool
        private init(compare: @escaping (_ lhs: T, _ rhs: T) -> Bool) {
            self.compare = compare
        }
        public static var normal: Comparator {
            return .init(compare: <)
        }
        public static var reversed: Comparator {
            return .init(compare: >)
        }
    }
    
    public typealias RBNode = RBTreeNode<T, V>
    
    fileprivate(set) var root: RBNode
    fileprivate(set) var size = 0
    fileprivate let nullLeaf = RBNode()
    private let comparator: Comparator
    
    public init(comparator: Comparator = .normal) {
        root = nullLeaf
        self.comparator = comparator
    }
}

// MARK: - Equatable protocol
extension RBTreeNode {
    static public func == <T, V>(lhs: RBTreeNode<T, V>, rhs: RBTreeNode<T, V>) -> Bool {
        return lhs.key == rhs.key
    }
}

// MARK: - Finding a nodes successor
extension RBTreeNode {
    /*
     * Returns the inorder successor node of a node
     * The successor is a node with the next larger key value of the current node
     */
    public func getSuccessor() -> RBNode? {
        // If node has right child: successor min of this right tree
        if let rightChild = self.rightChild {
            if !rightChild.isNullLeaf {
                return rightChild.first()
            }
        }
        // Else go upward until node left child
        var currentNode = self
        var parent = currentNode.parent
        while currentNode.isRightChild {
            if let parent = parent {
                currentNode = parent
            }
            parent = currentNode.parent
        }
        return parent
    }
}

// MARK: - Searching
extension RBTreeNode {
    /*
     * Returns the node with the minimum key of the current subtree
     */
    public func first() -> RBNode? {
        if let leftChild = leftChild {
            if !leftChild.isNullLeaf {
                return leftChild.first()
            }
            return self
        }
        return self
    }
    
    /*
     * Returns the node with the maximum key of the current subtree
     */
    public func last() -> RBNode? {
        if let rightChild = rightChild {
            if !rightChild.isNullLeaf {
                return rightChild.last()
            }
            return self
        }
        return self
    }
}

extension RedBlackTree {
    /*
     * Returns the node with the given key |input| if existing
     */
    public func search(input: T) -> RBNode? {
        return search(key: input, node: root)
    }
    
    /*
     * Returns the node with given |key| in subtree of |node|
     */
    fileprivate func search(key: T, node: RBNode?) -> RBNode? {
        // If node nil -> key not found
        guard let node = node else {
            return nil
        }
        // If node is nullLeaf == semantically same as if nil
        if !node.isNullLeaf {
            if let nodeKey = node.key {
                // Node found
                if key == nodeKey {
                    return node
                } else if comparator.compare(key, nodeKey) {
                    return search(key: key, node: node.leftChild)
                } else {
                    return search(key: key, node: node.rightChild)
                }
            }
        }
        return nil
    }
}

// MARK: - Finding maximum and minimum value
extension RedBlackTree {
    /*
     * Returns the minimum key value of the whole tree
     */
    public func firstKey() -> T? {
        guard let firstNode = root.first() else {
            return nil
        }
        return firstNode.key
    }
    
    /*
     * Returns the maximum key value of the whole tree
     */
    public func lastKey() -> T? {
        guard let lastNode = root.last() else {
            return nil
        }
        return lastNode.key
    }
    
    /*
     * Returns the minimum key value of the whole tree
     */
    public func firstValue() -> V? {
        guard let firstNode = root.first() else {
            return nil
        }
        
        return firstNode.value
    }
    
    /*
     * Returns the maximum key value of the whole tree
     */
    public func lastValue() -> V? {
        guard let lastNode = root.last() else {
            return nil
        }
        return lastNode.value
    }
}

// MARK: - Subscript

extension RedBlackTree {
    public subscript(key: T) -> V? {
        get {
            return search(input: key)?.value
        }
        set {
            if let value = newValue {
                if let node = search(input: key) {
                    node.value = value
                } else {
                    insert(key: key, value: value)
                }
            } else {
                delete(key: key)
            }
        }
    }
    
    public subscript(range: PartialRangeUpTo<T>) -> [V] {
        return slice(key: range.upperBound, comparator: .less).compactMap { $0.value }
    }
    
    public subscript(range: PartialRangeThrough<T>) -> [V] {
        return slice(key: range.upperBound, comparator: .lessOrEqual).compactMap { $0.value }
    }
    
    public subscript(range: PartialRangeFrom<T>) -> [V] {
        return slice(key: range.lowerBound, comparator: .greaterOrEqual).compactMap { $0.value }
    }
}

// MARK: - Inserting new nodes
extension RedBlackTree {
    /*
     * Insert a node with key |key| into the tree
     * 1. Perform normal insert operation as in a binary search tree
     * 2. Fix red-black properties
     * Runntime: O(log n)
     */
    public func insert(key: T, value: V? = nil) {
        if root.isNullLeaf {
            root = RBNode(key: key, value: value)
        } else {
            insert(input: RBNode(key: key, value: value), node: root)
        }
        
        size += 1
    }
    
    /*
     * Nearly identical insert operation as in a binary search tree
     * Differences: All nil pointers are replaced by the nullLeaf, we color the inserted node red,
     * after inserting we call insertFixup to maintain the red-black properties
     */
    private func insert(input: RBNode, node: RBNode) {
        guard let inputKey = input.key, let nodeKey = node.key else {
            return
        }
//        if comparator.compare(inputKey, nodeKey) {
        if inputKey < nodeKey {
            guard let child = node.leftChild else {
                addAsLeftChild(child: input, parent: node)
                return
            }
            if child.isNullLeaf {
                addAsLeftChild(child: input, parent: node)
            } else {
                insert(input: input, node: child)
            }
        } else {
            guard let child = node.rightChild else {
                addAsRightChild(child: input, parent: node)
                return
            }
            if child.isNullLeaf {
                addAsRightChild(child: input, parent: node)
            } else {
                insert(input: input, node: child)
            }
        }
    }
    
    private func addAsLeftChild(child: RBNode, parent: RBNode) {
        parent.leftChild = child
        child.parent = parent
        child.color = .red
        insertFixup(node: child)
    }
    
    private func addAsRightChild(child: RBNode, parent: RBNode) {
        parent.rightChild = child
        child.parent = parent
        child.color = .red
        insertFixup(node: child)
    }
    
    /*
     * Fixes possible violations of the red-black property after insertion
     * Only violation of red-black properties occurs at inserted node |z| and z.parent
     * We have 3 distinct cases: case 1, 2a and 2b
     * - case 1: may repeat, but only h/2 steps, where h is the height of the tree
     * - case 2a -> case 2b -> red-black tree
     * - case 2b -> red-black tree
     */
    private func insertFixup(node z: RBNode) {
        if !z.isNullLeaf {
            guard let parentZ = z.parent else {
                return
            }
            // If both |z| and his parent are red -> violation of red-black property -> need to fix it
            if parentZ.color == .red {
                guard let uncle = z.uncle else {
                    return
                }
                // Case 1: Uncle red -> recolor + move z
                if uncle.color == .red {
                    parentZ.color = .black
                    uncle.color = .black
                    if let grandparentZ = parentZ.parent {
                        grandparentZ.color = .red
                        // Move z to grandparent and check again
                        insertFixup(node: grandparentZ)
                    }
                }
                    // Case 2: Uncle black
                else {
                    var zNew = z
                    // Case 2.a: z right child -> rotate
                    if parentZ.isLeftChild && z.isRightChild {
                        zNew = parentZ
                        leftRotate(node: zNew)
                    } else if parentZ.isRightChild && z.isLeftChild {
                        zNew = parentZ
                        rightRotate(node: zNew)
                    }
                    // Case 2.b: z left child -> recolor + rotate
                    zNew.parent?.color = .black
                    if let grandparentZnew = zNew.grandparent {
                        grandparentZnew.color = .red
                        if z.isLeftChild {
                            rightRotate(node: grandparentZnew)
                        } else {
                            leftRotate(node: grandparentZnew)
                        }
                        // We have a valid red-black-tree
                    }
                }
            }
        }
        root.color = .black
    }
}

// MARK: - Deleting a node
extension RedBlackTree {
    /*
     * Delete a node with key |key| from the tree
     * 1. Perform standard delete operation as in a binary search tree
     * 2. Fix red-black properties
     * Runntime: O(log n)
     */
    public func delete(key: T) {
        if size == 1 {
            root = nullLeaf
            size -= 1
        } else if let node = search(key: key, node: root) {
            if !node.isNullLeaf {
                delete(node: node)
                size -= 1
            }
        }
    }
    
    /*
     * Nearly identical delete operation as in a binary search tree
     * Differences: All nil pointers are replaced by the nullLeaf,
     * after deleting we call insertFixup to maintain the red-black properties if the delted node was
     * black (as if it was red -> no violation of red-black properties)
     */
    private func delete(node z: RBNode) {
        var nodeY = RBNode()
        var nodeX = RBNode()
        if let leftChild = z.leftChild, let rightChild = z.rightChild {
            if leftChild.isNullLeaf || rightChild.isNullLeaf {
                nodeY = z
            } else {
                if let successor = z.getSuccessor() {
                    nodeY = successor
                }
            }
        }
        if let leftChild = nodeY.leftChild {
            if !leftChild.isNullLeaf {
                nodeX = leftChild
            } else if let rightChild = nodeY.rightChild {
                nodeX = rightChild
            }
        }
        nodeX.parent = nodeY.parent
        if let parentY = nodeY.parent {
            // Should never be the case, as parent of root = nil
            if parentY.isNullLeaf {
                root = nodeX
            } else {
                if nodeY.isLeftChild {
                    parentY.leftChild = nodeX
                } else {
                    parentY.rightChild = nodeX
                }
            }
        } else {
            root = nodeX
        }
        if nodeY != z {
            z.key = nodeY.key
        }
        // If sliced out node was red -> nothing to do as red-black-property holds
        // If it was black -> fix red-black-property
        if nodeY.color == .black {
            deleteFixup(node: nodeX)
        }
    }
    
    /*
     * Fixes possible violations of the red-black property after deletion
     * We have w distinct cases: only case 2 may repeat, but only h many steps, where h is the height
     * of the tree
     * - case 1 -> case 2 -> red-black tree
     *   case 1 -> case 3 -> case 4 -> red-black tree
     *   case 1 -> case 4 -> red-black tree
     * - case 3 -> case 4 -> red-black tree
     * - case 4 -> red-black tree
     */
    private func deleteFixup(node x: RBNode) {
        var xTmp = x
        if !x.isRoot && x.color == .black {
            guard var sibling = x.sibling else {
                return
            }
            // Case 1: Sibling of x is red
            if sibling.color == .red {
                // Recolor
                sibling.color = .black
                if let parentX = x.parent {
                    parentX.color = .red
                    // Rotation
                    if x.isLeftChild {
                        leftRotate(node: parentX)
                    } else {
                        rightRotate(node: parentX)
                    }
                    // Update sibling
                    if let sibl = x.sibling {
                        sibling = sibl
                    }
                }
            }
            // Case 2: Sibling is black with two black children
            if sibling.leftChild?.color == .black && sibling.rightChild?.color == .black {
                // Recolor
                sibling.color = .red
                // Move fake black unit upwards
                if let parentX = x.parent {
                    deleteFixup(node: parentX)
                }
                // We have a valid red-black-tree
            } else {
                // Case 3: a. Sibling black with one black child to the right
                if x.isLeftChild && sibling.rightChild?.color == .black {
                    // Recolor
                    sibling.leftChild?.color = .black
                    sibling.color = .red
                    // Rotate
                    rightRotate(node: sibling)
                    // Update sibling of x
                    if let sibl = x.sibling {
                        sibling = sibl
                    }
                }
                    // Still case 3: b. One black child to the left
                else if x.isRightChild && sibling.leftChild?.color == .black {
                    // Recolor
                    sibling.rightChild?.color = .black
                    sibling.color = .red
                    // Rotate
                    leftRotate(node: sibling)
                    // Update sibling of x
                    if let sibl = x.sibling {
                        sibling = sibl
                    }
                }
                // Case 4: Sibling is black with red right child
                // Recolor
                if let parentX = x.parent {
                    sibling.color = parentX.color
                    parentX.color = .black
                    // a. x left and sibling with red right child
                    if x.isLeftChild {
                        sibling.rightChild?.color = .black
                        // Rotate
                        leftRotate(node: parentX)
                    }
                        // b. x right and sibling with red left child
                    else {
                        sibling.leftChild?.color = .black
                        //Rotate
                        rightRotate(node: parentX)
                    }
                    // We have a valid red-black-tree
                    xTmp = root
                }
            }
        }
        xTmp.color = .black
    }
}

// MARK: - Rotation
extension RedBlackTree {
    /*
     * Left rotation around node x
     * Assumes that x.rightChild y is not a nullLeaf, rotates around the link from x to y,
     * makes y the new root of the subtree with x as y's left child and y's left child as x's right
     * child, where n = a node, [n] = a subtree
     *     |                |
     *     x                y
     *   /   \     ~>     /   \
     * [A]    y          x    [C]
     *       / \        / \
     *     [B] [C]    [A] [B]
     */
    fileprivate func leftRotate(node x: RBNode) {
        rotate(node: x, direction: .left)
    }
    
    /*
     * Right rotation around node y
     * Assumes that y.leftChild x is not a nullLeaf, rotates around the link from y to x,
     * makes x the new root of the subtree with y as x's right child and x's right child as y's left
     * child, where n = a node, [n] = a subtree
     *     |                |
     *     x                y
     *   /   \     <~     /   \
     * [A]    y          x    [C]
     *       / \        / \
     *     [B] [C]    [A] [B]
     */
    fileprivate func rightRotate(node x: RBNode) {
        rotate(node: x, direction: .right)
    }
    
    /*
     * Rotation around a node x
     * Is a local operation preserving the binary-search-tree property that only exchanges pointers.
     * Runntime: O(1)
     */
    private func rotate(node x: RBNode, direction: RotationDirection) {
        var nodeY: RBNode? = RBNode()
        
        // Set |nodeY| and turn |nodeY|'s left/right subtree into |x|'s right/left subtree
        switch direction {
        case .left:
            nodeY = x.rightChild
            x.rightChild = nodeY?.leftChild
            x.rightChild?.parent = x
        case .right:
            nodeY = x.leftChild
            x.leftChild = nodeY?.rightChild
            x.leftChild?.parent = x
        }
        
        // Link |x|'s parent to nodeY
        nodeY?.parent = x.parent
        if x.isRoot {
            if let node = nodeY {
                root = node
            }
        } else if x.isLeftChild {
            x.parent?.leftChild = nodeY
        } else if x.isRightChild {
            x.parent?.rightChild = nodeY
        }
        
        // Put |x| on |nodeY|'s left
        switch direction {
        case .left:
            nodeY?.leftChild = x
        case .right:
            nodeY?.rightChild = x
        }
        x.parent = nodeY
    }
}

// MARK: - Verify
extension RedBlackTree {
    /*
     * Verifies that the existing tree fulfills all red-black properties
     * Returns true if the tree is a valid red-black tree, false otherwise
     */
    public func verify() -> Bool {
        if root.isNullLeaf {
            print("The tree is empty")
            return true
        }
        return property2() && property4() && property5()
    }
    
    // Property 1: Every node is either red or black -> fullfilled through setting node.color of type
    // RBTreeColor
    
    // Property 2: The root is black
    private func property2() -> Bool {
        if root.color == .red {
            print("Property-Error: Root is red")
            return false
        }
        return true
    }
    
    // Property 3: Every nullLeaf is black -> fullfilled through initialising nullLeafs with color = black
    
    // Property 4: If a node is red, then both its children are black
    private func property4() -> Bool {
        return property4(node: root)
    }
    
    private func property4(node: RBNode) -> Bool {
        if node.isNullLeaf {
            return true
        }
        if let leftChild = node.leftChild, let rightChild = node.rightChild {
            if node.color == .red {
                if !leftChild.isNullLeaf && leftChild.color == .red {
                    print("Property-Error: Red node with key \(String(describing: node.key)) has red left child")
                    return false
                }
                if !rightChild.isNullLeaf && rightChild.color == .red {
                    print("Property-Error: Red node with key \(String(describing: node.key)) has red right child")
                    return false
                }
            }
            return property4(node: leftChild) && property4(node: rightChild)
        }
        return false
    }
    
    // Property 5: For each node, all paths from the node to descendant leaves contain the same number
    // of black nodes (same blackheight)
    private func property5() -> Bool {
        if property5(node: root) == -1 {
            return false
        } else {
            return true
        }
    }
    
    private func property5(node: RBNode) -> Int {
        if node.isNullLeaf {
            return 0
        }
        guard let leftChild = node.leftChild, let rightChild = node.rightChild else {
            return -1
        }
        let left = property5(node: leftChild)
        let right = property5(node: rightChild)
        
        if left == -1 || right == -1 {
            return -1
        } else if left == right {
            let addedHeight = node.color == .black ? 1 : 0
            return left + addedHeight
        } else {
            print("Property-Error: Black height violated at node with key \(String(describing: node.key))")
            return -1
        }
    }
}

// MARK: - Debugging
extension RBTreeNode: CustomDebugStringConvertible {
    public var debugDescription: String {
        var s = ""
        if isNullLeaf {
            s = "nullLeaf"
        } else {
            if let key = key {
                s = "key: \(key)"
            } else {
                s = "key: nil"
            }
            if let parent = parent {
                s += ", parent: \(String(describing: parent.key))"
            }
            if let left = leftChild {
                s += ", left = [" + left.debugDescription + "]"
            }
            if let right = rightChild {
                s += ", right = [" + right.debugDescription + "]"
            }
            s += ", color = \(color)"
        }
        return s
    }
}

extension RedBlackTree: CustomDebugStringConvertible {
    public var debugDescription: String {
        return root.debugDescription
    }
}

extension RBTreeNode: CustomStringConvertible {
    public var description: String {
        var s = ""
        if isNullLeaf {
            s += "nullLeaf"
        } else {
            if let left = leftChild {
                s += "(\(left.description)) <- "
            }
            if let key = key {
                s += "\(key)"
            } else {
                s += "nil"
            }
            s += ", \(color)"
            if let right = rightChild {
                s += " -> (\(right.description))"
            }
        }
        return s
    }
}

extension RedBlackTree: CustomStringConvertible {
    public var description: String {
        if root.isNullLeaf {
            return "[]"
        } else {
            return root.description
        }
    }
}

public extension RedBlackTree {
    enum SliceComparator {
        case less
        case lessOrEqual
        case greater
        case greaterOrEqual
        
        var isLess: Bool {
            switch self {
            case .less, .lessOrEqual:
                return true
            default:
                return false
            }
        }
        
        func `operator`<T>(lhs: T?, rhs: T?) -> Bool where T : Comparable {
            switch self {
            case .less:
                return lhs < rhs
            case .lessOrEqual:
                return lhs <= rhs
            case .greater:
                return lhs > rhs
            case .greaterOrEqual:
                return lhs >= rhs
            }
        }
    }
    
    var keys: [T] {
        return nodes.compactMap { $0.key }
    }
    
    var values: [V] {
        return nodes.compactMap { $0.value }
    }
    
    fileprivate var nodes: [RBTreeNode<T, V>] {
        if root.isNullLeaf {
            return []
        }
        var nodes = [RBTreeNode<T, V>]()
        traverse(node: root, nodes: &nodes)
        return nodes
    }
    
    func slice(key: T, node: RBTreeNode<T, V>? = nil, comparator: SliceComparator) -> [RBTreeNode<T, V>] {
        var nodes = [RBTreeNode<T, V>]()
        if comparator.isLess {
            prefix(nodes: &nodes, key: key, node: node ?? root, operator: comparator.operator(lhs:rhs:))
        } else {
            suffix(nodes: &nodes, key: key, node: node ?? root, operator: comparator.operator(lhs:rhs:))
        }
        
        return nodes
    }
    
    fileprivate func prefix(nodes: inout [RBTreeNode<T, V>], key: T, node: RBTreeNode<T, V>, operator: (T?, T?) -> Bool) {
        guard !node.isNullLeaf else {
            return
        }
        
        if let left = node.leftChild {
            prefix(nodes: &nodes, key: key, node: left, operator: `operator`)
        }
        
        if `operator`(node.key, key) {
            nodes.append(node)
            
            if let right = node.rightChild {
                prefix(nodes: &nodes, key: key, node: right, operator: `operator`)
            }
        }
    }
    
    fileprivate func suffix(nodes: inout [RBTreeNode<T, V>], key: T, node: RBTreeNode<T, V>, operator: (T?, T?) -> Bool) {
        guard !node.isNullLeaf else {
            return
        }
        
        if `operator`(node.key, key) {
            if let left = node.leftChild {
                prefix(nodes: &nodes, key: key, node: left, operator: `operator`)
            }
            
            nodes.append(node)
        }
        
        if let right = node.rightChild {
            prefix(nodes: &nodes, key: key, node: right, operator: `operator`)
        }
    }
    
    private func traverse(node: RBTreeNode<T, V>, nodes: inout [RBTreeNode<T, V>]) {
        if let left = node.leftChild {
            traverse(node: left, nodes: &nodes)
        }
        if !node.isNullLeaf {
            nodes.append(node)
        }
        if let right = node.rightChild {
            traverse(node: right, nodes: &nodes)
        }
    }
    
//    public func keys(key: T) ->
}

extension RedBlackTree : Sequence {
    public func makeIterator() -> RedBlackTreeIterator<T, V> {
        return RedBlackTreeIterator(nodes: nodes)
    }
}

public struct RedBlackTreeIterator<T, V> : IteratorProtocol where T : Comparable {
    private var iterator: IndexingIterator<[RBTreeNode<T, V>]>
    
    init(nodes: [RBTreeNode<T, V>]) {
        iterator = nodes.makeIterator()
    }
    
    public mutating func next() -> (T, V)? {
        return iterator.next().map { ($0.key!, $0.value!) }
    }
}
