<?

require_once __DIR__.'/../vendor/autoload.php';

$app = new \Silex\Application();

$app->get('/hello/{name}', function($name) use($app) {
    return $app->json(['status' => 'ok']);
});

$app->run();