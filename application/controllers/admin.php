<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Bangkok");

class Admin extends CI_Controller {

	function __construct(){
		parent::__construct();		
		$this->load->model('m_admin');
		$this->load->helper(array('form', 'url'));
		// $this->load->library("session");
	}

    public function login()
	{
		$this->load->view('v_login');
	}

    public function aksi_login()
	{
		$this->load->view('admin_home');
	}

	public function input_pemilih_tetap()
	{
		$this->load->view('input_pemilih_tetap');
	}

	public function dashboard()
	{
		$this->load->view('admin_home');
	}


	

}
