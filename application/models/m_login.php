<?php 
 
class M_login extends CI_Model{	
	function cek_login($username,$password){		
		// return $this->db->get_where($table,$where);
		// $this->db->where($table,$where);
		// return $this->db->get();
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$result = $this->db->get('admin',1);
		return $result;
	}	
}