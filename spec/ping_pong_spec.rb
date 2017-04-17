require('rspec')
require('ping_pong')
require('pry')

describe('Fixnum#ping_pong') do
  it("counts up to the given number") do
    expect((2).ping_pong()).to(eq([1, 2]))
  end

  it("changes multiples of 3 to ping") do
    expect((3).ping_pong()).to(eq([1, 2, "ping"]))
  end

  it("changes multiples of 5 to Pong") do
    expect((5).ping_pong()).to(eq([1,2,"ping",4,"pong"]))
  end

  it('changes multiples of 15 to ping-pong') do
    expect((15).ping_pong()).to(eq([1,2,"ping",4, "pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
  end
  
end
