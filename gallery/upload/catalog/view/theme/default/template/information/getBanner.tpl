<?php echo $header; ?>
<div class="container-fluid" style="margin-top: 50px;">
    <div class="row">
        <div class="col-12">
            <h3 class="title-section text-center"><?php echo $banner_name; ?></h3>
        </div>
        <div class="col-12">
            <div class="gallery_cutegory">
                <?php foreach ($banner as $value) { ?>
                	<?php foreach ($value as $val) { ?>
                		<?php if ($banner_type == 'img') { ?>
		                    <a href="image/<?php echo $val['image']; ?>">
		                        <div class="card">
		                            <div class="card-img-top" style="height: 250px; background-image: url(image/<?php echo $val['image']; ?>);" alt="<?php echo $val['title']; ?>"></div>
		                            <div class="card-body">
		                                <p class="card-text"><?php echo $val['title']; ?></p>
		                            </div>
		                        </div>
		                    </a>
		                <?php } ?>
	                <?php } ?>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
    <script type="text/javascript">
    	$(document).ready(function () {
		    $('.gallery_cutegory').magnificPopup({
		        type: 'image',
		        delegate: 'a',
		        gallery:{
		            enabled:true
		        }
	    });
});</script>
<?php echo $footer; ?>