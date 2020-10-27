<?php
// Controlleur qui gérer l'affichage de tous les livres
class Pages extends Controller
{
    public function __construct()
    {
        $this->userModel = $this->model('Book');
    }

    public function index()
    {
        $user = $this->userModel->getBooks();
        $data = [
            'title' => 'Home page',
            'users' => $user
        ];

        $this->view('index', $data);
    }
}
