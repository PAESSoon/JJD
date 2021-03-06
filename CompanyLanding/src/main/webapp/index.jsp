<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KitchenM8</title>
    <style>
        body {
            font-family: sans-serif;
            margin: auto;
            font-size: 12px;
        }

        #container {
            display: flex;
            flex-direction: column;
            max-width: 1200px;
            margin: auto;
            background-color: #FFF8D9;
        }

        nav {
            background-color: #EBA83A;
            color: #FFF8D9;
            display: flex;
            padding: 5px 60px;
            justify-content: space-between;
            height: 20px;
            align-items: center;
        }

        .nav-left {
            display: flex;

        }

        .nav-right {
            display: flex;
            float: right;
        }

        .nav-left div {
            margin: 0 5px;
        }

        .nav-right div {
            margin: 0 5px;
        }

        .nav-highlight {
            color: white;
        }

        .nav-normal {
            display: flex;
            text-decoration: underline;
        }

        .nav-normal a {
            color: #FFF8D9;
        }

        .nav-normal a:hover {
            color: #BB371A;
        }

        header {
            background-image: url("images/banner.png");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 400px;
            display: flex;
            align-items: center;
        }

        #title {
            text-align: center;
            font-size: 88px;
            color: white;
            background-color: #BC001D99;
            width: fit-content;
            margin: auto;
            border-radius: 2px;
        }

        main {
            display: flex;
            max-width: 1200px;
            padding-left: 5px;
        }

        .main-left {
            margin-right: 60px;
            margin-top: 20px;
            width: 800px;
        }

        .main-left section {
            text-align: justify;
        }

        .paragraph-title {
            font-weight: 700;
            font-size: 20px;
        }

        p span {
            font-weight: 700;
            color: #BB371A;
        }

        .front-space {
            padding: 4px 0px 4px 5px;
            margin-left: 32px;
            border-left: solid 2px #BB371A;
        }

        aside {
            background-color: #D5DBB3;
            height: 50%;
            padding-top: 8px;
            width: 400px;
        }

        .aside-title {
            font-weight: 700;
            padding-left: 35px;
            font-size: 18px;
        }

        .front-list {
            padding-left: 10px;
            margin-left: 32px;
        }

        .level {
            font-weight: 700;
        }

        @media screen and (max-width: 750px) {
            main {
                flex-direction: column-reverse;
            }
            .main-left {
                width: auto;
            }
            header {
                height: 283px;
            }
            aside {
                margin: auto;
            }
        }

        footer {
            display: flex;
            justify-content: space-between;
            background-color: #EBA83A;
            padding: 5px 30px 5px 20px;
        }

        form {
            padding: 30px;
        }

        label {
            padding-right: 20px;
        }

        .left-columns {
            display: flex;
        }

        .footer-column {
            margin-right: 20px;
        }

        .footer-title {
            color: #BB371A;
        }

        .footer-column ul {
            list-style-type: none;
            padding-left: 0;
        }

        .footer-column ul li a {
            color: white;
            text-decoration: none;
        }

        .footer-copyright {
            color: #BB371A;
            font-weight: 700;
            padding-top: 15px;
            padding-right: 50px;
        }

        .footer-copyright p {
            margin: 0;
        }

        #contact {
            border-radius: 5px;
            background-color: #EAE2B6;
            padding: 20px;
            margin: 50px 80px 50px 80px;
        }

        input[type=text], input[type=password], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #D5DBB3;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #BB371A;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #BB371A;
        }

        #main-images {
            display: flex;
        }

        .img-single {
            width: 33%;
            margin: 10px;
        }
        #error {
            padding-left: 35px;
            color: red;
            height: 15px;
        }

    </style>
</head>
<body>

