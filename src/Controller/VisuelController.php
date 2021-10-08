<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Driver\Connection;

class VisuelController extends AbstractController
{
    /**
     * @Route("/visuel", name="visuel")
     */
    public function index(Connection $connection): Response
    {

      $i = $_GET["num"];
      $imgUrl = $connection->fetchAll("SELECT visuel FROM methode WHERE id_methode = ". $i);

        return $this->render('visuel/index.html.twig', [
            'controller_name' => 'VisuelController',
            'img' => $imgUrl,
        ]);
    }
}
