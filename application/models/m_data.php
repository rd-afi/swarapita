<?php 
 
class M_data extends CI_Model{
	function all_relawan(){
		return $this->db->get('relawan');
	}
	function c_kotbek(){
		$this->db->where('kota','3275');
		return $this->db->count_all_results('relawan');
	}
	function c_kotdep(){
		$this->db->where('kota','3276');
		return $this->db->count_all_results('relawan');
	}
	function list_relawan(){
        // $this->db->select('relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,reg_provinces.name as provinsi,reg_regencies.name as kota,reg_districts.name as kecamatan,reg_villages.name as kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi');
        // $this->db->from('relawan');
        // $this->db->join('reg_provinces', 'reg_provinces.id = relawan.provinsi');
        // $this->db->join('reg_regencies', 'reg_regencies.id = relawan.kota');
        // $this->db->join('reg_districts', 'reg_districts.id = relawan.kecamatan');
        // $this->db->join('reg_villages', 'reg_villages.id = relawan.kelurahan');
        // $this->db->join('data_kpu','relawan.nik = data_kpu.nik','left');
        // return $this->db->get();
		// return $this->db->get('relawan');
        $query = $this->db->query("
        SELECT relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,reg_provinces.name as provinsi,reg_regencies.name as kota,reg_districts.name as kecamatan,reg_villages.name as kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan
        JOIN reg_provinces ON reg_provinces.id = relawan.provinsi
        LEFT JOIN reg_regencies ON reg_regencies.id = relawan.kota
        LEFT JOIN reg_districts ON reg_districts.id = relawan.kecamatan
        LEFT JOIN reg_villages ON reg_villages.id = relawan.kelurahan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        UNION
        SELECT relawan_temp.nik as nik, relawan_temp.nama as nama, alamat ,tempat_lahir ,jk ,tgl_lahir,provinsi,kota,kecamatan,kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan_temp
        LEFT JOIN data_kpu ON data_kpu.nik = relawan_temp.nik
        ");
        return $query;
	}
	function list_relawan_by_penginput($user){
        // $this->db->select('relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,reg_provinces.name as provinsi,reg_regencies.name as kota,reg_districts.name as kecamatan,reg_villages.name as kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi');
        // $this->db->from('relawan');
        // $this->db->join('reg_provinces', 'reg_provinces.id = relawan.provinsi');
        // $this->db->join('reg_regencies', 'reg_regencies.id = relawan.kota');
        // $this->db->join('reg_districts', 'reg_districts.id = relawan.kecamatan');
        // $this->db->join('reg_villages', 'reg_villages.id = relawan.kelurahan');
        // $this->db->join('data_kpu','relawan.nik = data_kpu.nik','left');
        // return $this->db->get();
		// return $this->db->get('relawan');
        $query = $this->db->query("
        SELECT relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,reg_provinces.name as provinsi,reg_regencies.name as kota,reg_districts.name as kecamatan,reg_villages.name as kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan
        JOIN reg_provinces ON reg_provinces.id = relawan.provinsi
        LEFT JOIN reg_regencies ON reg_regencies.id = relawan.kota
        LEFT JOIN reg_districts ON reg_districts.id = relawan.kecamatan
        LEFT JOIN reg_villages ON reg_villages.id = relawan.kelurahan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE penginput = '$user'
        UNION
        SELECT relawan_temp.nik as nik, relawan_temp.nama as nama, alamat ,tempat_lahir ,jk ,tgl_lahir,provinsi,kota,kecamatan,kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan_temp
        LEFT JOIN data_kpu ON data_kpu.nik = relawan_temp.nik
        ");
        return $query;
	}
	function list_relawan_temp(){
        return $this->db->get('relawan_temp');
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
    function edit_data_temp($where,$table){		
        $query = $this->db->query("
        SELECT nik as nik, nama as nama, alamat ,tempat_lahir ,jk ,rt,rw,tgl_lahir,reg_provinces.id as provinsi,reg_regencies.id as kota,reg_districts.id as kecamatan,reg_villages.id as kelurahan,hpwa,as_koor
        FROM relawan_temp
        LEFT JOIN reg_provinces ON reg_provinces.name = relawan_temp.provinsi
        LEFT JOIN reg_regencies ON reg_regencies.name = relawan_temp.kota
        LEFT JOIN reg_districts ON reg_districts.name = relawan_temp.kecamatan
        LEFT JOIN reg_villages ON reg_villages.name = relawan_temp.kelurahan
        WHERE nik = '$where'
        ");
        return $query;
        // return $this->db->get_where($table,$where);
    }
    function edit_data_temp_fix($where,$table){		
        $query = $this->db->query("
        SELECT nik as nik, nama as nama, alamat ,tempat_lahir ,jk ,rt,rw,tgl_lahir,reg_provinces.id as provinsi,reg_regencies.id as kota,reg_districts.id as kecamatan,reg_villages.id as kelurahan,hpwa,as_koor
        FROM relawan_temp
        LEFT JOIN reg_provinces ON reg_provinces.id = relawan_temp.provinsi
        LEFT JOIN reg_regencies ON reg_regencies.id = relawan_temp.kota
        LEFT JOIN reg_districts ON reg_districts.id = relawan_temp.kecamatan
        LEFT JOIN reg_villages ON reg_villages.id = relawan_temp.kelurahan
        WHERE nik = '$where'
        ");
        return $query;
        // return $this->db->get_where($table,$where);
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
      $query = $this->db->query("SELECT reg_regencies.name AS kota, COUNT(relawan.kota) AS Total_Pemilih FROM reg_regencies
          JOIN relawan ON relawan.kota=reg_regencies.id
          GROUP BY reg_regencies.name;");
      return $query;
  }

  
  public function DepokChartData(){
    $query = $this->db->query("
        SELECT reg_districts.name as kecamatan, COUNT(relawan.kecamatan) as  Total_Pemilih
        from relawan
        join reg_districts on reg_districts.id=relawan.kecamatan
        join reg_regencies on reg_regencies.id=relawan.kota
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
        join reg_regencies on reg_regencies.id=relawan.kota
        join reg_villages ON reg_villages.id=relawan.kelurahan
        WHERE reg_regencies.id=3275
        GROUP BY reg_districts.name desc;");
    return $query;
}

function list_bekasi_kec(){
    $query = $this->db->query("
        SELECT name as kecamatan, COUNT(data_kpu.nik) as total_pemilih, COUNT(relawan.nik) as total_relawan
        FROM reg_districts
        LEFT JOIN relawan ON relawan.kecamatan = reg_districts.id
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE reg_districts.regency_id = 3275
        GROUP BY 1
    ");
    return $query;
}

function list_bekasi_kel(){
    $query = $this->db->query("
        SELECT reg_villages.name as kelurahan, COUNT(data_kpu.nik) as total_pemilih, COUNT(relawan.nik) as total_relawan
        FROM reg_villages
        JOIN reg_districts ON reg_villages.district_id = reg_districts.id
        LEFT JOIN relawan ON relawan.kecamatan = reg_districts.id
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE reg_districts.regency_id = 3275
        GROUP BY 1
    ");
    return $query;
}

function list_depok_kec(){
    $query = $this->db->query("
        SELECT name as kecamatan, COUNT(data_kpu.nik) as total_pemilih, COUNT(relawan.nik) as total_relawan
        FROM reg_districts
        LEFT JOIN relawan ON relawan.kecamatan = reg_districts.id
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE reg_districts.regency_id = 3276
        GROUP BY 1
    ");
    return $query;
}

function list_depok_kel(){
    $query = $this->db->query("
        SELECT reg_villages.name as kelurahan, COUNT(data_kpu.nik) as total_pemilih, COUNT(relawan.nik) as total_relawan
        FROM reg_villages
        JOIN reg_districts ON reg_villages.district_id = reg_districts.id
        LEFT JOIN relawan ON relawan.kecamatan = reg_districts.id
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE reg_districts.regency_id = 3276
        GROUP BY 1
    ");
    return $query;
}

 public function update_account($id,$password,$role){
     $query=$this->db->query("UPDATE admin SET password='$password', role = '$role' WHERE id = '$id'");
     return $query;
   }

}
