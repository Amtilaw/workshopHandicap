<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Driver\Connection;
use Symfony\Component\HttpFoundation\RedirectResponse;

class CourController extends AbstractController
{
    /**
     * @Route("/cour", name="cour")
     */
    public function index(Connection $connection): Response
    {
      $i = $_GET["num"];
      $cour = $connection->fetchAll("SELECT * FROM contenu WHERE id_contenu = ". $i);
      

        return $this->render('cour/index.html.twig', [
            'controller_name' => 'CourController',
            'cour' => $cour,
        ]);
    }
}
