<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AuditifController extends AbstractController
{
    /**
     * @Route("/auditif", name="auditif")
     */
    public function index(): Response
    {
        return $this->render('auditif/index.html.twig', [
            'controller_name' => 'AuditifController',
        ]);
    }
}
