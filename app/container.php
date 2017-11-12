<?php

use Slim\Flash\Messages;
use Slim\Views\Twig;
use Slim\Views\TwigExtension;
use Interop\Container\ContainerInterface;
use Slim\Interfaces\RouterInterface;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Controllers\Admin\MainController;
use function DI\get;
use Noodlehaus\Config;
use Symfony\Component\Translation\Translator;
use Symfony\Component\Translation\Loader\ArrayLoader;
use Symfony\Component\Finder\Finder;


return [
	
	//'router' => get(Slim\Router::class),
 	'router' =>  DI\object(Slim\Router::class),

 	'config' =>  function (ContainerInterface $c){

 		return new Config(__DIR__. '/../config');

 	},

	Twig::class => function (ContainerInterface $c){

		$twig = new Twig(__DIR__ . '/../resources/views', [
			'debug' => true,
			'cache' => false
		]);

		$twig->addExtension(new TwigExtension(

			$c->get('router'),
			$c->get('request')->getUri()
		));

		 $twig->addExtension(new Twig_Extension_Debug());
		 $twig->addExtension(new Leopard\Views\TranslateExtension($c->get(Translator::class)));

		 $twig->getEnvironment()->addGlobal('flash', $c->get(Messages::class));

		return $twig;
	},

	Messages::class => function(ContainerInterface $c){
		return new Messages();
	},

	Translator::class => function(ContainerInterface $c){

		$config = $c->get('config');

		$translator = new Translator($config->get('config.locale'));
		$translator->setFallbackLocales([$config->get('config.default_locale')]);
		$translator->addLoader('array', new ArrayLoader);

		$finder = new Finder;

		$langDirs = $finder->directories()->ignoreUnreadableDirs()->in(__DIR__ . '/../resources/lang');

		foreach ($langDirs as $dir) {
			$translator->addResource(
				'array',
				(new Config($dir))->all(),
				$dir->getRelativePathName()
			);
		}

		return $translator;

	},

	HandlerInterface::class => function(ContainerInterface $c){
		return new MainController;
	}



];