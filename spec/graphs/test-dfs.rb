require 'rspec'
require_relative '../../graphs/dfs'

describe 'dfs' do
	describe 'dfs_iterative' do
		it 'finds a node that exists' do
			a = Node.new(1)
			b = Node.new(2)
			c = Node.new(3)

			a.add_child(b)
			a.add_child(c)

			expect(a.dfs_iterative(2)).to eq(b)
		end

		it 'returns nil when no node exists' do
			a = Node.new(1)
			b = Node.new(2)

			a.add_child(b)

			expect(a.dfs_iterative(3)).to be_nil
		end
	end

	describe 'dfs_recursive' do
		it 'finds a node that exists' do
			a = Node.new(1)
			b = Node.new(2)
			c = Node.new(3)
			d = Node.new(4)
			e = Node.new(5)

			a.add_child(b)
			a.add_child(c)
			b.add_child(d)
			b.add_child(e)

			expect(a.dfs_recursive(4)).to eq(d)
		end

		it 'returns nil when no node exists' do
			a = Node.new(1)
			b = Node.new(2)

			a.add_child(b)

			expect(a.dfs_recursive(3)).to be_nil
		end
	end
end