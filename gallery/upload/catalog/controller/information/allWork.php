<?php  
class ControllerInformationAllWork extends Controller {
	public function index() {

		$this->load->language('information/allWork');
		$this->load->model('catalog/allWork');

		$all_banners_gallery = array();
		$buff = array();

		$all_banners_gallery = $this->model_catalog_allWork->getAllBannersGallery();

		foreach ($all_banners_gallery as $value) {
			foreach ($value as $key => $val) {
				$buff[] = (array)json_decode($val);
			}	
		}

		foreach ($buff as $value) {
			$flag = 0;
			foreach ($value as $val) {
				if ($value['status'] == 1) {
					$flag = 1;
				}
			}
			if ($flag == 1) {
				$data['all_banners_gallery'][] = $value;
			}
		}

		foreach ($data['all_banners_gallery']  as $key => $value) {
			$data['bunners'][] = array(
				'bunner_name' => $value['name'],
				'bunner_type' => $value['type'],
				'bunner_inf' => $this->model_catalog_allWork->getBannerInfo($value['banner_id'])
			);
		}
		
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/allWork', $data));
	}
}
?>