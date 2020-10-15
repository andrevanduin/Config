node 'dev-box' {


	# exec { 'Add git repository for mate':
	# 	command => '/usr/bin/apt-add-repository ppa:ubuntu-mate-dev/xenial-mate',
	# 	onlyif => '/usr/bin/test -f /etc/apt/sources.list.d/ubuntu-mate-dev-ubuntu-ppa-xenial.list'
	# }

	# exec { 'Remove original xenial mate file': 
	# 	command => '/bin/rm -rf /etc/apt/sources.list.d/ubuntu-mate-dev-ubuntu-ppa-xenial.list*',
	# 	onlyif => '/usr/bin/test -f /etc/apt/sources.list.d/ubuntu-mate-dev-ubuntu-ppa-xenial.list',
	# 	require => Exec['Add git repository for mate']
	# }

	# exec { 'Update and Upgrade ubuntu':
	# 	command => '/usr/bin/apt-get -o DPkg::Options::=--force-confdef update -y && /usr/bin/apt-get -o DPkg::Options::=--force-confdef upgrade -y'
	# }

	exec { 'Install ubuntu-desktop':
		command => '/usr/bin/apt-get -o DPkg::Options::=--force-confdef install -y ubuntu-desktop',
		require => Exec['Update and Upgrade ubuntu']
	}

  #       file_line { 'Keyboard Mapping':
  #               path  => '/etc/default/keyboard',
  #               line  => 'XKBLAYOUT="us"',
  #               match => '^XKBLAYOUT="ch"',
	# }
}


