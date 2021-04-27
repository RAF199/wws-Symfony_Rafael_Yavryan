<?php

namespace App\Controller;

use App\Entity\AvisGeneral;
use App\Entity\Caracteristique;
use App\Entity\Pochette;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PochetteController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index()
    {
        $em = $this->getDoctrine()->getManager();
        $pochette = $em->getRepository(Pochette::class)->findAll();
        return $this->render('pochette/index.html.twig', ['pochette' => $pochette]);

    }

    /**
     * @Route("/couleur", name="couleur")
     */
    public function couleur()
    {
        $em = $this->getDoctrine()->getManager();
        $couleur = $em->getRepository(Caracteristique::class)->findAll();
        $em = $this->getDoctrine()->getManager();
        $pochette = $em->getRepository(Pochette::class)->findAll();
        return $this->render('pochette/couleur.html.twig', ['carac' => $couleur,
        'pochette'=>$pochette]);

    }

    /**
     * @Route("/avis", name="avis")
     */
    public function returnAvis()
    {
        $em = $this->getDoctrine()->getManager();
        $avis = $em->getRepository(AvisGeneral::class)->findAll();
        return $this->render('pochette/avis.html.twig', ['avis' => $avis]);

    }


}
