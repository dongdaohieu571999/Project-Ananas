<%-- 
    Document   : Home
    Created on : Jul 10, 2019, 10:27:36 PM
    Author     : Dong Dao Hieu
--%>
<%@page import="util.HtmlHelper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans&display=swap" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>Ananas - DiscoverYOU</title>
        <%
            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
            Integer totalpage = (Integer) request.getAttribute("totalpage");
            Integer pageindex = (Integer) request.getAttribute("pageindex");
        %>
        <style>
            <c:import url="Home.css"></c:import>
            </style>
        </head>
        <body>
            <div style="width: 100%;height:100%">
            <c:import url="Header.jsp"></c:import>
            <div style="width: 100%">
                <img src="https://ananas.vn/wp-content/uploads/shoes-anatomy.jpg" style="max-height: 100%;max-width: 100%">
                </div>
                <div style="height: 100%;margin-left: 25%;margin-right: 25%;text-align: center">
                    <p style="font-family: sans-serif;font-size: 70px;font-weight: bolder;color: #000000">"ANATOMY" VULCANIZED<br>SHOES</p>
                    <div style="border: 1.5px solid #303030"></div>
                    <p style="text-align: left;margin: 10px;font-weight: bolder">05.07.2019 | Ananas Team</p>
                    <div style="border: 1.5px solid #303030;margin-bottom: 10px"></div>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">Before performing the "surgery" as the title of the article, we think you need to know that the daily Sneaker shoes on your feet are now divided into 2 main groups if you classify them based on the production method. export:
                    </p><br>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">- The first group is the Cold Cement Sneaker consisting of Sneaker models made from cold-insole - this group represents "everyone knows" shoes like Nike Air Force 1, Adidas Originals Stan Smith, Puma Suede, Onitsuka Asics Tiger Corsair, .. or Sportswear shoes for sports activities.
                        - The second group, Vulcanized Sneaker, also called vulcanized rubber shoes. These are the shoes that carry the classic and minimalist form that have become "immortal" with the production method that has existed for so long as Converse Chuck Taylor All Star, Vans Old Skool ... and the shoes of the Basas line , Vintas, Urbas from the current Ananas you are choosing.</p>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">Each group of shoes has different advantages and disadvantages depending on each person's choice. In the short range of this article, Ananas excuses himself to dig only the information surrounding the construction of Vulcanized Sneaker - the shoes we have chosen to be "core" to pursue throughout our journey. and "tell" you the easiest way to distinguish them from the rest.</p>
                    <div style="width: 100%">
                        <img src="https://ananas.vn/wp-content/uploads/shoes-anatomy-thumbnail.jpg" style="max-height: 100%;max-width: 100%">
                    </div>
                    <p style="margin-bottom: 50px">============================================================================================</p>
                    <p style="font-family: sans-serif;font-weight: bolder;font-size: 15px">VULCANIZED SNEAKER ANANAS SELECTED IS THE PRODUCT "CORE" IN THE JOURNEY</p>
                    <p style="margin-bottom: 50px;margin-top: 50px">============================================================================================</p>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">Like all other Sneaker pairs, the Vulcanized shoe has two main parts, including Upper: all components are in the upper body and Sole: the base is always made of rubber as the "foundation" below. According to the note from (1) - (11) you can see on the picture, Upper includes parts:</p>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px"><img src="https://ananas.vn/wp-content/uploads/shoess-anatomy-1.jpg" style="float: right;width: 380px">1) Vamp: mũi giày - phần nằm phía trước của giày, tiếp xúc với ngón chân.<br><br>
                        (2) Tongue: often referred to as the pure Vietnamese name is the tongue. This is the upper cushion of the foot and is connected to the top of the Vamp.<br><br>
                        (3) Stamp: pineapple logo stamp is sewn or heat pressed directly on the blade.<br><br>
                        (4) Eyestays: is the part containing 2 rows of shoelaces. In production, this part is called an ozone splint. The shoe may have an olive splint or not depending on the intent of the design.<br><br>
                        (5) Eyelets: located on Eyestays, Eyelets are words used to indicate shoe eyelets, if there are eyelets attached, Eyelets are also called ozone buttons.<br><br>
                        (6) Stitching: sewing threads have the effect of attaching parts together and decorative effects.<br><br></p>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px"><img src="https://ananas.vn/wp-content/uploads/shoess-anatomy-2.jpg" style="float: left;width: 370px;margin-right: 5px">(8) Aglets: nằm ở phần đầu của dây giày, còn gọi là đầu tips giữ dây.<br><br>
                        (9) Heel counter: counter - heel shaping for shoes (inside) and heel decoration (outside). <br><br>
                        (10) Heel strap: also known as the rear brace. The main use is to increase the aesthetics of the product. This part may not be available in some shoes and shoe styles. <br><br>
                        (11) Lining: also called body liner - the lining inside the shoe body.<br><br>
                        In item number (12), we have Insock: the first layer of your feet exposed when you slip on your shoes. Insock in some models will have the effect of keeping warm, deodorizing while some other models are the parts that bring smoothness and limit friction with Sole part (sole).</p><br><br>
                    <p style="margin-bottom: 50px">============================================================================================</p>
                    <p style="font-family: sans-serif;font-weight: bolder;font-size: 15px">SNEAKER ON THE TOTAL CAN ALWAYS HAVE 2 SECTOR IS THE UPPER AND SOLE, HAS THE CLASSIFICATION WE ARE VULCANIZED OR COLD CEMENT IS BASED ON THE PRODUCTION METHOD</p>
                    <p style="margin-bottom: 50px;margin-top: 50px">============================================================================================</p>
                    <p style="text-align: left;margin-bottom: 10px;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">Sole is the most important and "hard to chew" part of the shoe manufacturing process. Their full version consists of 3 parts: Insole (inner base), Midsole (middle sole) and Outsole (outsole) and is usually available in Cold Cement shoes. Many still mistakenly believe that the Midsole of Vulcanized shoes is the rubber foxing layer (15) between Upper and Outsole. However, in fact, Vulcanized shoes have no Midsole but only two parts:
                        (13) Insole: inner base - part under Insock, not visible from outside because it is covered.
                        (14) Outsole: the sole - the sole part of the shoe in direct contact with the ground. Since it is a high friction force while the shoe is used, the insole material must also be high-strength materials. </p>
                    <div style="width: 100%">
                        <img src="https://ananas.vn/wp-content/uploads/shoess-anatomy-5.jpg" style="max-width: 100%;max-height: 100%">
                    </div>
                    <p style="text-align: left;margin-bottom: 10px;margin-top: 10px;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">The last group of "rubber-made" parts are equally important in forming a complete Vulcanized shoe. That is:<br><br>
                        (15) Foxing: the rubber is glued to the shoe for reinforcement, the Upper and Sole connection, which also makes it easier to "spot" Vulcanized shoes and distinguish them from the Cold Cement shoes. At the beginning of the article (Cold Cement shoes do not have this part).<br><br>
                        (16) Bumper: there is another way of making foxing nose. Bumper is often used to reinforce foxing more firmly. Depending on the purpose of decoration, the material / colors of bumper may differ from the overall foxing. You can see this clearly in the Basas Bumper Gum products just released by Ananas not long ago.<br><br>
                        (17) Heel label: heel stamp - the highlight is equally important because it carries the responsibility of conveying the brand's message.</p>
                    <p style="margin-bottom: 50px">============================================================================================</p>
                    <p style="font-family: sans-serif;font-weight: bolder;font-size: 15px">FOXING IS THE MOST CHARACTERISTIC PARTS OF VULCANIZED SHOES</p>
                    <p style="margin-bottom: 50px;margin-top: 50px">============================================================================================</p>
                    <p style="text-align: left;font-family: 'Nunito Sans',sans-serif;color: #000000;font-size: 16px">So we have a rough understanding of the components that make up the general Vulcanized shoes and understand more about Ananas shoes in particular. Hope this will be useful information to help you gain more knowledge in the journey to learn the culture close to the ground. We will be back soon in the upcoming articles to give you more interesting information about the topics related to Ananas itself.
                        <br><br>
                        P/s: If you have questions, or have any feedback you want to share, we are happy to chat with you at info@ananas.vn mailbox.</p>
                    <p style="margin-bottom: 50px;margin-top: 50px">============================================================================================</p>
                    <p style="text-align: left;margin: 10px;font-weight: bolder">05.07.2019 | Ananas Team</p>
                    <div style="border: 1.5px solid #303030;margin-bottom: 10px"></div>
                </div>
            </div>
        </body>
    <c:import url="Footer.jsp"></c:import>
</html>


