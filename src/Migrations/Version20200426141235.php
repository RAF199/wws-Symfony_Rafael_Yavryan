<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200426141235 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE pochette_caracteristique (pochette_id INT NOT NULL, caracteristique_id INT NOT NULL, INDEX IDX_D87164C133ECB04 (pochette_id), INDEX IDX_D87164C11704EEB7 (caracteristique_id), PRIMARY KEY(pochette_id, caracteristique_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE caracteristique (id INT AUTO_INCREMENT NOT NULL, couleur VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE pochette_caracteristique ADD CONSTRAINT FK_D87164C133ECB04 FOREIGN KEY (pochette_id) REFERENCES pochette (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE pochette_caracteristique ADD CONSTRAINT FK_D87164C11704EEB7 FOREIGN KEY (caracteristique_id) REFERENCES caracteristique (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE pochette_caracteristique DROP FOREIGN KEY FK_D87164C11704EEB7');
        $this->addSql('DROP TABLE pochette_caracteristique');
        $this->addSql('DROP TABLE caracteristique');
    }
}
