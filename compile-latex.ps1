# Script PowerShell untuk kompilasi dokumen LaTeX laporan Proyek 2
$TexFile = "laporan"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Kompilasi LaTeX Document: $TexFile.tex" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

Write-Host "[1/4] Menjalankan pdflatex (tahap 1)..." -ForegroundColor Yellow
pdflatex -interaction=nonstopmode "$TexFile.tex" | Out-Null

Write-Host "[2/4] Menjalankan bibtex..." -ForegroundColor Yellow
bibtex "$TexFile" | Out-Null

Write-Host "[3/4] Menjalankan pdflatex (tahap 2)..." -ForegroundColor Yellow
pdflatex -interaction=nonstopmode "$TexFile.tex" | Out-Null

Write-Host "[4/4] Menjalankan pdflatex (tahap 3 - final)..." -ForegroundColor Yellow
pdflatex -interaction=nonstopmode "$TexFile.tex" | Out-Null

if (Test-Path "$TexFile.pdf") {
    $pdf = Get-Item "$TexFile.pdf"
    Write-Host "✔ Kompilasi selesai: $($pdf.Name) ($([math]::Round($pdf.Length/1KB, 2)) KB)" -ForegroundColor Green
} else {
    Write-Host "❌ Kompilasi gagal! Periksa $TexFile.log" -ForegroundColor Red
}
