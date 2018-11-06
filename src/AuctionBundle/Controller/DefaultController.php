<?php

namespace AuctionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        $response = new Response(json_encode(["denba","dniba"]));
        $response->headers->set("Content-Type", "application/json");
        $response->headers->set("Access-Control-Allow-Origin", "*");
        return $response;
    }
}
