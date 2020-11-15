<?php
declare(strict_types=1);

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;

class AprioryCalculator extends Command
{
    protected function configure()
    {
        $this->addArgument('file', InputArgument::REQUIRED, 'file name fo processing');
    }
}