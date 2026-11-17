#!/usr/bin/env bash
# Script kompilasi dokumen LaTeX laporan Proyek 2
set -e

TEX_FILE="laporan"
echo "========================================"
echo "  Kompilasi LaTeX Document: ${TEX_FILE}.tex"
echo "========================================"

PDFLATEX="/Library/TeX/texbin/pdflatex"
BIBTEX="/Library/TeX/texbin/bibtex"

if ! command -v "$PDFLATEX" &> /dev/null; then
    PDFLATEX="pdflatex"
fi
if ! command -v "$BIBTEX" &> /dev/null; then
    BIBTEX="bibtex"
fi

echo "[1/4] Menjalankan pdflatex (tahap 1)..."
"$PDFLATEX" -interaction=nonstopmode "${TEX_FILE}.tex" > /dev/null || true

echo "[2/4] Menjalankan bibtex..."
"$BIBTEX" "${TEX_FILE}" > /dev/null || true

echo "[3/4] Menjalankan pdflatex (tahap 2)..."
"$PDFLATEX" -interaction=nonstopmode "${TEX_FILE}.tex" > /dev/null || true

echo "[4/4] Menjalankan pdflatex (tahap 3 - final)..."
"$PDFLATEX" -interaction=nonstopmode "${TEX_FILE}.tex" > /dev/null || true

if [ -f "${TEX_FILE}.pdf" ]; then
    echo "========================================"
    echo "✔ Kompilasi Berhasil!"
    echo "  File: ${TEX_FILE}.pdf"
    ls -lh "${TEX_FILE}.pdf"
    echo "========================================"
else
    echo "❌ Kompilasi gagal. Periksa berkas ${TEX_FILE}.log"
    exit 1
fi
