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

	function add_relawan(){
		$nik = $this->input->post('nik');
		$nama = $this->input->post('nama');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$jk = $this->input->post('jk');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$alamat = $this->input->post('alamat');
		$rt = $this->input->post('rt');
		$rw = $this->input->post('rw');
		$kelurahan = $this->input->post('kelurahan');
		$kecamatan = $this->input->post('kecamatan');
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
			'keldesa' => $kelurahan,
			'kec' => $kecamatan,
			'hpwa' => $hpwa,
			'as_koor' => $as_koor,
			'source' => 'form',
			'created_at' => date("Y-m-d H:i:s")
			);
		$this->m_data->input_data($data,'relawan');
		redirect('general');
	}
	public function list_relawan(){
		$data['relawan'] = $this->m_data->list_relawan()->result();
		$this->load->view('list_relawan',$data);
		// $this->load->view('data',$data);
	}
	public function add_excel_relawan(){
			$file_excel = $this->request->getFile('fileexcel');
			$ext = $file_excel->getClientExtension();
			if($ext == 'xls') {
				$render = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
			} else {
				$render = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
			}
			$spreadsheet = $render->load($file_excel);
	
			$data = $spreadsheet->getActiveSheet()->toArray();
			foreach($data as $x => $row) {
				if ($x == 0) {
					continue;
				}
				
				$nik = $row[0];
				$nama = $row[1];
				$tempat_lahir = $row[2];
				$jk = $row[3];
				$alamat = $row[4];
				$tgl_lahir = $row[5];
				$rt = $row[6];
				$rw = $row[7];
				$keldesa = $row[8];
				$kec = $row[9];
				$hpwa = $row[10];
				$as_koor = $row[11];
	
				$db = \Config\Database::connect();

				$cekNIK = $db->table('relawan')->getWhere(['nik'=>$nik])->getResult();

				if(count($cekNIK) > 0) {
					session()->setFlashdata('message','<b style="color:red">Data Gagal di Import nik ada yang sama</b>');
				} else {
	
				$simpandata = [
					'nik' => $nik,
					'nama' => $nama,
					'tempat_lahir' => $tempat_lahir,
					'jk' => $jk,
					'tgl_lahir' => $tanggal_lahir,
					'alamat' => $alamat,
					'rt' => $rt,
					'rw' => $rw,
					'keldesa' => $kelurahan,
					'kec' => $kecamatan,
					'hpwa' => $hpwa,
					'as_koor' => $as_koor,
					'source' => 'form',
					'created_at' => date("Y-m-d H:i:s")
				];
	
				$db->table('relawan')->insert($simpandata);
				session()->setFlashdata('message','Berhasil import excel'); 
			}
		}
		return redirect()->to('/list_relawan');
	}

	public function import() {
		$path 		= base_url() .'public/import/';
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
					$result 	= $this->user->get(["country_code" => $val[2], "mobile" => $val[3]]);
					if($result) {
					} else {
						$list [] = [
							'name'					=> $val[0],
							'country_code'			=> $val[1],
							'mobile'				=> $val[2],
							'email'					=> $val[3],
							'city'					=> $val[4],
							'ip_address'			=> $this->ip_address,
							'created_at' 			=> $this->datetime,
							'status'				=> "1",
						];
					}
				}
			}
			if(file_exists($file_name))
				unlink($file_name);
			if(count($list) > 0) {
				$result 	= $this->user->add_batch($list);
				if($result) {
					$json = [
						'success_message' 	=> showSuccessMessage("All Entries are imported successfully."),
					];
				} else {
					$json = [
						'error_message' 	=> showErrorMessage("Something went wrong. Please try again.")
					];
				}
			} else {
				$json = [
					'error_message' => showErrorMessage("No new record is found."),
				];
			}
		}
		echo json_encode($json);
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
