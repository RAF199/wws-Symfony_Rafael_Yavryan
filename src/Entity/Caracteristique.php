<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CaracteristiqueRepository")
 */
class Caracteristique
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $couleur;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Pochette", mappedBy="couleur")
     */
    private $pochettes;

    public function __construct()
    {
        $this->pochettes = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCouleur(): ?string
    {
        return $this->couleur;
    }

    public function setCouleur(string $couleur): self
    {
        $this->couleur = $couleur;

        return $this;
    }

    /**
     * @return Collection|Pochette[]
     */
    public function getPochettes(): Collection
    {
        return $this->pochettes;
    }

    public function addPochette(Pochette $pochette): self
    {
        if (!$this->pochettes->contains($pochette)) {
            $this->pochettes[] = $pochette;
            $pochette->addCouleur($this);
        }

        return $this;
    }

    public function removePochette(Pochette $pochette): self
    {
        if ($this->pochettes->contains($pochette)) {
            $this->pochettes->removeElement($pochette);
            $pochette->removeCouleur($this);
        }

        return $this;
    }
    public function __toString()
    {
        return  $this->getCouleur() ;
    }


}