<container id="container">
    <nav>
        <div class="nav-left">
            <div class="nav-highlight">Welcome Guest!</div>
            <div class="nav-normal">
                <div><a href="#main" target="blank">About Us</a></div>
            </div>

        </div>

        <div class="nav-right">
            <div class="nav-highlight">Stay Updated</div>
            <div class="nav-normal">
                <div><a href="#contact" target="blank">Contact</a></div>
            </div>
        </div>
    </nav>
    <header>
        <div id="title">KITCHEN8</div>
    </header>

    <main id="main">
        <div class="main-left">
            <section>
                <div class="paragraph-title">The story of Naturally Fast Food</div>
                <div>
                    <p>Chocolate bar drag??e chocolate sweet roll jelly. Sweet roll jelly beans topping marshmallow
                        bonbon marzipan biscuit carrot cake. Donut chocolate bar caramels powder shortbread sweet
                        pudding. Bear claw tiramisu powder pastry lemon drops jelly jelly beans cake. Candy cake
                        marzipan bonbon dessert. Tootsie roll wafer cake jelly beans lollipop muffin apple pie topping
                        pie. Liquorice caramels gingerbread chocolate bar bear claw macaroon jelly beans. Souffl??
                        topping pie oat cake lemon drops marshmallow cake carrot cake icing.</p>
                    <p class="front-space">Jelly beans liquorice chocolate halvah brownie jelly beans. Powder topping
                        topping marshmallow jujubes bonbon croissant biscuit gummies. Chocolate bar fruitcake marzipan
                        cake danish cookie toffee liquorice chupa chups. Liquorice halvah dessert sesame snaps pie
                        liquorice pie donut. Cupcake candy candy canes oat cake caramels jelly beans. Marzipan liquorice
                        cupcake ice cream pastry cake macaroon jelly-o tootsie roll. Souffl?? chocolate bar pastry
                        shortbread candy pie. Dessert halvah tiramisu pastry souffl?? sweet roll.</p>
                    <p>Cake sweet roll candy caramels pie croissant chupa chups liquorice cookie. Liquorice jujubes
                        halvah chupa chups marzipan. Gingerbread jelly beans sweet roll dessert muffin marzipan drag??e
                        jelly-o. Cake gummi bears chocolate cake chocolate cake cheesecake chupa chups pastry. Sesame
                        snaps lemon drops croissant carrot cake jujubes danish. Chocolate cake drag??e gummies toffee
                        chocolate gummi bears liquorice cupcake. Gummies cookie gummies bonbon sweet lemon drops
                        dessert. Shortbread brownie shortbread bonbon cheesecake. Tiramisu tiramisu gingerbread danish
                        biscuit. <span>Read More</span></p>
                </div>
            </section>

            <section>
                <div class="paragraph-title">Why can???t fast food be good food?</div>
                <div class="paragraph-info">
                    <p>Of July in <span>General </span>Updated <span>piettons </span>by <span>admin</span></p>
                </div>
                <div id="main-images">
                    <img class="img-single" src="images/fishfingerwrap.jpeg">
                    <img class="img-single" src="images/halloumiwrap.jpeg">
                    <img class="img-single" src="images/koreanburger.jpeg">
                </div>
            </section>

            <section>
                <div class="paragraph-title">Food that not only tastes good but does you good too!</div>
                <div class="paragraph-info">
                    <p>Of July in <span>General </span>Updated <span>piettons </span>by <span>admin</span></p>
                </div>
                <div>
                    <p><strong>Chocolate bar drag??e chocolate sweet roll jelly.</strong> Sweet roll jelly beans topping
                        marshmallow bonbon marzipan biscuit carrot cake. Donut chocolate bar caramels powder shortbread
                        sweet pudding. Bear claw tiramisu powder pastry lemon drops jelly jelly beans cake. Candy cake
                        marzipan bonbon dessert. Tootsie roll wafer cake jelly beans lollipop muffin apple pie topping
                        pie. Liquorice caramels gingerbread chocolate bar bear claw macaroon jelly beans. Souffl??
                        topping pie oat cake lemon drops marshmallow cake carrot cake icing.</p>
                    <p class="level">Header level 4</p>
                    <ol class="front-list">
                        <li>Caramels - gingerbread chocolate bar</li>
                        <li>Powder - topping topping marshmallow</li>
                    </ol>
                    <p class="front-space">Jelly beans liquorice chocolate halvah brownie jelly beans. Powder topping
                        topping marshmallow jujubes bonbon croissant biscuit gummies. Chocolate bar fruitcake marzipan
                        cake danish cookie toffee liquorice chupa chups. Liquorice halvah dessert sesame snaps pie
                        liquorice pie donut.</p>
                    <p class="level">Header level 3</p>
                    <ul class="front-list">
                        <li>Caramels - gingerbread chocolate bar</li>
                        <li>Powder - topping topping marshmallow</li>
                    </ul>
                    <ol class="front-list">
                        <li>Caramels - gingerbread chocolate bar</li>
                        <li>Powder - topping topping marshmallow</li>
                    </ol>
                </div>
            </section>
        </div>

        <aside>
            <p class="aside-title">LOGIN</p>

            <div id="error"><%String errorMsg = "";

            if(request.getAttribute("errMsg") != null)
            {
                errorMsg = request.getAttribute("errMsg").toString();
            }%>
                <p><%=errorMsg%></p>

            </div>

            <form action="login" method="POST">
                <label for="username">Username: </label>
                <input id="username" type="text" name="username"/>
                <br/><br/>
                <label for="password">Password: </label>
                <input id="password" type="password" name="password"/>
                <br/><br/>
                <input type="submit" value="Submit">
            </form>
        </aside>
    </main>

    <div id="contact">
        <h3>Contact Form</h3>
        <form action="mailto:test@fakes.com" method="post" enctype="text/plain">
            <label for="fname">First Name</label>
            <input type="text" id="fname" name="firstname">

            <label for="lname">Last Name</label>
            <input type="text" id="lname" name="lastname">

            <label for="subject">Subject</label>
            <textarea id="subject" name="subject" placeholder="Write something.." style="height:100px"></textarea>

            <input type="submit" value="Submit" onclick="submitContactForm()">
        </form>
    </div>

    <footer>
        <div class="left-columns">
            <div class="footer-column">
                <p class="footer-title">Links</p>
                <ul>
                    <li><a href="https://www.bbcgoodfood.com/recipes/marshmallows" target="blank">Powder - topping
                        topping marshmallow</a></li>
                    <li><a href="https://ottawafoodies.com/food/17/index.html" target="blank">Sesame - snaps lemon drops
                        croissant</a></li>
                    <li><a href="https://candyfunhouse.ca/" target="blank">Candy - cake marzipan bonbon dessert</a></li>
                    <li><a href="https://thimblecakes.ca/" target="blank">upcake - candy candy canes oat cake</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <p class="footer-title">Follow our updates</p>
                <ul>
                    <li><a href="https://www.bbcgoodfood.com/recipes/marshmallows" target="blank">Powder - topping
                        topping marshmallow</a></li>
                    <li><a href="https://ottawafoodies.com/food/17/index.html" target="blank">Sesame - snaps lemon drops
                        croissant</a></li>
                    <li><a href="https://candyfunhouse.ca/" target="blank">Candy - cake marzipan bonbon dessert</a></li>
                    <li><a href="https://thimblecakes.ca/" target="blank">upcake - candy candy canes oat cake</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-copyright">
            <p class="copyright-txt">?? Copyright 2022</p>
            <p>All rights reserved</p>
        </div>
    </footer>
</container>

<script>
    function submitContactForm() {
        alert("The email has been generated.");
    }

    // clear all input fields on refresh page
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, 'index.jsp' );
    }

</script>

</body>
</html>