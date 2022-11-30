<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Bangkok");

class Dashboard extends CI_Controller {

	function __construct(){
		parent::__construct();
        // if ($this->session->userdata['status'] == 'login' && $this->session->userdata['role'] != 'user') {
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
        $data['t_relawan'] = $this->m_data->total_all_relawan();
        $data['c_kotbek'] = $this->m_data->c_kotbek();
        $data['c_kotdep'] = $this->m_data->c_kotdep();
        $data['chartData'] = $this->m_data->getChartData()->result();
		$data['BekasiChartData'] = $this->m_data->BekasiChartData()->result();
		$data['barchart_material3'] = $this->m_data->DepokChartData()->result();
	
		$this->load->view('dashboard',$data);
	}
	public function json_chart_all(){
		$query = $this->m_data->getChartData()->result();
		echo json_encode($query);
	}


		public function moreinfo_Bekasi(){
		$data['BekasiChartData'] = $this->m_data->BekasiChartData()->result();
		// $data['bekasi_listdata'] = $this->m_data->BekasiChartData()->result();
		$data['bekasi_kec'] = $this->m_data->list_bekasi_kec()->result();
		$data['bekasi_kel'] = $this->m_data->list_bekasi_kel()->result();
		$this->load->view('moreinfo_bekasi',$data);
	}

		public function moreinfo_Depok(){
		$data['DepokChartData'] = $this->m_data->DepokChartData()->result();
		//$data['depok_listdata'] = $this->m_data->DepokChartData()->result();
		$data['depok_kec'] = $this->m_data->list_depok_kec()->result();
		$data['depok_kel'] = $this->m_data->list_depok_kel()->result();
		$this->load->view('moreinfo_depok',$data);
	}

	public function list_relawan(){
		if ($_SESSION['role'] == 'user') {
			$data['relawan'] = $this->m_data->list_relawan_by_penginput($_SESSION['username'])->result();
		} else {
			$data['relawan'] = $this->m_data->list_relawan()->result();
		}
		$this->load->view('list_relawan',$data);
		// $this->load->view('data',$data);
	}
	function edit($id){
		$this->session->set_userdata('edit', 'norm');
		// $where = array('nik' => $id);
		// $data['relawan'] = $this->m_data->edit_data($where,'relawan')->result();
		$data['relawan'] = $this->m_data->edit_data($id)->result();
		$this->load->view('edit_form',$data);
	}
	function edit_relawan_temp($id){
		$this->session->set_userdata('edit', 'temp');
		$where = array('nik' => $id);
		// $data['relawan'] = $this->m_data->edit_data($where,'relawan_temp')->result();
		$data['relawan'] = $this->m_data->edit_data($where)->result();
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
		// $provinsi = $this->input->post('provinsi');
		$kota = $this->input->post('kota');
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
			// 'provinsi' => $provinsi,
			'kota' => $kota,
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
	 
		if ($_SESSION['edit'] == 'norm') {
			$this->m_data->update_data($where,$data,'relawan');
			$this->m_data->update_data($where,$data,'relawan_temp');
			redirect('list_relawan');
		} else {
			$this->m_data->update_data($where,$data,'relawan_temp');
			redirect('upload_relawan');
		}
	}
	function hapus($id){
		$where = array('nik' => $id);
		$this->m_data->hapus_data($where,'relawan');
		$this->m_data->hapus_data($where,'relawan_temp');
		redirect('list_relawan');
	}
	function hapus_temp($id){
		$where = array('nik' => $id);
		$this->m_data->hapus_data($where,'relawan_temp');
		redirect('upload_relawan');
	}
	public function json_prov(){
		$query = $this->m_data->prov()->result();
		echo json_encode($query);
	}
	public function json_kota(){
		$query = $this->m_data->kota()->result();
		echo json_encode($query);
	}
	public function json_kec($data){
		$query = $this->m_data->kel($data)->result();
		echo json_encode($query);
	}
	public function json_kel($data){
		$query = $this->m_data->des($data)->result();
		echo json_encode($query);
	}

	// UPLOAD
	public function template_kpu()
	{
		return base_url('public/template_form_data_kpu.xlsx');
	}

	public function template_relawan()
	{
		return base_url('public/template_relawan.xlsx');
	}


	public function upload_kpu()
	{
		$this->load->view('upload_kpu');
	}

		public function upload_relawan()
	{
		$data['relawan'] = $this->m_data->list_relawan_temp()->result();
		$this->load->view('upload_relawan',$data);
	}


	public function import_relawan() {
		$path 		= 'documents/users/';
		$json 		= [];
		$err		= [];
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
					$result 	= $this->user->get_relawan_temp(["nik" => $val[0]]);
					$result2 	= $this->user->get(["nik" => $val[0]]);
					if($val[0] == NULL || $val[0] == "") {
					} elseif ($result || $result2) {
						$dup[] = $val[0];
						$this->session->set_userdata('dup', $dup);
					} elseif (strlen($val[0]) != 16) {
						$len[] = $val[0];
						$this->session->set_userdata('len', $len);
					} else {
						// (strtolower(substr($val[3],0,1)) == 'l') ? $val[3] = 1 : $val[3] = 2;
						$list [] = [
							'nik'					=> $val[0],
							'nama'					=> $val[1],
							'tempat_lahir'			=> $val[2],
							'jk'				=> (strtolower(substr($val[3],0,1)) == 'l') ? 1 : 2,
							'tgl_lahir'			=> date_format(date_create($val['4']),"Y-m-d"),
							'alamat'			=> $val[5],
							'rt'				=> $val[6],
							'rw'				=> $val[7],
							'provinsi'			=> $val[8],
							'kota'				=> $val[9],
							'kelurahan'			=> $val[10],
							'kecamatan'			=> $val[11],
							'hpwa'				=> $val[12],
							'as_koor'			=> 1,
							'source'			=> "excel",
							'created_at'		=> date("Y-m-d H:i:s"),
							'updated_at'		=> null,
							'penginput'			=> $_SESSION['username']
						];
					}
				}
			}
			if(file_exists($file_name))
				unlink($file_name);
			if(count($list) > 0) {
				$result 	= $this->user->add_batch_relawan($list);
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
		redirect('upload_relawan');

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


	public function update_account($id){
        $this->load->model("m_admin");
        $id = $this->input->post("id");
        $password = $this->input->post("password");
        $role = $this->input->post("role");
        $data['account']=$this->m_admin->account_detail($id);
		$data = $this->m_data->update_account($id,$password,$role);
        if ($data['account'] == 1){
              $this->session->set_flashdata('msg',
                  '<div class="alert alert-danger">
                     <p>Akun gagal di update.</p>
                   </div>');
              redirect('admin/edit_list_account');
        }else{
            $this->session->set_flashdata('msg',
                  '<div class="alert alert-success">
                     <p>Akun berhasil di update.</p>
                   </div>');
              redirect('admin/list_account');
        }
    }

	public function delete_account($id){
        $this->load->model("m_admin");
        $data['list_user'] = $this->m_admin->list_account();
        if ($this->m_admin->delete_account($id)){
            $this->load->model("m_admin");
            $data['list_user'] = $this->m_admin->list_account();
            $this->session->set_flashdata('ico', 'success');
			$this->session->set_flashdata('msg', 'Data berhasil dihapus');
            $this->load->view("list_user",$data);
        }else{
            $this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'Data gagal dihapus. Silahkan coba kembali');
        }
    }

    function bekasi_listdata(){
		$data['list_data'] = $this->m_data->bekasi_listdata();
		$this->load->view('moreinfo_bekasi',$data);
	}

}
