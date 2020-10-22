node 'dev-box' {
	exec { 'Install ubuntu-desktop':
		command => '/usr/bin/apt-get -o DPkg::Options::=--force-confdef install -y ubuntu-desktop',
	}
}


