<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Farmers_Market.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-mdb-ride="carousel" style="margin-top: 30px; margin-bottom: 30px;">
            <ol class="carousel-indicators">
                <li
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="0"
                    class="active"></li>
                <li data-mdb-target="#carouselExampleCaptions" data-mdb-slide-to="1"></li>
                <li data-mdb-target="#carouselExampleCaptions" data-mdb-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" style="border-radius: 0.5em;">
                <div class="carousel-item active">
                    <img
                        src="assets/1.jpg"
                        class="d-block w-100"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 450px;" />
                    <div class="carousel-caption d-none d-md-block">
                        <h4>Welcome to Farmer's Market</h4>
                        <p>A platform for the hard working farmers of our nation</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img
                        src="assets/2.jpg"
                        class="d-block w-100"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 450px;" />
                    <div class="carousel-caption d-none d-md-block">
                        <h4>Find & Sell on the Market</h4>
                        <p>Now the Farmers Can Find the Market & Sell Their Harvest Fast & Easily</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img
                        src="assets/3.jpg"
                        class="d-block w-100"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 450px;" />
                    <div class="carousel-caption d-none d-md-block">
                        <h4>Purchasing Harverst is on Your Fingerprints</h4>
                        <p>Now the Keels Super Can Directly Contact With Farmers & Purchase their Harvest Quick & Easily</p>
                    </div>
                </div>
            </div>
            <a
                class="carousel-control-prev"
                href="#carouselExampleCaptions"
                role="button"
                data-mdb-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a
                class="carousel-control-next"
                href="#carouselExampleCaptions"
                role="button"
                data-mdb-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
        <div class="p-5 text-left">
            <h2 class="mb-3">Farmer's Market</h2>
            <h5 class="mb-3">Farmer's Market is a initiative by Department of Agriculture in-collaboration with Keels Private Limited to bring a modern platform for the Farmers to list and sell their harvests online.
                            Farmers are encouraged to use the platform for all kind of needs and can be used to be in-touch with the authorities and have their harvest quality checked-up.
            </h5>
            <a class="btn btn-primary" runat="server" href="~/" role="button">Explore</a>
        </div>
        <div class="row row-cols-1 row-cols-md-2 g-4 p-5">
            <div class="col">
                <div class="card">
                    <img
                        src="assets/cards/1.jpg"
                        class="card-img-top"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 400px;" />
                    <div class="card-body">
                        <h5 class="card-title">Machines and Agriculture</h5>
                        <p class="card-text">
                            With tractors land preparation could be completed more rapidly, permitting to save stored water, 
which could be used for a second crop. Advancements in technology have come a long way in agriculture.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img
                        src="assets/cards/2.jpg"
                        class="card-img-top"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 400px;" />
                    <div class="card-body">
                        <h5 class="card-title">Tractor Plowing</h5>
                        <p class="card-text">
                            A plough or plow is a farm tool for loosening or turning the soil before sowing seed or planting. 
                            Ploughs were traditionally drawn by oxen and horses, but in modern farms are drawn by tractors.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img
                        src="assets/cards/3.jpg"
                        class="card-img-top"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 400px;" />
                    <div class="card-body">
                        <h5 class="card-title">Merging technology with agriculture</h5>
                        <p class="card-text">
                            The adoption of emerging technologies in agriculture is expanding faster than the 
consumer's ability to perceive the opportunities.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img
                        src="assets/cards/4.jpg"
                        class="card-img-top"
                        alt="..."
                        style="object-fit: cover; width: 100%; height: 400px;" />
                    <div class="card-body">
                        <h5 class="card-title">Role of farmers</h5>
                        <p class="card-text">
                            Farmers may just be the hardest working people you will ever meet. They get tired and they are tired,
but it’s not for the reason that usually comes to mind.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="background-color: #FAFAFA;">
        <div class="team-grid p-5" style="background-color: #FAFAFA;">
            <div class="intro">
                <h2 class="text-center mb-3">Team</h2>
                <p class="text-center mb-3">Meet the Developers of Farmer's Market</p>
            </div>
            <div class="row people">
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/1.jpg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Senali Madawala</h3>
                            <p class="title">Developer</p>
                            <div class="social"><a href="https://www.facebook.com/sally.madawala.1"><i class="fa fa-facebook-official"></i></a><a href="https://twitter.com/MadawalaSenali"><i class="fa fa-twitter"></i></a><a href="https://github.com/SenaliMadawala"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/2.jpg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Nimesh Kavinda</h3>
                            <p class="title">UX Designer, Developer </p>
                            <div class="social"><a href="https://www.facebook.com/nimeshkavinda13/"><i class="fa fa-facebook-official"></i></a><a href="https://twitter.com/nimeshk_"><i class="fa fa-twitter"></i></a><a href="https://github.com/nimeshkavinda"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/3.jpeg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Dinushi Dhananjani</h3>
                            <p class="title">Project Manager </p>
                            <div class="social"><a href="https://www.facebook.com/dinushi.dhananjani.9"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="https://github.com/Dinushi94"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/4.jpeg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Chamoda Sankalpani</h3>
                            <p class="title">System Analyst </p>
                            <div class="social"><a href="https://www.facebook.com/chamodi.sankalpana.1"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="https://github.com/chamodasankalpani"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/5.jpg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Sahan Nishantha</h3>
                            <p class="title">System Designer </p>
                            <div class="social"><a href="https://www.facebook.com/PnXKeiRa"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="https://github.com/Sahan138"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item">
                    <div class="box" style="background-image: url(assets/team/6.jpeg); border-radius: 0.3em;">
                        <div class="cover">
                            <h3 class="name">Medhavi</h3>
                            <p class="title">DevOps </p>
                            <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
