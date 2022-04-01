<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kpu extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function add($data) {
		$this->db->insert('data_kpu', $data);
		return $this->db->insert_id();
	}

	public function update($where, $data) {
		return $this->db->update('data_kpu', $data, $where);
	}

	public function delete($where) {
		return $this->db->delete('data_kpu', $where);
	}

	public function get($where = 0) {
		if($where) 
			$this->db->where($where);
		$query = $this->db->get('data_kpu');
		return $query->row();
	}

	public function get_relawan_temp($where = 0) {
		if($where) 
			$this->db->where($where);
		$query = $this->db->get('relawan_temp');
		return $query->row();
	}

	public function get_all($where = 0, $order_by_column = 0, $order_by = 0) {
		if($where) 
			$this->db->where($where);
		if($order_by_column and $order_by) 
			$this->db->order_by($order_by_column, $order_by);
		$query = $this->db->get('data_kpu');
		return $query->result();
	}

	public function get_num_rows($where = 0) {
		if($where) 
			$this->db->where($where);
		$query = $this->db->get('data_kpu');		
		return $query->num_rows();
	}

	public function add_batch($data) {
		return $this->db->insert_batch('data_kpu', $data);
	}

	public function add_batch_relawan($data) {
		return $this->db->insert_batch('relawan_temp', $data);
	}

}