<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Driver\Connection;


class CoursController extends AbstractController
{
    /**
     * @Route("/cours", name="cours")
     */
    public function index(Connection $connection): Response
    {
        $cours = $connection->fetchAll('SELECT * FROM contenu');

        return $this->render('cours/index.html.twig', [
            'controller_name' => 'CoursController',
            'cours' => $cours,
        ]);
    }
}
