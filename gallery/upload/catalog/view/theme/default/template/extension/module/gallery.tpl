<!-- Start Gallery module -->
   <section class="gallery">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h3 class="title-section text-center">Наши работы</h3>
                </div>
                <div class="col-12">
                    <div class="gallery gallery-block">
                    <?php $i = 0; foreach ($banners as $value) { ?>
                      <?php if ($i < 8) { ?>
               					<?php if ($value['type'] == 'img') { ?>
               						<a href="<?php echo $value['image']; ?>"><img title="<?php echo $value['title']; ?>" src="<?php echo $value['image']; ?>" alt="<?php echo $value['title']; ?>"></a>
                					<?php } else {?>
                						<div>
                              <iframe width="100%" height="auto" src="<?php echo $value['link']; ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          							    </div>
          						  <?php } ?>
                      <?php } ?>
          			    <?php $i++;} ?>
                    </div>
                </div>
                <div class="col-12 text-center">
                  <div type="button" class="btn btn-outline-primary gallery-btn"><a href="<?php echo $all_work; ?>">Все работы</a></div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
    	$(document).ready(function () {
		    $('.gallery-block').magnificPopup({
		        type: 'image',
		        delegate: 'a',
		        gallery:{
		            enabled:true
		        }
	    });
});</script>
<!-- End Gallery module -->