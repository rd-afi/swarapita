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
		$this->load->model('m_kpu', 'user');
	}

	public function index()
	{
        $data['t_relawan'] = $this->m_data->all_relawan()->result();
        $data['c_kotbek'] = $this->m_data->c_kotbek();
        $data['c_kotdep'] = $this->m_data->c_kotdep();
        $data['chartData'] = $this->m_data->getChartData()->result();
		$data['BekasiChartData'] = $this->m_data->BekasiChartData()->result();
		$this->load->view('dashboard',$data);
	}
	public function json_chart_all(){
		$query = $this->m_data->getChartData()->result();
		echo json_encode($query);
	}
		public function moreinfo_Bekasi()
	{
		$data['BekasiChartData'] = $this->m_data->BekasiChartData()->result();
		$this->load->view('moreinfo_bekasi',$data);
	}

		public function moreinfo_Depok()
	{
		$data['DepokChartData'] = $this->m_data->DepokChartData()->result();
		$this->load->view('moreinfo_depok',$data);
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

	// UPLOAD
	public function template_kpu()
	{
		return base_url('public/template_form_data_kpu.xlsx');
	}
	public function upload_kpu()
	{
		$this->load->view('upload_kpu');
	}
	public function import() {
		$path 		= 'documents/users/';
		$json 		= [];
		$this->upload_config($path);
		if (!$this->upload->do_upload('file')) {
			$json = [
				'error_message' => showErrorMessage($this->upload->display_errors()),
			];
		} else {
			$file_data 	= $this->upload->data();
			$file_name 	= $path.$file_data['file_name'];
			$arr_file 	= explode('.', $file_name);
			$extension 	= end($arr_file);
			if('csv' == $extension) {
				$reader 	= new \PhpOffice\PhpSpreadsheet\Reader\Csv();
			} else {
				$reader 	= new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
			}
			$spreadsheet 	= $reader->load($file_name);
			$sheet_data 	= $spreadsheet->getActiveSheet()->toArray();
			$list 			= [];
			foreach($sheet_data as $key => $val) {
				if($key != 0) {
					$result 	= $this->user->get(["nik" => $val[1]]);
					if($result) {
					} else {
						$list [] = [
							'nik'					=> $val[0],
							'nama'					=> $val[1],
							'lokasi'				=> $val[2],
						];
					}
				}
			}
			if(file_exists($file_name))
				unlink($file_name);
			if(count($list) > 0) {
				$result 	= $this->user->add_batch($list);
				if($result) {
					$this->session->set_flashdata('ico', 'success');
					$this->session->set_flashdata('msg', 'Data Berhasil diimport');
					// $json = [
					// 	'success_message' 	=> showSuccessMessage("All Entries are imported successfully."),
					// ];
				} else {
					$this->session->set_flashdata('ico', 'error');
					$this->session->set_flashdata('msg', 'Gagal, Silakan coba lagi');
					// $json = [
					// 	'error_message' 	=> showErrorMessage("Something went wrong. Please try again.")
					// ];
				}
			} else {
				$this->session->set_flashdata('ico', 'error');
				$this->session->set_flashdata('msg', 'Tidak ada data');
				// $json = [
				// 	'error_message' => showErrorMessage("No new record is found."),
				// ];
			}
		}
		// echo json_encode($json);
		redirect('list_relawan');

	}

	public function upload_config($path) {
		if (!is_dir($path)) 
			mkdir($path, 0777, TRUE);		
		$config['upload_path'] 		= './'.$path;		
		$config['allowed_types'] 	= 'csv|CSV|xlsx|XLSX|xls|XLS';
		$config['max_filename']	 	= '255';
		$config['encrypt_name'] 	= TRUE;
		$config['max_size'] 		= 4096; 
		$this->load->library('upload', $config);
	}
}
