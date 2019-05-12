<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Kereta extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->model('M_Kereta');
		$data['kereta'] = $this->M_Kereta->getAll('lokomotif')->result();
		$data['gerbong'] = $this->M_Kereta->getAll('gerbong')->result();
		$data['kursi'] = $this->M_Kereta->getAll('kursi')->result();
		$this->load->view('index',$data);
	}

	public function leftjoin()
	{
		$this->load->model('M_Kereta');
		$data['kereta'] = $this->M_Kereta->leftJoin()->result();
		$this->load->view('leftjoin',$data);
	}

	public function rightjoin()
	{
		$this->load->model('M_Kereta');
		$data['kereta'] = $this->M_Kereta->rightJoin()->result();
		$this->load->view('rightjoin',$data);
	}

	public function innerjoin()
	{
		$this->load->model('M_Kereta');
		$data['kereta'] = $this->M_Kereta->innerJoin()->result();
		$this->load->view('innerjoin',$data);
	}
}
