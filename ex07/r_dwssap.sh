cat /etc/passwd | grep -v '^#' | sed 'g;n' | cut -d ":" -f 1 | rev | sort -r | sed -n $FT_LINE1','$FT_LINE2'p' | sed -e ':lbl' -e '$!{N;blbl' -e '};s/\n/'$', /g' | sed 's/$/./'
