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
	

}
