<?php
namespace Leopard\Views;

use Symfony\Component\Translation\Translator;

class TranslateExtension extends \Twig_Extension
{

    protected $translator;

    public function __construct(Translator $translator){

        $this->translator = $translator;

    }

    public function getFunctions()
    {
        return [
            new \Twig_SimpleFunction('trans', [$this, 'trans'])
        ];
    }

    public function trans($key, $parameters = []){

        return $this->translator->trans($key, $parameters);

        //return 'works';
    }

}
