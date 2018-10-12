<?php

include_once 'db.php';

class Peliculas extends DB{
    private $paginaActual;
    private $totalPaginas;
    private $nResultados;
    private $resultadosPorPagina;
    private $indice;
    private $error = false;
    function __construct($nPorPagina)
    {
        parent::__construct();
        $this->resultadosPorPagina = $nPorPagina;
        $this->indice = 0;
        $this->paginaActual = 1;
        $this->calcularPaginas();
    }
    function calcularPaginas()
    {
        $query = $this->connect()->query('SELECT COUNT(*) AS total FROM pelicula');
        $this->nResultados = $query->fetch(PDO::FETCH_OBJ)->total;
        $this->totalPaginas = round($this->nResultados / $this->resultadosPorPagina);
        if (isset($_GET['pagina'])) {
            //validar que sea un numero 
            if (is_numeric($_GET['pagina'])) {
            //validar que sea mayor o igual a 1
            //validar que sea menor o igual a total
                if ($_GET['pagina']>= 1 && $_GET['pagina'] <= $this->totalPaginas) {
                    $this->paginaActual = $_GET['pagina'];
                    $this->indice = ($this->paginaActual - 1) * ($this->resultadosPorPagina);
                }else {
                    echo "No existe";
                    $this->error = true;
                }
            }else {
                echo "Debe ser un numero";
                $this->error = true;
            }
        }
    }

    function mostrarPeliculas()
    {
        if (!$this->error) {
            $query = $this->connect()->prepare("SELECT * FROM pelicula LIMIT :pos, :n");
            $query->execute(['pos'=>$this->indice, 'n'=>$this->resultadosPorPagina]);
            foreach ($query as $key => $value) {
                include 'vista-pelicula.php';
            }
        }else {
            //mostrar errores
        }
    }

    function mostrarPaginas()
    {
        $actual = '';
        echo '<ul>';
        for ($i=1; $i <= $this->totalPaginas; $i++) { 
            if (($i) == $this->paginaActual) {
                $actual = 'class="actual"';
            }else {
                $actual = '';
            }
            echo '<li><a '.$actual.' href=?pagina='.$i.'> '.$i.'</a></li>';
        }
        echo '</ul>';
    }
}

?>