<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Buissness.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Contact Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container contact-page py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                <div class="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                    <h6 class="text-success text-uppercase" >Get In Touch</h6>
                    <h1 class="mb-4">Contact For Any Query</h1>
                    <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                    <div class="bg-light p-4">
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" class="form-control" id="txtname" placeholder="Name"></asp:TextBox>
                                        <label for="name">Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txtname" ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s+[A-Za-z]*)|([A-z][A-Za-z]*)$"></asp:RegularExpressionValidator>
                                        </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address" ></asp:RegularExpressionValidator>
                                        <asp:TextBox runat="server" class="form-control" id="txtemail" placeholder="Email"></asp:TextBox>
                                        <label for="email">Email</label>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" class="form-control" id="phone" placeholder="Phone"></asp:TextBox>
                                        <label for="Phone">Phone</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your phone no" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone No" ForeColor="Red" ControlToValidate="phone" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" class="form-control" id="txtmsg" placeholder="Leave a message here" textmode="MultiLine" ></asp:TextBox>
                                        <label for="Message">Comment</label>
                                    </div>
                                </div>
                                <div class="col-12"> 
                                    <asp:Button id="Sendbtn" runat="server" Text="Send Message" class="btn btn-primary w-100 py-3" OnClick="Sendbtn_Click1" />
                                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                    <div class="position-relative h-100">
                        <iframe class="position-absolute w-100 h-100" style="object-fit: cover;"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60674.86999959631!2d75.0353619!3d18.10950595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc4792e22a61e83%3A0x305d2a423eef7769!2sIndapur%2C%20Maharashtra%20413106!5e0!3m2!1sen!2sin!4v1688705531205!5m2!1sen!2sin"
                        frameborder="0" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
