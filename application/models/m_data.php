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
        $this->db->select('relawan.nik as `nik`,relawan.nama as `nama`,relawan.alamat as `alamat`,relawan.tempat_lahir as `tempat_lahir`,relawan.jk as `jk`,relawan.tgl_lahir as `tgl_lahir`,reg_provinces.name as `provinsi`,reg_regencies.name as `kabupaten`,reg_districts.name as `kecamatan`,reg_villages.name as `kelurahan`,hpwa,as_koor,penginput,data_kpu.lokasi as `lokasi`');
        $this->db->from('relawan');
        $this->db->join('reg_provinces', 'reg_provinces.id = relawan.provinsi');
        $this->db->join('reg_regencies', 'reg_regencies.id = relawan.kabupaten');
        $this->db->join('reg_districts', 'reg_districts.id = relawan.kecamatan');
        $this->db->join('reg_villages', 'reg_villages.id = relawan.kelurahan');
        $this->db->join('data_kpu','relawan.nik = data_kpu.nik','left');
        return $this->db->get();
		// return $this->db->get('relawan');
	}
    function input_data($data,$table){
        $this->db->insert($table,$data);
    }
    function hapus_data($where,$table){
        $this->db->where($where);
        $this->db->delete($table);
    }
    function edit_data($where,$table){		
        return $this->db->get_where($table,$where);
    }
    function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}	
    function prov(){
        return $this->db->get('reg_provinces');
    }
    // function kota($data){
    //     $this->db->where('province_id',$data);
    //     return $this->db->get('reg_regencies');
    // }
    function kota(){
        $this->db->where('province_id','32');
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

    public function getChartData(){
      $query = $this->db->query("SELECT reg_regencies.name AS kota, COUNT(relawan.kabupaten) AS Total_Pemilih FROM reg_regencies
          JOIN relawan ON relawan.kabupaten=reg_regencies.id
          GROUP BY reg_regencies.name;");
      return $query;
  }
  public function DepokChartData(){
    $query = $this->db->query("
        SELECT reg_districts.name as kecamatan, COUNT(relawan.kecamatan) as  Total_Pemilih
        from relawan
        join reg_districts on reg_districts.id=relawan.kecamatan
        join reg_regencies on reg_regencies.id=relawan.kabupaten
        join reg_villages ON reg_villages.id=relawan.kelurahan
        WHERE reg_regencies.id=3276
        GROUP BY reg_districts.name desc;");
    return $query;
}

 public function BekasiChartData(){
    $query = $this->db->query("
        SELECT reg_districts.name as kecamatan, COUNT(relawan.kecamatan) as  Total_Pemilih
        from relawan
        join reg_districts on reg_districts.id=relawan.kecamatan
        join reg_regencies on reg_regencies.id=relawan.kabupaten
        join reg_villages ON reg_villages.id=relawan.kelurahan
        WHERE reg_regencies.id=3275
        GROUP BY reg_districts.name desc;");
    return $query;
}

}
