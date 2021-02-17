<%@page import="Vista.inventario14"%>
<%@page import="Vista.inventario13"%>
<%@page import="Vista.inventario12"%>
<%@page import="Vista.inventario11"%>
<%@page import="Vista.inventario10"%>
<%@page import="Vista.inventario9"%>
<%@page import="Vista.inventario8"%>
<%@page import="Vista.inventario7"%>
<%@page import="Vista.inventario6"%>
<%@page import="Vista.inventario5"%>
<%@page import="Vista.inventario4"%>
<%@page import="Vista.inventario3"%>
<%@page import="Vista.inventario2"%>
<%
    
    HttpSession dat=request.getSession();
    String user=(String)dat.getAttribute("codigo");
    
%>
<%@page import="Modelo.GestionInventario"%>
<%@page import="Vista.inventario1"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inventario</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/fontello.css">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos3.css">
</head>
<body>
    <header>
        <div class="contenedor">
            <h1><i class="icon ion-md-walk">Inventario</i></h1>
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                <a href="Desicion.jsp">Regresar</a>
            </nav>
        </div>
    </header>
    
    <main>
        <section id="banner">
            <img src="img/banner.png">
            <div class="contenedor">
            <h2></h2>
            <p></p>
            </div>
        </section>
        <section id="Bienvenidos empleados">
            <h2><center>Bienvenidos empleados a su lugar de trabajo virtual</center></h2>
            <p><center>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem ea eum alias reiciendis, tempore fugiat, distintio nihil corrupti hic nostrum!</center></p>
        </section>
        <h2><center>Distribuidor</center></h2>
        <div class="row" >
        <div class="col-4"></div>
        <div class="col-5 frm" >
            <form action="ServletDistribuidor" method="POST">
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id distribuidor</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" name="iddi">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="nam">
                  </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">N° Telefono</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="tel">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Dirección</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="dir">
                </div>
                
                
                <button type="submit" class="btn btn-primary" name="bntregistrar">Ingresar</button>
                <button type="submit" class="btn btn-primary" name="bntactualizar">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario1>dt=new ArrayList<>();
                GestionInventario ge=new GestionInventario();
                dt=ge.consultardistri();
                inventario1 i1=new inventario1();
                for(int i=0;i<dt.size();i++){
                    i1=dt.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i1.getIddistribuidor()%></td>
                    <td><%=i1.getNombre()%></td>
                    <td><%=i1.getContacto()%></td>
                    <td><%=i1.getDireccion()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Pedido</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id Pedido</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id distribuidor</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Fecha</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Dirección</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario2>dt1=new ArrayList<>();
                GestionInventario ge1=new GestionInventario();
                dt1=ge1.consultarpedi();
                inventario2 i2=new inventario2();
                for(int i=0;i<dt1.size();i++){
                    i2=dt1.get(i);
            %>
            <tbody>
                <tr>
                <td><%=i2.getIdpedido()%></td>
                    <td><%=i2.getIddistribuidor()%></td>
                    <td><%=i2.getFecha()%></td>
                    <td><%=i2.getTotal()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Detalles pedido</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Auxiliar</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id distribuidor</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id pedido</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Producto</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Subtotal</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario3>dt2=new ArrayList<>();
                GestionInventario ge2=new GestionInventario();
                dt2=ge2.consultardet();
                inventario3 i3=new inventario3();
                for(int i=0;i<dt2.size();i++){
                    i3=dt2.get(i);
            %>
            <tbody>
                <tr>
                <td><%=i3.getAux()%></td>
                    <td><%=i3.getNumero()%></td>
                    <td><%=i3.getIdpedido()%></td>
                    <td><%=i3.getProducto()%></td>
                    <td><%=i3.getCantidad()%></td>
                    <td><%=i3.getSubtotal()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Materiales</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta">Materiales</legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Referencia</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tipo</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Seleccionar</option>
                        <option value="1">Sintetico</option>
                        <option value="2">Cordon</option>
                        <option value="3">Plantilla</option>
                        <option value="3">Cremallera</option>
                        <option value="3">Cuero</option>
                        <option value="3">Tela</option>
                      </select>
                </div>
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario4>dt3=new ArrayList<>();
                GestionInventario ge3=new GestionInventario();
                dt3=ge3.consultarmat();
                inventario4 i4=new inventario4();
                for(int i=0;i<dt3.size();i++){
                    i4=dt3.get(i);
            %>
            <tbody>
                <tr>
                <td><%=i4.getReferencia()%></td>
                    <td><%=i4.getNombrem()%></td>
                    <td><%=i4.getCantidadm()%></td>
                    <td><%=i4.getTipom()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Produccion</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id Producción</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Fecha</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Descripción</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                  </div>
                
                
                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario5>dt4=new ArrayList<>();
                GestionInventario ge4=new GestionInventario();
                dt4=ge4.consultarpro();
                inventario5 i5=new inventario5();
                for(int i=0;i<dt4.size();i++){
                    i5=dt4.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i5.getIdproduccion()%></td>
                    <td><%=i5.getDescripcion()%></td>
                    <td><%=i5.getCantidad()%></td>
                    <td><%=i5.getFecha()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Empleado</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Cedula</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombres</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Apellidos</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Celular</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>
        </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario6>dt5=new ArrayList<>();
                GestionInventario ge5=new GestionInventario();
                dt5=ge5.consultaremp();
                inventario6 i6=new inventario6();
                for(int i=0;i<dt5.size();i++){
                    i6=dt5.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i6.getCedula()%></td>
                    <td><%=i6.getNombres()%></td>
                    <td><%=i6.getApellidos()%></td>
                    <td><%=i6.getCelular()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Salida</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id Salida</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Fecha</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cantidad de Salida</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tipo de salida</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario7>dt6=new ArrayList<>();
                GestionInventario ge6=new GestionInventario();
                dt6=ge6.consultarsal();
                inventario7 i7=new inventario7();
                for(int i=0;i<dt6.size();i++){
                    i7=dt6.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i7.getIdsalida()%></td>
                    <td><%=i7.getFecha()%></td>
                    <td><%=i7.getCantidads()%></td>
                    <td><%=i7.getTipos()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Producto</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id producto</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tipo</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Seleccionar</option>
                        <option value="1">Zapato</option>
                        <option value="2">Teni</option>
                        <option value="3">Bota</option>
                        <option value="3">Sandalia</option>
                      </select>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Talla</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Valor</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id producción</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id salida</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario8>dt7=new ArrayList<>();
                GestionInventario ge7=new GestionInventario();
                dt7=ge7.consultarprod();
                inventario8 i8=new inventario8();
                for(int i=0;i<dt6.size();i++){
                    i8=dt7.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i8.getIdproducto()%></td>
                    <td><%=i8.getTipo()%></td>
                    <td><%=i8.getNombrep()%></td>
                    <td><%=i8.getTalla()%></td>
                    <td><%=i8.getValor()%></td>
                    <td><%=i8.getCantidad()%></td>
                    <td><%=i8.getIdproduccion()%></td>
                    <td><%=i8.getIdsalida()%></td>
                </tr>getTipos()%></
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Solicita</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta">Solicita</legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">N° solicitud</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula solicitante</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id pedido</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Fecha</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario9>dt8=new ArrayList<>();
                GestionInventario ge8=new GestionInventario();
                dt8=ge8.consultarsol();
                inventario9 i9=new inventario9();
                for(int i=0;i<dt8.size();i++){
                    i9=dt8.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i9.getSolicita()%></td>
                    <td><%=i9.getCedula()%></td>
                    <td><%=i9.getIdpedido()%></td>
                    <td><%=i9.getFecha()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Recibe</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta">Recibe</legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id Recibe</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula </label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id pedido</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Fecha</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario10>dt9=new ArrayList<>();
                GestionInventario ge9=new GestionInventario();
                dt9=ge9.consultarre();
                inventario10 i10=new inventario10();
                for(int i=0;i<dt9.size();i++){
                    i10=dt9.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i10.getIdrecibe()%></td>
                    <td><%=i10.getCedula()%></td>
                    <td><%=i10.getIdpedido()%></td>
                    <td><%=i10.getFecha()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Realiza</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id realizado</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula trabajador</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id producción</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario11>dt10=new ArrayList<>();
                GestionInventario ge10=new GestionInventario();
                dt10=ge10.consultarrea();
                inventario11 i11=new inventario11();
                for(int i=0;i<dt10.size();i++){
                    i11=dt10.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i11.getIdrealizado()%></td>
                    <td><%=i11.getCedula()%></td>
                    <td><%=i11.getIdproduccion()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Registra</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id registra</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula trabajador</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id producción</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario12>dt11=new ArrayList<>();
                GestionInventario ge11=new GestionInventario();
                dt11=ge11.consultarra();
                inventario12 i12=new inventario12();
                for(int i=0;i<dt11.size();i++){
                    i12=dt11.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i12.getIdregistra()%></td>
                    <td><%=i12.getCedula()%></td>
                    <td><%=i12.getIdsalida()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Tener</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Tener</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">N° auxiliar</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id producción</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario13>dt12=new ArrayList<>();
                GestionInventario ge12=new GestionInventario();
                dt12=ge12.consultarte();
                inventario13 i13=new inventario13();
                for(int i=0;i<dt12.size();i++){
                    i13=dt12.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i13.getIdtiene()%></td>
                    <td><%=i13.getAux()%></td>
                    <td><%=i13.getReferencia()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Hacer</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Id hacer</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id producción</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Referencia</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<inventario14>dt13=new ArrayList<>();
                GestionInventario ge13=new GestionInventario();
                dt13=ge13.consultarha();
                inventario14 i14=new inventario14();
                for(int i=0;i<dt13.size();i++){
                    i14=dt13.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=i14.getIdhacen()%></td>
                    <td><%=i14.getIdproduccion()%></td>
                    <td><%=i14.getReferencia()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <section id="info">
            <div class="contenedor">
                <div class="info-users">
                    <img src="img/Leidy.jpeg">
                    <h4>Leidy Dionicio</h4>
                </div>
                <div class="info-users">
                    <img src="img/sebastian.jpeg">
                    <h4>Sebastian Triviño</h4>
                </div>
                <div class="info-users">
                    <img src="img/Nicolas.jpg">
                    <h4>Nicolas Quimbayo</h4>
                </div>
                <div class="info-users">
                    <img src="img/Varon.jpeg">
                    <h4>Juandariel Varon</h4>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="contenedor">
            <p class="copy">La huellita S.A.S &copy; 2020</p>
            </div>
    </footer>
</body>
</html>