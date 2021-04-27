<?php

namespace App\Repository;

use App\Entity\AvisGeneral;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method AvisGeneral|null find($id, $lockMode = null, $lockVersion = null)
 * @method AvisGeneral|null findOneBy(array $criteria, array $orderBy = null)
 * @method AvisGeneral[]    findAll()
 * @method AvisGeneral[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AvisGeneralRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, AvisGeneral::class);
    }

    // /**
    //  * @return AvisGeneral[] Returns an array of AvisGeneral objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?AvisGeneral
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
