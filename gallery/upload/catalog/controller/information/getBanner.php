<?php

class ControllerInformationGetBanner extends Controller {
	public function index(){

		$this->load->language('information/allWork');
		$this->load->model('catalog/allWork');

		if (isset($this->request->get['banner_id'])) {
			$banner_id = (int)$this->request->get['banner_id'];
		} else {
			$banner_id = 0;
		}

		if (isset($this->request->get['banner_type'])) {
			$banner_type = $this->request->get['banner_type'];
		} else {
			$banner_type = 0;
		}

		if (isset($this->request->get['banner_name'])) {
			$banner_name = $this->request->get['banner_name'];
		} else {
			$banner_name = 0;
		}

		$data['banner'][] = $this->model_catalog_allWork->getBannerInfo($banner_id);
		$data['banner_type'] = $banner_type;
		$data['banner_name'] = $banner_name;

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/getBanner', $data));
	}
}

?>