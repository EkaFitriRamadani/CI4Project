<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container" style="font-family: Georgia, 'Times New Roman', Times, serif;">
    <div class="row">
        <div class="col">
            <h1 class="mt-2" style="color: lightcoral;"><center>Daftar Orang</center></h1>
            <form action="" method="post">
                <div class="input-group mb-3" style="background-color: #F08080;">
                    <input type="text" class="form-control" placeholder="Masukkan keyword pencarian.." name="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary text-dark" type="submit" name="submit""><b>Cari</b></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class=" row">
                            <div class="col">
                                <table class="table" style="background-color: darkgrey;">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Alamat</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1 + (6 * ($currentPage - 1)); ?>
                                        <?php foreach ($orang as $o) : ?>
                                            <tr>
                                                <th scope="row"><?= $i++; ?></th>
                                                <td><?= $o['nama']; ?></td>
                                                <td><?= $o['alamat']; ?></td>
                                                <td>
                                                    <a href="" class="btn text-light" style="background-color: #CD5C5C;">Detail</a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                                <?= $pager->links('orang', 'orang_pagination'); ?>
                            </div>
                    </div>
                </div>
                <?= $this->endSection(); ?>