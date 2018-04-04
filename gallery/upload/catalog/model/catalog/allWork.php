<?php
class ModelCatalogAllWork extends Model {

	public function getAllBannersGallery(){
		$query = $this->db->query("SELECT setting FROM ". DB_PREFIX ."module WHERE code='gallery'");

		return $query->rows;
	}

	public function getBannerInfo($id_bunner){
		$query = $this->db->query("SELECT * FROM ". DB_PREFIX ."banner_image WHERE banner_id=".$id_bunner);

		return $query->rows;
	}

}
?>