<?php 
 
class Login extends CI_Controller{
 
	function __construct(){
		parent::__construct();
		$this->load->model('m_login');
	}
 
	function index(){
		$this->load->view('v_login');
	}
 
	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		//$role 	  = $this->input->post('role');
		$where = array(
			'username' => $username,
			'password' => $password,
			//'role'	   => $role
			);
		// $cek = $this->m_login->cek_login("admin",$where);
		$cek = $this->m_login->cek_login($username,$password);
		if($cek->num_rows() > 0){
			$data  = $cek->row_array();
			$data_session = array(
				'username' => $username,
				'status' => "login",
				'role' => $data['role']
				);
 
			$this->session->set_userdata($data_session);
 			if ($data['role']=='user'){
 				redirect(base_url());
 			}
 			else{
			redirect(base_url("dashboard"));
 			}
		}else{
			// echo "Username dan password salah !";
			$this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'Gagal Login! Username atau Password salah');
			redirect(base_url('login'));
		}
	}
 
	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}