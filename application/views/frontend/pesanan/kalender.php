<div class="container">
    <header class="page-header">
        <h1 class="page-title">Pesan Kalender</h1>
        <ol class="breadcrumb page-breadcrumb">
            <li><a href="#">Home</a>
            </li>
            <li><a href="#">Pesan</a>
            </li>
            <li class="active">Kalender</li>
        </ol>
    </header>
    <div class="row">
        <?= form_open('kalender', array('enctype' => 'multipart/form-data')) ?>
        <div class="col-md-5">
            <h4>Upload Gambar</h4>
            <div class="product-page-product-wrap">
                <div class="clearfix">
                    <input type="file" class="dropify" name="upload" required>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <h4>Detail Pesanan</h4>
            <div class="row" data-gutter="10">
                <div class="col-md-8">
                    <div class="box">
                        <div class="form-group">
                            <label for="">Ukuran Kertas<span style="color: red">*</span> :</label><br>
                            <select name="ukuran" id="ukuran" class="form-control" required>
                                <option value="29 X 42 cm">29 X 42 cm</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Cetak Isi Cover :</label><br>
                            <select name="cetakisicover" id="cetakisicover" class="form-control" required>
                                <option value="4/0">4/0</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Jumlah Halaman :</label><br>
                            <select name="jumlahhalaman" id="jumlahhalaman" class="form-control" required>
                                <option value="13">13 Hal</option>
                                <option value="6">6 Hal</option>
                                <option value="4">4 Hal</option>
                                <option value="1">1 Hal</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Jumlah (rim) :</label>
                            <input type="number" name="jumlah" class="form-control" id="jumlah" onkeyup="showTotalKalender()" required autocomplete="off">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for=""><span style="color: red">*</span>Keterangan :</label>
                            <ul>
                                <li>13 Halaman : Rp. 500.000 per rim</li>
                                <li>6 Halaman : Rp. 750.000 per rim</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box-highlight">
                        <h4>Total</h4>
                        <div id="total">
                            <h3>0</h3>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary" name="keranjang"><i class="fa fa-shopping-cart"></i>Add to cart
                        </button>
                        <?= form_close() ?>
                        <div class="product-page-side-section">
                            <h5 class="product-page-side-title">Share This Item</h5>
                            <ul class="product-page-share-item">
                                <li>
                                    <a class="fa fa-facebook" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-twitter" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-pinterest" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-instagram" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-google-plus" href="#"></a>
                                </li>
                            </ul>
                        </div>
                        <div class="product-page-side-section">
                            <h5 class="product-page-side-title">Shipping & Returns</h5>
                            <p class="product-page-side-text">In the store of your choice in 3-5 working days</p>
                            <p class="product-page-side-text">STANDARD 4.95 USD FREE (ORDERS OVER 50 USD) In 2-4 working
                                days*</p>
                            <p class="product-page-side-text">EXPRESS 9.95 USD In 24-48 hours (working days)*</p>
                            <p class="product-page-side-text">* Except remote areas</p>
                            <p class="product-page-side-text">You have one month from the shipping confirmation
                                email.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="gap"></div>
</div>