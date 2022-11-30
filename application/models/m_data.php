<?php 
 
class M_data extends CI_Model{
	function all_relawan(){
		return $this->db->get('relawan');
	}

    function total_all_relawan(){
        $query = $this->db->query('SELECT nik FROM relawan
        UNION ALL
        SELECT nik FROM relawan_temp');
        return $query->num_rows();
	}

	function c_kotbek(){
		// $this->db->where('kota','KOTA BEKASI');
		// return $this->db->count_all_results('regional');
        $query = $this->db->query('SELECT nik FROM relawan
        WHERE kota = "KOTA BEKASI"
        UNION ALL
        SELECT nik FROM relawan_temp
        WHERE kota = "KOTA BEKASI"');
        return $query->num_rows();
	}
	function c_kotdep(){
		// $this->db->where('kota','KOTA DEPOK');
		// return $this->db->count_all_results('regional');
        $query = $this->db->query('SELECT nik FROM relawan
        WHERE kota = "KOTA DEPOK"
        UNION ALL
        SELECT nik FROM relawan_temp
        WHERE kota = "KOTA DEPOK"');
        return $query->num_rows();
	}
	function list_relawan(){
        $query = $this->db->query("
        SELECT relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,kota,kecamatan,kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        UNION
        SELECT relawan_temp.nik as nik, relawan_temp.nama as nama, alamat ,tempat_lahir ,jk ,tgl_lahir,kota,kecamatan,kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan_temp
        LEFT JOIN data_kpu ON data_kpu.nik = relawan_temp.nik
        ");
        return $query;
	}
	function list_relawan_by_penginput($user){
        $query = $this->db->query("
        SELECT relawan.nik as nik,relawan.nama as nama,relawan.alamat as alamat,relawan.tempat_lahir as tempat_lahir,relawan.jk as jk,relawan.tgl_lahir as tgl_lahir,kota,kecamatan,kelurahan,hpwa,as_koor,penginput,data_kpu.lokasi as lokasi
        FROM relawan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE penginput = '$user'");
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
        // $this->db->delete(array($table,$table2));
    }
    // function edit_data($where,$table){		
    function edit_data($nik){		
        $query = $this->db->query("
        SELECT nik, nama, tempat_lahir, jk, tgl_lahir, alamat, rt, rw, kota, kecamatan, kelurahan, hpwa, as_koor, source, created_at, updated_at, penginput FROM relawan WHERE nik ='$nik'
        UNION ALL
        SELECT nik, nama, tempat_lahir, jk, tgl_lahir, alamat, rt, rw, kota, kecamatan, kelurahan, hpwa, as_koor, source, created_at, updated_at, penginput FROM relawan_temp WHERE nik ='$nik'");
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
    function kota(){
        $query = $this->db->query("SELECT kota FROM regional GROUP BY kota");
        return $query;
        // $this->db->where('province_id','32');
        // return $this->db->get('reg_regencies');
    }
    function kec($data){
        $query = $this->db->query("SELECT kecamatan FROM regional WHERE replace(kota,' ', '') = '$data' GROUP BY kecamatan");
        return $query;
        // $this->db->where('regency_id',$data);
        // return $this->db->get('reg_districts');
    }
    function kel($data){
        $query = $this->db->query("SELECT kelurahan FROM regional WHERE replace(kecamatan,' ', '') = '$data' GROUP BY kelurahan");
        return $query;
        // $this->db->where('district_id',$data);
        // return $this->db->get('reg_villages');
    }

    function getData(){
        return $this->db->get('relawan')->result_array();
    }

    public function getChartData(){
      $query = $this->db->query("SELECT regional.kota AS kota, COUNT(relawan.kota) AS Total_Pemilih FROM regional
          JOIN relawan ON relawan.kota=regional.kota
          GROUP BY regional.kota;");
      return $query;
  }

  
  public function DepokChartData(){
    $query = $this->db->query("
        SELECT regional.kecamatan as kecamatan, COUNT(relawan.kecamatan) as  Total_Pemilih
        from relawan
        join regional on regional.kecamatan = relawan.kecamatan
        WHERE regional.kota = 'KOTA DEPOK'
        GROUP BY regional.kecamatan desc;");
    return $query;
}

 public function BekasiChartData(){
    $query = $this->db->query("
        SELECT regional.kecamatan as kecamatan, COUNT(relawan.kecamatan) as  Total_Pemilih
        from relawan
        join regional on regional.kecamatan = relawan.kecamatan
        WHERE regional.kota = 'KOTA BEKASI'
        GROUP BY regional.kecamatan desc;");
    return $query;
}

function list_bekasi_kec(){
    $query = $this->db->query("
        SELECT regional.kecamatan, COUNT(DISTINCT data_kpu.nik) as total_pemilih, COUNT(DISTINCT relawan.nik) as total_relawan
        FROM regional
        LEFT JOIN (
            SELECT nik, kota, kecamatan, kelurahan FROM relawan
        	UNION ALL 
        	SELECT nik, kota, kecamatan, kelurahan FROM relawan_temp
        ) relawan 
            ON relawan.kecamatan = regional.kecamatan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE regional.kota = 'KOTA BEKASI'
        GROUP BY 1
    ");
    return $query;
}

function list_bekasi_kel(){
    $query = $this->db->query("
        SELECT regional.kelurahan, COUNT(DISTINCT data_kpu.nik) as total_pemilih, COUNT(DISTINCT relawan.nik) as total_relawan
        FROM regional
        LEFT JOIN (
            SELECT nik, kota, kecamatan, kelurahan FROM relawan
        	UNION ALL 
        	SELECT nik, kota, kecamatan, kelurahan FROM relawan_temp
        ) relawan 
            ON relawan.kelurahan = regional.kelurahan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE regional.kota = 'KOTA BEKASI'
        GROUP BY 1
    ");
    return $query;
}

function list_depok_kec(){
    $query = $this->db->query("
        SELECT regional.kecamatan, COUNT(DISTINCT data_kpu.nik) as total_pemilih, COUNT(DISTINCT relawan.nik) as total_relawan
        FROM regional
        LEFT JOIN (
            SELECT nik, kota, kecamatan, kelurahan FROM relawan
        	UNION ALL 
        	SELECT nik, kota, kecamatan, kelurahan FROM relawan_temp
        ) relawan 
            ON relawan.kecamatan = regional.kecamatan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE regional.kota = 'KOTA DEPOK'
        GROUP BY 1
    ");
    return $query;
}

function list_depok_kel(){
    $query = $this->db->query("
        SELECT regional.kelurahan, COUNT(DISTINCT data_kpu.nik) as total_pemilih, COUNT(DISTINCT relawan.nik) as total_relawan
        FROM regional
        LEFT JOIN (
            SELECT nik, kota, kecamatan, kelurahan FROM relawan
        	UNION ALL 
        	SELECT nik, kota, kecamatan, kelurahan FROM relawan_temp
        ) relawan 
            ON relawan.kelurahan = regional.kelurahan
        LEFT JOIN data_kpu ON data_kpu.nik = relawan.nik
        WHERE regional.kota = 'KOTA DEPOK'
        GROUP BY 1
    ");
    return $query;
}

 public function update_account($id,$password,$role){
     $query=$this->db->query("UPDATE admin SET password='$password', role = '$role' WHERE id = '$id'");
     return $query;
   }

}
