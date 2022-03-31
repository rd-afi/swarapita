<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Bangkok");

class Admin extends CI_Controller {

	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			$this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'Silakan login terlebih dahulu');
			redirect(base_url("login"));
		}
		$this->load->helper(array('form', 'url'));
		$this->load->library("session");
		$this->load->model('m_admin');
	}
 
	function index(){
		$this->load->view('admin_home');
	}

	function input_pemilih_tetap(){
		$this->load->view('input_pemilih_tetap');
	}

	function dashboard(){
		$this->load->view('admin_home');
	}

	function register_account(){
		$this->load->view('register');
	}

	function list_account(){
		$data['list_user'] = $this->m_admin->list_account();
		$this->load->view('list_user',$data);
	}

	function list_user(){
        $this->db->select('*');
        $this->db->from('admin');
        return $this->db->get();
	}

	function getDataAccount(){
        return $this->db->get('admin')->result_array();
    }

	function add_account(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$role = $this->input->post('role');
		
		$this->db->where('username',$username);
        $cek_username = $this->db->get('admin');

		if ($cek_username->num_rows() >= 1) {
			$this->session->set_flashdata('ico', 'error');
			$this->session->set_flashdata('msg', 'username Sudah di-Input');
			redirect('admin/register_account');
		} else {
			$data = array(
				'username' => $username,
				'password' => $password,
				'role' => $role
				);
			$this->m_admin->input_account($data,'admin');
			$this->session->set_flashdata('ico', 'success');
			$this->session->set_flashdata('msg', 'Data Berhasil di-Input');
			redirect('admin/register_account');
		}
		}

	public function edit_list_account($id){
        $this->load->model("m_admin");
        $data['account'] = $this->m_admin->account_detail($id)->result();
        $this->load->view('edit_list_account', $data);
       }

}

