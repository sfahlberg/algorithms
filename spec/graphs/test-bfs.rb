require 'rspec'
require_relative '../../graphs/bfs'

describe 'bfs' do
	it 'finds a node that exists' do
		a = Node.new(1)
		b = Node.new(2)
		c = Node.new(3)

		a.add_child(b)
		a.add_child(c)

		expect(a.bfs(3)).to eq(c)
	end

	it 'returns nil when no node exists' do
		a = Node.new(1)
		b = Node.new(2)

		a.add_child(b)

		expect(a.bfs(3)).to be_nil
	end
end
