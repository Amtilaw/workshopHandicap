<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Driver\Connection;

class KineController extends AbstractController
{
    /**
     * @Route("/kine", name="kine")
     */
    public function index(Connection $connection): Response
    {
        $i = $_GET["num"];    
        $kine = $connection->fetchAll("SELECT * FROM kinesthesique WHERE id_methode = ". $i);
        if (isset($kine)){
          $kine[0]["img"] = "";
          $kine[0]["text"]= "";
        }

        return $this->render('kine/index.html.twig', [
            'controller_name' => 'KineController',
            'kine' => $kine,

        ]);
    }
}
