#!/bin/zsh

#
# PDF Compress
#
# Usage:
#    pdfmin.zsh <pdf-file1> <pdf-file2> ...
#
# needs ghostscript
# https://www.ghostscript.com/
#

#---------------------------------------------------------------------
# 定数定義
#---------------------------------------------------------------------
DEVICE="pdfwrite"
COMPATIBILITY_LEVEL="1.4"
PDF_SETTINGS="/ebook"
OUTPUT_SUFFIX=".min.pdf"
MAX_PARALLEL_JOBS=4

#---------------------------------------------------------------------
# チェック
#---------------------------------------------------------------------
#---------------------------------
# Ghostscript の存在確認
#---------------------------------
if ! command -v gs &>/dev/null; then
    echo "Error: 'gs' command not found. Please install Ghostscript." >&2
    exit 1
fi

#---------------------------------
# 引数の妥当性チェック
#---------------------------------
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <pdf-file1> <pdf-file2> ..." >&2
    exit 1
fi

#---------------------------------------------------------------------
# メイン処理
#---------------------------------------------------------------------
exit_code=0
for i in "$@"; do
    #---------------------------------
    # 入力ファイルの存在確認
    #---------------------------------
    if [[ ! -f "$i" ]]; then
        echo "Error: File '$i' not found." >&2
        exit_code=1
        continue
    fi

    #---------------------------------
    # 出力ファイルの競合チェック
    #---------------------------------
    if [[ -f "${i:r}$OUTPUT_SUFFIX" ]]; then
        echo "Warning: Output file '${i:r}$OUTPUT_SUFFIX' already exists. Skipping." >&2
        continue
    fi

    #---------------------------------
    # PDF圧縮処理
    #---------------------------------
    gs -sDEVICE=$DEVICE \
       -dCompatibilityLevel=$COMPATIBILITY_LEVEL \
       -dPDFSETTINGS=$PDF_SETTINGS \
       -dNOPAUSE -dQUIET -dBATCH \
       -sOutputFile="${i:r}$OUTPUT_SUFFIX" "${i}" &

    #---------------------------------
    # 並列処理の制御
    #---------------------------------
    while (( $(jobs -p | wc -l) >= MAX_PARALLEL_JOBS )); do
        sleep 0.1
    done
done

wait

#---------------------------------
# 終了コードの確認
#---------------------------------
if (( exit_code != 0 )); then
    echo "Some files could not be processed due to errors." >&2
fi
exit $exit_code