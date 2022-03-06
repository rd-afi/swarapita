<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Bangkok");

class Dashboard extends CI_Controller {

	function __construct(){
		parent::__construct();
        if ($this->session->userdata['status'] == 'login') {
        } else {
            $this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'Silakan login terlebih dahulu');
            redirect('login');
        } 
		$this->load->model('m_data');
		$this->load->helper(array('form', 'url'));
		$this->load->library("session");
	}

	public function index()
	{
        $data['t_relawan'] = $this->m_data->all_relawan()->result();
        $data['c_kotbek'] = $this->m_data->c_kotbek();
        $data['c_kotdep'] = $this->m_data->c_kotdep();
		$this->load->view('dashboard',$data);
	}
	public function upload_relawan()
	{
		$this->load->view('upload_data');
	}
	public function list_relawan(){
		$data['relawan'] = $this->m_data->list_relawan()->result();
		$this->load->view('list_relawan',$data);
		// $this->load->view('data',$data);
	}
	public function json_prov(){
		$query = $this->m_data->prov()->result();
		echo json_encode($query);
	}
	public function json_kota($data){
		$query = $this->m_data->kota($data)->result();
		echo json_encode($query);
	}
	public function json_kel($data){
		$query = $this->m_data->kel($data)->result();
		echo json_encode($query);
	}
	public function json_des($data){
		$query = $this->m_data->des($data)->result();
		echo json_encode($query);
	}
}
