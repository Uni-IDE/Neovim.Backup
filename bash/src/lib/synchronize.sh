. lib/dir.sh

bacHome=$bacdir/Home

# Rsync option
overwrite="--delete"

create_bac_dirs(){
	for d in ${dirs[@]}; do
		mkdir -p $bacHome/$d
	done
}

syncToBackup(){
	create_bac_dirs
	rsync -av --progress ~/$share/nvim $bacHome/$share/
	rsync -av --progress ~/$state/nvim $bacHome/$state/
	rsync -av --progress ~/$config/nvim $bacHome/$config/
}

syncFromBackup(){
        rsync -av --progress $overwrite $bacHome/$share/nvim ~/$share/
        rsync -av --progress $overwrite $bacHome/$state/nvim ~/$state/
        rsync -av --progress $overwrite $bacHome/$config/nvim ~/$config/ 
}
