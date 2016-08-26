#node default { }

node 'dev-box' {

	exec { 'creating source code folder':
		command => '/bin/mkdir /home/dev/Sources',
		before => Exec['chown source code folder'],	
	}
	
	exec { 'creating osgp download folder':
		command => '/bin/mkdir -p /home/dev/Downloads/osgp',
		before => Exec['chown osgp download folder'],
	}

	exec { 'chown source code folder':
		command => '/bin/chown dev:dev /home/dev/Sources',
	}
	
	exec { 'chown osgp download folder':
		command => '/bin/chown dev:dev /home/dev/Downloads/osgp',
	}

}
