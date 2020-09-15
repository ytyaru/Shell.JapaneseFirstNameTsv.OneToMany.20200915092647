# 「読み」が同じで「表記」が2つ以上あるものを「読み	表記1,表記2,...」のようにカンマ区切り形式にする
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	# ファイルを作る
	Make() {
		echo 'Start making '"$1"' ...'
		InputTsvPath() { echo "$APP_ROOT"'/res/i/yk_oo_'"${1,,}"'.tsv'; }
		OutputTsvPath() { echo "$APP_ROOT"'/res/o/ky_om_'"${1,,}"'.tsv'; }
		PATH_I="$(InputTsvPath "$1")"
		PATH_O="$(OutputTsvPath "$1")"
		[ ! -f "$PATH_I" ] && { echo '入力ファイルが存在しません。: '"$PATH_I"; return; }
		[   -f "$PATH_O" ] && { echo '出力ファイルが既存です。上書き防止のため中止します: '"$PATH_O"; return; }
		ALL="$(cat "$PATH_I")"
		UNIQ_TWO_MORE_KAKI="$(echo -e "$ALL" | awk -F "\t" 'a[$2]++ {print $2}' | sort | uniq)"
		while read KAKI; do
			YOMI="$(echo -e "$ALL" | awk -F "\t" '$2 == "'"$KAKI"'" {print $1}' | tr '\n' ',')"
			echo -e "${KAKI}\t${YOMI%,}" >> "$PATH_O"
		done <<-END
			$UNIQ_TWO_MORE_KAKI
		END
	}
	TIMEFORMAT=$'%3lR'
#	TIMEFORMAT=$'\nreal=%3lR\tuser=%3lU\tsys=%3lS'
	for id in m f c mc fc cm cf; do { time Make $id; } done
}
Run "$@"
