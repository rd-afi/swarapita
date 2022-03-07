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
        $data['chartData'] = $this->m_data->getChartData()->result();
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
	function edit($id){
		$where = array('nik' => $id);
		$data['relawan'] = $this->m_data->edit_data($where,'relawan')->result();
		$this->load->view('edit_form',$data);
	}
	function update_relawan(){
		$nik = $this->input->post('nik');
		$nama = $this->input->post('nama');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$jk = $this->input->post('jk');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$alamat = $this->input->post('alamat');
		$rt = $this->input->post('rt');
		$rw = $this->input->post('rw');
		$provinsi = $this->input->post('provinsi');
		$kabupaten = $this->input->post('kabupaten');
		$kecamatan = $this->input->post('kecamatan');
		$kelurahan = $this->input->post('kelurahan');
		$hpwa = $this->input->post('hpwa');
		$as_koor = $this->input->post('as_koor');
	 
		$data = array(
			'nik' => $nik,
			'nama' => $nama,
			'tempat_lahir' => $tempat_lahir,
			'jk' => $jk,
			'tgl_lahir' => $tanggal_lahir,
			'alamat' => $alamat,
			'rt' => $rt,
			'rw' => $rw,
			'provinsi' => $provinsi,
			'kabupaten' => $kabupaten,
			'kecamatan' => $kecamatan,
			'kelurahan' => $kelurahan,
			'hpwa' => $hpwa,
			'as_koor' => $as_koor,
			'source' => 'form',
			'updated_at' => date("Y-m-d H:i:s")
		);
	 
		$where = array(
			'nik' => $nik
		);
	 
		$this->m_data->update_data($where,$data,'relawan');
		redirect('list_relawan');
	}
	function hapus($id){
		$where = array('nik' => $id);
		$this->m_data->hapus_data($where,'relawan');
		redirect('list_relawan');
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
