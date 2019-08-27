class BinaryTreeNode
  
	include Comparable
	include Enumerable

	attr_accessor :left
	attr_accessor :right
	attr_accessor :parent
	attr_accessor :value

	def initialize(value)
		@value = value
	end
	
	def <=>(an_other)
		@value<=> an_other.value
	end
	
end

class BinaryTree
	attr_accessor :root
	attr_accessor :count

	@count = 0
	
	def initialize
		@count = 0
	end
	
	def add(value) #public
		add_value(value)
		#balance_tree  havin a problem with this - don't understand why yet
	end
	
	def find(value) #public
		tree = @root
		
		while tree != nil do	
			if value == tree.value then
				return tree
			elsif value < tree.value then
				tree = tree.left
			elsif value > tree.value then
				tree = tree.right
			end
		end		
	end
	
	def in_order #public
		out_in_order(@root)
	end
	
	def pre_order #public
		out_pre_order(@root)
	end
	
	def post_order #public
		out_post_order(@root)
	end
	
	def balance_tree #public
		 list_of_nodes = Array.new  #using array because ruby has no linked list Type
		 fill_list_in_order(@root,list_of_nodes)
		 remove_children(list_of_nodes)
		 
		 @root = nil
		 the_count = @count
		 @count = 0
		 
		 balance_the_tree(0, the_count -1 , list_of_nodes)
	end
	
	def delete(value) #public
		rebalance_tree = true
		parent_node = @root
		found_node = nil
		tree = @root
		found = false
		
		while tree != nil  && found == false do	
			if value == tree.value then
				found_node = tree
				found = true
			elsif value < tree.value then
				parent_node = tree
				tree = tree.left
			elsif value > tree.value then
				parent_node = tree
				tree = tree.right
			end
		end	
		
		
		if found_node == nil then
			raise " Node not found in tree"
		end
		
		right_hand_node = false
		right_hand_node = true if found_node != parent_node.left 
		if parent_node == found_node then 
		#oh oh we're removing the root node
			if rebalance_tree then 
			#remove the root and rebalance the tree
				list_of_nodes = Array.new
				fill_list_in_order(@root, list_of_nodes)
				remove_children(list_of_nodes)
				
				list_of_nodes.delete(parent_node)
				
				@root = nil
				my_count = @count -1
				@count = 0
				
				balance_the_tree(0, my_count - 1, list_of_nodes)
				
			else
				#Regular way without balancing: just find the left-most node on the right
                #side of the tree and that will become the root
				left_most = find_left_most(parent_node, true)
				if left_most != nil then
					left_most.left = parent_node.left
					left_most.right = parent_node.right
					@root = left_most
				end
			end
		elsif found_node.left == nil && found_node.right == nil then
			#this is a leaf node
			if right_hand_node then
				parent_node.right = nil
			else
				parent_node.left = nil
			end
		elsif found_node.left != nil && found_node.right != nil then
			#this is a node with two children
			if right_hand_node then
				parent_node.right = found_node.right
				parent_node.right.left = found_node.left
			else
				parent_node.left = found_node.right
				parent_node.left.left = found_node.left			
			end		
		elsif found_node.left != nil || found_node.right != nil then
			#this is a node with one child			
			if found_node.left != nil then 			
				if right_hand_node then
					parent_node.right =  found_node.left
				else
					parent_node.left  = found_node.left			
				end
			else
				if right_hand_node then
					parent_node.right =  found_node.right
				else
					parent_node.left  = found_node.right			
				end
			end			
		end				
	end
	
	private #private methods from here
	
	def add_value(value) #private
		node = BinaryTreeNode.new(value)
		if @root == nil then
			@root = node
		else
			add_to_tree(node, @root)
		end
		@count += 1
	end
	
	def add_to_tree(node, parent) #private
		if parent == nil then
			parent = node
		else
			if node < parent then
				if parent.left == nil then
					node.parent = parent
					parent.left = node
				else
					add_to_tree(node, parent.left)
				end
			elsif node > parent then
				if parent.right == nil then
					node.parent = parent
					parent.right = node
				else
					add_to_tree(node, parent.right)
				end
			elsif node == parent then
				raise "Duplicate node"
			end
		end
	end
		
	def out_in_order(node) #private
		if node != nil then
			out_in_order(node.left) 
			puts node.value
			out_in_order(node.right)
		end
	end
		
	def out_pre_order(node) #private
		if node != nil then
			puts node.value
			out_pre_order(node.left) ##.each {|n| puts n.left.value}
			out_pre_order(node.right)## .each {|n| puts n.right.value}
		end
	end
	
	def out_post_order(node) #private
		if node != nil then
			out_post_order(node.left) ##.each {|n| puts n.left.value}
			out_post_order(node.right)## .each {|n| puts n.right.value}
			puts node.value
		end
	end
	
	def balance_the_tree(min, max, node_list) #private
		if min <= max then
			middle_node = ((min + max)/2).ceil
			add(node_list[middle_node].value)
			balance_the_tree(min, middle_node -1, node_list)
			balance_the_tree(middle_node +1, max, node_list)			
		end
	end
	
	def fill_list_in_order(node, node_list) #private
		if node != nil then
			fill_list_in_order(node.left, node_list)
			node_list << node			
			fill_list_in_order(node.right, node_list)
		end
	end
		
	def remove_children(node_list) #private
		node_list.each do |n|
			n.left = nil
			n.right = nil
		end
	end
		
	def find_left_most(node, set_parent_to_nil) #private
		leftmost = node
		current = node
		parent = nil
		
		while current != nil do
			if current.left != nil then
				parent = current
				leftmost = current.left
			end
			current = current.left
		end
		if parent != nil && set_parent_to_nil then
			parent.left = nil
		end
		return leftmost
	end	
end
