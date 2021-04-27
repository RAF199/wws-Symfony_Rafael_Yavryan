<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\PochetteRepository")
 */
class Pochette
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
    private $titre;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="float")
     */
    private $prix;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Caracteristique", inversedBy="pochettes")
     */
    private $couleur;

    public function __construct()
    {
        $this->couleur = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->prix;
    }

    public function setPrix(float $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * @return Collection|Caracteristique[]
     */
    public function getCouleur(): Collection
    {
        return $this->couleur;
    }

    public function addCouleur(Caracteristique $couleur): self
    {
        if (!$this->couleur->contains($couleur)) {
            $this->couleur[] = $couleur;
        }

        return $this;
    }

    public function removeCouleur(Caracteristique $couleur): self
    {
        if ($this->couleur->contains($couleur)) {
            $this->couleur->removeElement($couleur);
        }

        return $this;
    }

    public function __toString()
    {
       return  $this->getTitre();
    }


}
