<?php 
 
class M_admin extends CI_Model{
    
    function input_account($data,$table){
        $this->db->insert($table,$data);
    }

    function all_relawan(){
		return $this->db->get('admin');
	}

    function list_account(){
        $this->db->select('username,password,role');
        $this->db->from('admin');
        return $this->db->get();
	}
}
