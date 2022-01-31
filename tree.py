from mininet.topo import Topo
from mininet.net import Mininet
from mininet.node import RemoteController
from mininet.cli import CLI
from mininet.log import setLogLevel, info

class TreeTopo(Topo):
	def __init__(self, **opts):
		super(TreeTopo, self).__init__(**opts)

		net = Mininet(controller=RemoteController)
		net.addController('co')

		switch1 = net.addSwitch('s1')
		switch2 = net.addSwitch('s2')
		switch3 = net.addSwitch('s3')
			
		h1 = net.addHost( 'h1', ip='10.0.0.1', mac='00:00:00:00:00:01' )
		h2 = net.addHost( 'h2', ip='10.0.0.2', mac='00:00:00:00:00:02' )
		h3 = net.addHost( 'h3', ip='10.0.0.3', mac='00:00:00:00:00:03' )
		h4 = net.addHost( 'h4', ip='10.0.0.4', mac='00:00:00:00:00:04' )

		net.addLink(switch1, switch2 )
		net.addLink(switch1, switch3)
		net.addLink(h1,switch2)
		net.addLink(h2,switch2)
		net.addLink(h3,switch3)
		net.addLink(h4,switch3)

		net.start()
		CLI(net)

if __name__ == '__main__':
	setLogLevel( 'info' )
	TreeTopo()
