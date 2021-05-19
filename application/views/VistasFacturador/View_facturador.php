<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>Imagenes/FondoNegro.ico" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/Style/StylesFacturador/Styles.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&display=swap" rel="stylesheet">
	<title>Facturacion</title>
</head>
<style>

</style>

<body>

<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<div class="container-fluid">
						<a class="navbar-brand" href="<?php echo base_url() ?>index.php/Administrador"><img src="<?php echo base_url() ?>Imagenes/FondoBlanco.png" alt="Logo Cielo Abierto" width="40" height="34"></a>
						<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item">
									<a class="nav-link " aria-current="page" href="<?php echo base_url() ?>index.php/facturacion/MostrarVistaFacturador">Facturar</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="<?php echo base_url() ?>index.php/facturacion/pendientes">Pendientes</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="<?php echo base_url() ?>index.php/facturacion/historial" tabindex="-1" aria-disabled="true">Historial</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="<?php echo base_url() ?>index.php/facturacion/Salir" tabindex="-1" aria-disabled="true">Salir</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<br>


<!-- 

    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="toast correcto" style="position: absolute; top: 0; right: 0;" data-delay="20000">
                    <div class="toast-header">
                        <img src="<?php echo base_url() ?>index.php/../imagenes/logo.png" width="12%" height="15%" class="rounded mr-2" alt="...">
                        <strong class="mr-auto">Craft Burger</strong>

                        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                        Pedido facturado correctamente!
                    </div>
                </div>
            <div class="toast incorrecto" style="position: absolute; top: 0; right: 0;" data-delay="20000">
                    <div class="toast-header">
                        <img src="<?php echo base_url() ?>index.php/../imagenes/logo.png" width="12%" height="15%" class="rounded mr-2" alt="...">
                        <strong class="mr-auto">Craft Burger</strong>

                        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                        Pedido facturado incorrectamente!
                    </div>
            </div>



 
            </div>
        </div><br>
    </div> -->

    <div class="container-fluid">
        <div class="row pedidos">
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">


                <h4>Pedidos Actuales</h4><br>
                <table class="table  table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Pedido</th>
                            <th scope="col">Mesero</th>
                            <th scope="col">Mesa</th>
                            <th scope="col">Zona</th>
                            <th scope="col">Hoy</th>
                            <th scope="col">Detalle</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php

                        if (empty($pedidos)) {
                            echo "No se ha  registrado pedidos hoy";
                        } else {


                            foreach ($pedidos->result() as $col) {
                        ?>
                                <form action="<?php echo base_url() ?>index.php/facturacion/MostrarDetalle" method="POST" data-ajax="false">
                                    <tr>
                                        <input type="text" name="num_pedido" value="<?php echo ($col->num_pedido); ?>" style="display:none">
                                        <td>
                                            <p><?php echo ($col->num_pedido); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($col->mesero); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($col->mesa); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($col->zona); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($col->fecha); ?></p>
                                        </td>
                                        <td>
                                            <button type="submit" class="btn btn-primary">
                                                Detalle
                                            </button>
                                        </td>
                                    </tr>
                                </form>
                        <?php    }
                        } ?>

                    </tbody>
                </table>
            </div>

            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                <h4>Detalle Pedido</h4><br>
                <table class="table table-bordered  table-hover tablaDetalle">
                    <thead>
                        <tr>
                            <th scope="col">Pedido</th>
                            <th scope="col">Producto</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                <form action="<?php echo base_url() ?>index.php/facturacion/facturar" method="POST" data-ajax="false">
                            <?php
                            $num_factura = 0;
                            if (empty($detallePedidos)) {
                                echo "Selecciona un pedido para mostrar su detalle";
                                $total = 0;
                            } else {
                                $total = 0;
                                foreach ($detallePedidos->result() as $row) {
                                    $total = $total +  ($row->total)
                            ?>
                                    <tr>
                                        <td>
                                            <p><?php echo ($row->num_pedido); ?></p>
                                        </td>

                                        <td>
                                            <p><?php echo ($row->producto); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($row->tipo); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($row->cantidad); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($row->precio); ?></p>
                                        </td>
                                        <td>
                                            <p><?php echo ($row->total); ?></p>
                                        </td>
                                    </tr>
                                    <input type="text" name="num_pedido" value="<?php echo ($row->num_pedido); ?>" style="display:none;">
                    </tbody>
            <?php }
                            } ?>
                </table>
                <div class="operaciones">

                    <div class="form-row">
                        <div class="col">
                            <h4>Efectivo:</h4>
                            <input type="TEXT" id="efectivo" class="form-control" required>
                            <h5 style="margin:12px">Cambio:</h5>
                            <h6 id="cambio" style="margin: 10px;">$</H6>
                            <button type="submit" onclick="alerta()" class="btn btn-block btn-success">Facturar</button>
                        </div>
                        <div class="col">
                            <H4>Total:</H4>
                            <input type="text" id="total" value="<?php echo $total ?>" class="form-control" readonly="readonly" require>
                            <h5 style="margin:12px">Elimina tu pedido</h5><br>
                            <button type="submit" onclick="alerta()" class="btn btn-block btn-danger">Borrar</button>
                        </div>
                    </div>
            </form>
                </div><br>

            </div>
        </div>
    </div>





    <script>

        if (window.history.replaceState) { // verificamos disponibilidad
            window.history.replaceState(null, null, window.location.href);
        }

        function alerta() {
            const efectivo2 = document.getElementById("efectivo").value;
            if (efectivo2.length == 0) {
                // const alerta = document.querySelector('#alerta')
                //alerta.addEventListener('click', () => {
                $('.incorrecto').toast('show');
                $('.correcto').toast('hide');
                // })
            } else {
                // const alerta = document.querySelector('#alerta')
                // alerta.addEventListener('click', () => {
                $('.correcto').toast('show');
                $('.incorrecto').toast('hide')
                // })
            }
        }




        const CampoEfectivo = document.getElementById('efectivo');
        CampoEfectivo.addEventListener('keyup', calculos)
        //CampoEfectivo.addEventListener('keydown', calculos)

        const total = document.getElementById("total").value;
        const efectivo = document.getElementById("efectivo").value;



        function calculos(event) {
            var key = event.keyCode || event.which;
            console.log(event.keyCode);
            const efectivo = document.getElementById("efectivo").value;

            const cambio = (efectivo - total);

            if (cambio > 0) {
                document.getElementById('cambio').innerHTML = "$" + (cambio);
            } else {
                if (cambio < 0) {
                    document.getElementById('cambio').innerHTML = "Digite un valor mayor al total";
                } else {
                    document.getElementById('cambio').innerHTML = "Completo";
                }
            }


        }
        // document.getElementById('efectivo').onkeypress = alert("asdas");
    </script>
 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>