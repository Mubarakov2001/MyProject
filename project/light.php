<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Световые явления</title>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="shortcut icon" href="/images/icon.svg" type="image/svg">
</head>
<body>
<header class='header-container'>
    <nav class='header-nav'>
        <a href='/' class='header-nav-element'>Главная страница</a>
        <a href='/thermal' class='header-nav-element'>Тепловые явления</a>
        <a href='electric' class='header-nav-element'>Электрические явления</a>
        <a href='electromagnetic' class='header-nav-element'>Электромагнитные явления</a>
        <a href='light' class='header-nav-element' style="color: rgb(87, 87, 177);">Световые явления</a>
        <a href='how' class='header-nav-element'>Как же так?</a>
    </nav>
</header>
<main>
    <h1 class='main-title'>Световые явления</h1>
    <?php
    $con = mysqli_connect("localhost", "root", "", "DB");
    mysqli_set_charset($con, "utf8");

    if ($con == false) {
        echo ("Ошибка подключения: " . mysqli_connect_error());
    }
    else {
        $sql = "SELECT id, name, video, uses FROM data WHERE type='light'";
        $result = mysqli_query($con, $sql);
        $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);

        foreach ($rows as $row) {
            $uses = explode( ';', $row['uses']);
            $exitUses = '';
            foreach ($uses as $use) {
                $exitUses .= "<li>{$use};</li><br>";
            }
            echo (
            "<div class='experiment'>
                        <hr>
                        <h1>Эксперимент №{$row['id']}.  {$row['name']}</h1>
                        <iframe width='560' height='315' src='{$row['video']}' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>
                        <ul class='experiment-list'>
                            <h4>Нам понадобятся:</h4><br>
                            {$exitUses}
                        </ul>
                    </div>"
            );
        }
    }
    ?>
</main>
</body>
</html>