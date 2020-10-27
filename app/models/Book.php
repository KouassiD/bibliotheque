<?php

class Book
{
  //Propriety
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  // Récupère tous les livres
  public function getBooks()
  {
    $this->db->query("SELECT * FROM lb_book");

    $result = $this->db->resultSet();

    return $result;
  }

  // Récupère un livre
  public function getBook()
  {
  }

  // Ajoute un nouveau livre
  public function addBook()
  {
  }

  // Met à jour le statut d'un livre emprunté
  public function updateBookStatus()
  {
  }
}
