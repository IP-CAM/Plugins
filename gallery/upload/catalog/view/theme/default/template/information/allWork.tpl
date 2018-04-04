<?php echo $header; ?>
<div class="container-fluid" style="margin-top: 50px;">
    <div class="row">
        <div class="col-12">
            <h3 class="title-section text-center">Наши работы</h3>
        </div>
        <div class="col-12">
            <div class="gallery_cutegory">
                <?php foreach ($bunners as $key => $bunner) { ?>
                    <a href="index.php?route=information/getBanner&banner_id=<?php foreach ($bunner['bunner_inf'] as $value) {
                        echo $value['banner_id'];
                        break;
                    } ?>&banner_type=<?php echo $bunner['bunner_type']; ?>&banner_name=<?php echo $bunner['bunner_name']; ?>">
                        <div class="card">
                            <?php foreach ($bunner['bunner_inf'] as $value) { ?>
                                <?php if (!empty($value['image'])) { ?>
                                    <div class="card-img-top" style="height: 250px; background-image: url(image/<?php echo $value['image']; ?>);" alt="<?php echo $value['title']; ?>"></div>
                                    <?php break; ?>
                                <?php } ?>
                            <?php } ?>
                            <div class="card-body">
                                <p class="card-text"><?php echo $bunner['bunner_name']; ?></p>
                            </div>
                        </div>
                    </a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>