<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>
<div class="container" style="font-family: cursive;">
    <div class="row">
        <div class="col">
            <h2 class='mt-3 mb-2' style="color: lightcoral;"><b>Detail Komik</b></h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $komik['sampul']; ?>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8" style="background-color: darkgrey;">
                        <div class="card-body">
                            <h5 class="card-title" style="color: black;"><b><?= $komik['judul']; ?></b></h5>
                            <p class="card-text"><b>Penulis : </b><?= $komik['penulis']; ?></p>
                            <p class="card-text"><small class="text-muted"><b>Penerbit : </b> <?= $komik['penerbit']; ?></small></p>

                            <a href="/komik/edit/<?= $komik['slug']; ?>" class="btn text-light" style="background-color: #CD5C5C;">Edit</a>

                            <form action="/komik/<?= $komik['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn text-light" onclick="return confirm('apakah anda yakin?');" style="background-color: #CD5C5C;">Delete</button>
                            </form>

                            <br><br>
                            <button type="submit" class="btn" style="background-color: #CD5C5C;"><a href="/komik" style="color: white;">Kembali Ke Daftar komik</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>