function receiptApp() {
  return {
    // Field yang digunakan
    nomorOutlet: '54.621.01',
    namaSPBU: 'SPBU JETAK',
    alamat: 'JL. MT. HARYONO, JETAK, BOJONEGEGORO',
    noTransaksi: '1975362',
    waktu: '2025-04-05T05:00:00', 
    pompa: '3',
    volume: 3.7,
    operator: 'Andri',
    footer: 'Terima Kasih dan Selamat Jalan',

    // Tambahkan computed property untuk menghitung total harga
    get computedTotalHarga() {
      return this.volume * 10000;
    },

    // Fungsi formatRupiah (tanpa pemisah ribuan dan tanpa "Rp.")
    formatRupiah(value) {
      // Karena tidak ingin format tambahan, cukup mengembalikan nilai sebagai string
      return value.toString();
    },

    // Fungsi formatDate untuk menampilkan tanggal saja
    formatDate(datetime) {
      if (!datetime) return '';
      const d = new Date(datetime);
      const dd = String(d.getDate()).padStart(2, '0');
      const mm = String(d.getMonth() + 1).padStart(2, '0');
      const yyyy = d.getFullYear();
      return `${dd}/${mm}/${yyyy}`;
    },

    // Fungsi formatTime untuk menampilkan waktu tanpa detik
    formatTime(datetime) {
      if (!datetime) return '';
      const d = new Date(datetime);
      const hh = String(d.getHours()).padStart(2, '0');
      const min = String(d.getMinutes()).padStart(2, '0');
      return `${hh}:${min}`;
    },

    saveAsImage() {
      const receipt = document.getElementById('receiptPreview');
      html2canvas(receipt, { scale: 3, useCORS: true }).then(canvas => {
        const outletName = this.namaSPBU.replace(/\s+/g, '_');
        const tgl = this.formatDate(this.waktu).replace(/\//g, '-');
        const noOutlet = this.nomorOutlet;
        const link = document.createElement('a');
        link.download = `${outletName}_${tgl}_${noOutlet}.png`;
        link.href = canvas.toDataURL("image/png");
        link.click();
      });
    },

    downloadTemplate() {
      const template = {
        nomorOutlet: this.nomorOutlet,
        namaSPBU: this.namaSPBU,
        alamat: this.alamat,
        noTransaksi: this.noTransaksi,
        waktu: this.waktu,
        pompa: this.pompa,
        volume: this.volume,
        operator: this.operator,
        footer: this.footer
      };
      const jsonStr = JSON.stringify(template, null, 2);
      const blob = new Blob([jsonStr], { type: "application/json" });
      const outletName = this.namaSPBU.replace(/\s+/g, '_');
      const tgl = this.formatDate(this.waktu).replace(/\//g, '-');
      const noOutlet = this.nomorOutlet;
      const filename = `${outletName}_${tgl}_${noOutlet}.json`;
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = filename;
      a.click();
      URL.revokeObjectURL(url);
      alert("Template berhasil di-download!");
    },

    uploadTemplate(event) {
      const file = event.target.files[0];
      if (!file) return;
      const reader = new FileReader();
      reader.onload = (e) => {
        try {
          const tpl = JSON.parse(e.target.result);
          this.nomorOutlet = tpl.nomorOutlet || '';
          this.namaSPBU = tpl.namaSPBU || '';
          this.alamat = tpl.alamat || '';
          this.noTransaksi = tpl.noTransaksi || '';
          this.waktu = tpl.waktu || '';
          this.pompa = tpl.pompa || '';
          this.volume = tpl.volume || 0;
          this.operator = tpl.operator || '';
          this.footer = tpl.footer || '';
          alert("Config berhasil di-load!");
        } catch (err) {
          alert("Gagal membaca file config!");
          console.error(err);
        }
      };
      reader.readAsText(file);
    }
  }
}

document.addEventListener('alpine:init', () => {
  Alpine.data('receiptApp', receiptApp);
});