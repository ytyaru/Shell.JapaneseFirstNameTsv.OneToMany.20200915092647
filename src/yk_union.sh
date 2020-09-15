# 「読み」が同じ行の「表記」を1行カンマ区切り形式にする
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	# ファイルを作る
	Make() {
		echo 'Start making '"$1"' ...'
		InputTsvPath() { echo "$APP_ROOT"'/res/i/yk_oo_'"${1,,}"'.tsv'; }
		OutputTsvPath() { echo "$APP_ROOT"'/res/o/yk_om_'"${1,,}"'.tsv'; }
		PATH_I="$(InputTsvPath "$1")"
		PATH_O="$(OutputTsvPath "$1")"
		[ ! -f "$PATH_I" ] && { echo '入力ファイルが存在しません。: '"$PATH_I"; return; }
		[   -f "$PATH_O" ] && { echo '出力ファイルが既存です。上書き防止のため中止します: '"$PATH_O"; return; }
		ALL="$(cat "$PATH_I")"
		UNIQ_YOMI="$(echo -e "$ALL" | cut -f1 | sort | uniq)"
		YOMI_KAKI=()
		while read YOMI; do
			KAKI="$(echo -e "$ALL" | awk -F "\t" '$1 == "'"$YOMI"'" {print $2}' | tr '\n' ',')"
			YOMI_KAKI+=( "${YOMI}\t${KAKI%,}" )
#			echo -e "${YOMI}\t${KAKI%,}"
		done <<-END
			$UNIQ_YOMI
		END
		RESULT="$(IFS=$'\n'; echo "${YOMI_KAKI[*]}")"
		echo -e "$RESULT" > "$PATH_O"
	}
	TIMEFORMAT=$'%3lR'
#	TIMEFORMAT=$'\nreal=%3lR\tuser=%3lU\tsys=%3lS'
	for id in m f c mc fc cm cf; do { time Make $id; } done
}
Run "$@"
