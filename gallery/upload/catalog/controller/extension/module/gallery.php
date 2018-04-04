<?php

class ControllerExtensionModuleGallery extends Controller {
	
	public function index($setting) {
		
		//Load language file
		$this->language->load('extension/module/gallery');

		//Set title from language file
      	$data['heading_title'] = $this->language->get('heading_title');

		//Load model
		//$this->load->model('extension/module');
		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'name'  => $setting['name'],
					'title' => $result['title'],
					'link'  => $result['link'],
					'type'  => $setting['type'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['all_work'] = $this->url->link('information/allWork', '', 'SSL');

		
		return $this->load->view('extension/module/gallery', $data);

	}
}

?>