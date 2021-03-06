﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clientes.aspx.cs" Inherits="_Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="box box-info">
                <div class="box-header">
                    <h3 class="box-title">Clientes</h3>
                </div>
                <div class="box-body">
                    <!-- ID -->
                    <div class="form-group">
                        <label>Id</label>
                        <asp:Label ID="tbIdcliente" runat="server" class="form-control bg-gray"></asp:Label>
                    </div>
                    <!-- Nombre -->
                    <div class="form-group">
                        <label>Nombre</label>
                        <asp:TextBox ID="tbNombre" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <!-- NIT -->
                    <div class="form-group">
                        <label>NIT</label>
                        <asp:TextBox ID="tbNit" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <!-- Direccion -->
                    <div class="form-group">
                        <label>Dirección</label>
                        <asp:TextBox ID="tbDireccion" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <!-- Telefono -->
                    <div class="form-group">
                        <label>Teléfono</label>
                        <asp:TextBox ID="tbTelefono" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <!-- Email -->
                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="tbEmail" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <!-- /.form group -->
                    <div class="box-footer">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" class="btn btn-primary" OnClick="btnAgregar_Click" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" class="btn btn-default" OnClick="btnCancelar_Click" />
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="btnEliminar_Click" />
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
            <!-- TABLE -->
            <div class="box box-default">
                <div class="box-header with-border">
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="IdCliente" HeaderText="ID" SortExpression="IdCliente" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                            <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Direccion" />
                            <asp:BoundField DataField="Telefono" HeaderText="Teléfono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="fechacreacion" DataFormatString="{0:yyyy/MM/dd}" HeaderText="FechaCreacion" SortExpression="fechacreacion" />
                            <asp:ButtonField ButtonType="Button" Text="Editar" ItemStyle-HorizontalAlign="Center" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FARMACIASTOPConnectionString %>" SelectCommand="SELECT idcliente, nombre, nit, direccion, telefono, email, fechacreacion, usuariocreacion FROM [FTOP10100]"></asp:SqlDataSource>

                    <!-- /.row -->
                </div>
                <asp:Label ID="lblMensaje" runat="server" class="form-control"></asp:Label>
            </div>
            <!-- /.box -->
        </section>
    </div>
</asp:Content>

