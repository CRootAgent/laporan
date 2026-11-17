# Laporan Proyek 2 D4 Teknik Informatika ULBI 📄

Laporan Tugas Akhir / Proyek 2 Sarjana Terapan Teknik Informatika, Sekolah Logistik dan Bisnis / Fakultas Teknologi Informasi, Universitas Logistik dan Bisnis Internasional (ULBI) Bandung, Tahun 2026.

Disusun sesuai panduan akademik dan petunjuk teknis proyek vokasi di **[ll.my.id/instruction](https://ll.my.id/instruction/)** (Overlay Capstone Project Vokasi: Profil Software Engineer).

---

## 📌 Identitas Laporan

- **Judul:** Rancang Bangun CRootAgent: Agen Kecerdasan Buatan Berbasis CLI Ultra-Ringan dengan Multi-API Session dan Orkestrasi Perkakas Pengembang Berbasis Rust
- **Penyusun:** Ahmad Zakky Nurfauzan
- **NPM:** 714250028
- **Program Studi:** Sarjana Terapan Teknik Informatika (D4TI)
- **Institusi:** Universitas Logistik dan Bisnis Internasional (ULBI), Bandung
- **Dosen Pembimbing:** Rolly Maulana Awangga, S.T., M.T., CAIP.

---

## 🛠️ Cara Kompilasi Dokumen LaTeX

### Di Linux / macOS (Bash)
```bash
chmod +x compile-latex.sh
./compile-latex.sh
# Menghasilkan berkas laporan.pdf
```

### Di Windows (PowerShell)
```powershell
.\compile-latex.ps1
```

---

## 📁 Struktur Dokumen

- `laporan.tex` — Berkas master dokumen LaTeX, memuat pengaturan geometri, paket Times New Roman, format APA BibLaTeX, dan halaman pengesahan.
- `chapters/ringkasan.tex` — Ringkasan eksekutif laporan.
- `chapters/bab1.tex` — Pendahuluan (Latar Belakang, Rumusan Masalah, Tujuan, Batasan, Manfaat, Profil Software Engineer).
- `chapters/bab2.tex` — Tinjauan Pustaka & Kajian Terkait (Analisis Agen CLI, ReAct, Rust vs Node/Python, SOTA).
- `chapters/bab3.tex` — Metodologi dan Desain Sistem (Arsitektur CRootAgent, Desain Multi-API Session, Desain Perkakas & HITL, CI/CD).
- `chapters/bab4.tex` — Implementasi dan Pengujian (Uji Unit & Integrasi 10 Kasus Lolos 100%, Benchmark Memori & Startup, Matriks Uji Terima).
- `chapters/bab5.tex` — Kesimpulan dan Saran.
- `chapters/lampiran.tex` — Lampiran tautan repositori, log pengujian, dan skrip instalasi.
- `references.bib` — Basis data sitasi pustaka ilmiah (BibTeX).
- `.github/workflows/latex-release.yml` — Alur kerja otomatisasi GitHub Actions untuk kompilasi LaTeX, auto-tagging, dan pembuatan rilis PDF ke GitHub Releases.

---

## 📄 Lisensi

Dokumen ini dilisensikan di bawah **GNU General Public License v3.0 (GPL-3.0)**.
