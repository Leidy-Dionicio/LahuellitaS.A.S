<%@page import="Vista.nomina4"%>
<%@page import="Vista.nomina3"%>
<%@page import="Vista.nomina2"%>
<%@page import="Modelo.GestionNomina"%>
<%@page import="Vista.nomina1"%>
<%
    
    HttpSession dat=request.getSession();
    String user=(String)dat.getAttribute("codigo");
    
%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Nomina</title>
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
            <h1><i class="icon ion-md-walk">Nomina</i></h1>
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
            </div>
        </section>
        <section id="Bienvenidos empleados">
            <h2><center>Bienvenidos empleados a su lugar de trabajo virtual</center></h2>
        </section>
        <h2><center>Empleados</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form action="ServletEmpleadoN" method="POST">
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Cedula</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="ced" >
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombres</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="nam" >
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Apellidos</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="ape" >
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Telefono</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="tel" >
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Sexo</label>
                    <select class="form-select" aria-label="Default select example" name="sex">
                        <option selected>Seleccionar</option>
                        <option value="M">M</option>
                        <option value="F">F</option>
                      </select>
                </div>
                
                <button type="submit" class="btn btn-primary" name="bntregistrar">Registrar</button>
                <button type="submit" class="btn btn-primary" name="bntactualizar">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<nomina1>nt=new ArrayList<>();
                GestionNomina ge=new GestionNomina();
                nt=ge.consultarempl();
                nomina1 n1=new nomina1();
                for(int i=0;i<nt.size();i++){
                    n1=nt.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=n1.getCedula()%></td>
                    <td><%=n1.getNombres()%></td>
                    <td><%=n1.getApellidos()%></td>
                    <td><%=n1.getTelefono()%></td>
                    <td><%=n1.getGenero()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Pago semanal</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">N° Factura</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Total semanal</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id empleado</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<nomina2>nt1=new ArrayList<>();
                GestionNomina ge1=new GestionNomina();
                nt1=ge1.consultarpa();
                nomina2 n2=new nomina2();
                for(int i=0;i<nt1.size();i++){
                    n2=nt1.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=n2.getNfactura()%></td>
                    <td><%=n2.getTotalsemana()%></td>
                    <td><%=n2.getIDempleado()%></td>
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
                  <label for="exampleInputEmail1" class="form-label">N° registro</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Encargado</label>
                    <input type="texto" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Cedula</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id empleado</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Código</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                
                
                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
            <%
                ArrayList<nomina3>nt2=new ArrayList<>();
                GestionNomina ge2=new GestionNomina();
                nt2=ge2.consultarre();
                nomina3 n3=new nomina3();
                for(int i=0;i<nt2.size();i++){
                    n3=nt2.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=n3.getRegistro()%></td>
                    <td><%=n3.getEncargado()%></td>
                    <td><%=n3.getCedula()%></td>
                    <td><%=n3.getIDempleado()%></td>
                    <td><%=n3.getCodigo()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Rol</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta">Rol</legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Código</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Descripción</label>
                    <input type="texto" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tarifa</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
               
                
                
                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>

        </div>

    </div>
        <table border="5" width="90%">
<%
                ArrayList<nomina4>nt3=new ArrayList<>();
                GestionNomina ge3=new GestionNomina();
                nt3=ge3.consultarro();
                nomina4 n4=new nomina4();
                for(int i=0;i<nt3.size();i++){
                    n4=nt3.get(i);
            %>
            <tbody>
                <tr>
                    <td><%=n4.getCodigo()%></td>
                    <td><%=n4.getDescripcion()%></td>
                    <td><%=n4.getTarifa()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <h2><center>Produccion diaria empleados</center></h2>
        <div class="row" >

        <div class="col-4"></div>

        <div class="col-5 frm" >
            <form>
                <legend class="tta"></legend>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">N° Registro</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>               
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Id-empleado</label>
                    <input type="texto" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Total diario</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
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
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
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