# Patager un dossier host et SSH


## 1) Vm settings -> Shared Folders
![?????](./img/sharedFoldersConfig.png)

## Pour partager le dossier (dans la vm
##
```
	mkdir -pv $HOME/shared
```
##
le nom, celui que tu as mis dans la image 1
```
	sudo mount -t vboxsf [nom dossier host] $HOME/shared
```

### pour te connecter en ssh a la vm

## installer [ifconfig, opeenshh-server, git]
```
	cd $HOME/shared/doc/
	sh setup.sh
```

## 2) VM settings -> Netword -> Avanced -> Port Forwarding
![?????](./img/sshConfigVm.png)


ssh -p [port] [utilisateur]@localhost
```
	ssh -p 2222 badass@localhost
```
