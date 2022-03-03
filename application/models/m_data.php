<?php 
 
class M_data extends CI_Model{
	function list_relawan(){
		return $this->db->get('relawan');
	}
    function input_data($data,$table){
        $this->db->insert($table,$data);
    }
}
