<?php

namespace App\Controller;

use Doctrine\DBAL\Driver\Connection;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AuditifController extends AbstractController
{
    /**
     * @Route("/auditif", name="auditif")
     */
    public function index(Connection $connection): Response
    {

      $i = $_GET["num"];
        $auditif = $connection->fetchAll("SELECT auditif FROM methode WHERE id_methode = ". $i);
        return $this->render('auditif/index.html.twig', [
            'controller_name' => 'AuditifController',
            'auditif' => $auditif,
        ]);
    }
}
