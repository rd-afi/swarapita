<?php 
 
class M_admin extends CI_Model{
    
    function input_account($data,$table){
        $this->db->insert($table,$data);
    }

    function all_relawan(){
		return $this->db->get('admin');
	}

    public function list_account(){
      $query = $this->db->query("SELECT * FROM admin")->result();
      return $query;
  }

    public function delete_account($id){
      $this->db->where('id',$id);
      return $this->db->delete('admin');
    }

    public function account_detail($id){
    $this->db->where('id',$id);
    return $this->db->get('admin');
  }
}
