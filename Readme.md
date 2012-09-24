Pinguino (versión qubotic)
==========================

**dependencies:** libusb, python 2.5 y wxpython 2.8

instalación
-----------

para kernel 2.6 o superiores instalar y reiniciar la maquina

`sudo cp rules_nuevas/* /etc/udev/rules.d/`
`chmod 777 tools/bin/docker`

en para kernel más viejos

`sudo cp rules_viejas/* /etc/udev/rules.d/`
`chmod 777 tools/bin/docker`

instalación del bootloader
--------------------------

`tools/bin/docker -v 04d8 write bootloaderV2.12.hex` (esto no fue probado)

--------------------------------------------

Pinguino is based on open source software:
	compiler		SDCC 2.6.0		http://sdcc.sourceforge.net/
	asm/linker		GPUTILS			http://gputils.sourceforge.net/
	bootloader		VASCO project	        http://vasco.gforge.enseeiht.fr/
        docker                  VASCO project           http://gforge.enseeiht.fr/frs/?group_id=10&release_id=626 
	IDE		        Python			http://www.python.org/
			
Contributions, bug reports and questions are welcome. jp.mandon@gmail.com
