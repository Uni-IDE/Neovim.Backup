. dir.sh

bacHome=$bacdir/Home

create_bac_dirs(){
	for d in ${dirs[@]}; do
		mkdir -p $bacHome/$d
	done
}

sync(){
	rsync -av --progress ~/$share/nvim $bacHome/$share/
	rsync -av --progress ~/$state/nvim $bacHome/$state/
	rsync -av --progress ~/$config/nvim $bacHome/$config/
}

create_bac_dirs
#sync
