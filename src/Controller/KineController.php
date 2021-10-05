<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class KineController extends AbstractController
{
    /**
     * @Route("/kine", name="kine")
     */
    public function index(): Response
    {
        return $this->render('kine/index.html.twig', [
            'controller_name' => 'KineController',
        ]);
    }
}
