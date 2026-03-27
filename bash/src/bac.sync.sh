. dir
. var

create_bac_dirs(){
	for d in ${dirs[@]}; do
		mkdir -p ~/$name/$d
	done
}

sync(){
	rsync -av --progress ~/$share/nvim Home/$share/
	rsync -av --progress ~/$state/nvim Home/$state/
	rsync -av --progress ~/$config/nvim Home/$config/
}

create_bac_dirs
sync
