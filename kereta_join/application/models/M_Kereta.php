<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Kereta extends CI_Model{

	function getAll($table){
		return $this->db->get($table);
	}

	function leftJoin(){
		$this->db->select('*,lokomotif.kd_kereta as kd_kereta_loko');
		$this->db->from('lokomotif');
        $this->db->join('kursi', 'kursi.kd_kereta = lokomotif.kd_kereta','LEFT');
		return $this->db->get();
	}

	function rightJoin(){
		$this->db->select('*');
		$this->db->from('kursi');
        $this->db->join('gerbong', 'kursi.kd_gerbong = gerbong.kd_gerbong','right');
		return $this->db->get();
	}

	function innerJoin(){
		$this->db->select('*, lokomotif.nama as nama_kereta, gerbong.nama as nama_gerbong');
		$this->db->from('lokomotif');
        $this->db->join('gerbong', 'lokomotif.kd_kereta= gerbong.kd_kereta','inner');
        $this->db->join('kursi', 'lokomotif.kd_kereta = kursi.kd_kereta and kursi.kd_gerbong = gerbong.kd_gerbong','inner');
		return $this->db->get();
	}

	function input_data($data, $table){
		$this->db->insert($table, $data);
	}
	
	
}
