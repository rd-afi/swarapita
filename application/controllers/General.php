<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Bangkok");

class General extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_data');
		$this->load->helper(array('form', 'url'));
		
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('index');
	}
	public function upload_relawan()
	{
		$this->load->view('upload_data');
	}
	public function json_prov(){
		$query = $this->m_data->prov()->result();
		echo json_encode($query);
	}
	public function json_kota(){
		$query = $this->m_data->kota()->result();
		echo json_encode($query);
	}
	// public function json_kota($data){
	// 	$query = $this->m_data->kota($data)->result();
	// 	echo json_encode($query);
	// }
	public function json_kel($data){
		$query = $this->m_data->kel($data)->result();
		echo json_encode($query);
	}
	public function json_des($data){
		$query = $this->m_data->des($data)->result();
		echo json_encode($query);
	}
	function add_relawan(){
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
		if (substr($hpwa,0,1) == 0){
			$hpwa = '62'.substr($hpwa,1);
		}
		$as_koor = $this->input->post('as_koor');
		$penginput= $_SESSION['username'];

		$this->db->where('nik',$nik);
        $cek_nik = $this->db->get('relawan');

		if ($cek_nik->num_rows() >= 1) {
			$this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'NIK Sudah di-Input');
			redirect('general');
		} else {
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
				'created_at' => date("Y-m-d H:i:s"),
				'penginput' =>$penginput
				);
			$this->m_data->input_data($data,'relawan');
			$this->session->set_flashdata('ico', 'success');
			$this->session->set_flashdata('msg', 'Data Berhasil di-Input');
			redirect('general');
		}
	}

}
