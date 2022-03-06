<?php 
 
class M_data extends CI_Model{
	function all_relawan(){
		return $this->db->get('relawan');
	}
	function c_kotbek(){
		$this->db->where('kabupaten','3275');
		return $this->db->count_all_results('relawan');
	}
	function c_kotdep(){
		$this->db->where('kabupaten','3276');
		return $this->db->count_all_results('relawan');
	}
	function list_relawan(){
        $this->db->select('nik,nama,alamat,tempat_lahir,jk,tgl_lahir,rt,rw,reg_provinces.name as `provinsi`,
        ,reg_regencies.name as `kabupaten`,reg_districts.name as `kecamatan`,reg_villages.name as `kelurahan`,hpwa,as_koor');
        $this->db->from('relawan');
        $this->db->join('reg_provinces', 'reg_provinces.id = relawan.provinsi');
        $this->db->join('reg_regencies', 'reg_regencies.id = relawan.kabupaten');
        $this->db->join('reg_districts', 'reg_districts.id = relawan.kecamatan');
        $this->db->join('reg_villages', 'reg_villages.id = relawan.kelurahan');
        return $this->db->get();
		// return $this->db->get('relawan');
	}
    function input_data($data,$table){
        $this->db->insert($table,$data);
    }

    function prov(){
        return $this->db->get('reg_provinces');
    }
    function kota($data){
        $this->db->where('province_id',$data);
        return $this->db->get('reg_regencies');
    }
    function kel($data){
        $this->db->where('regency_id',$data);
        return $this->db->get('reg_districts');
    }
    function des($data){
        $this->db->where('district_id',$data);
        return $this->db->get('reg_villages');
    }

    function getData(){
        return $this->db->get('relawan')->result_array();
    }
}
