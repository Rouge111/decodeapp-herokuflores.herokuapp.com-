"use strict"

class App{
	constructor(){
		this.x = [
			{
				"Brand": "GW-9400DCJ-1",
				"Specs": "Shock Resistant, Mineral Glass, Full auto LED light, selectable illumination duration, afterglow,Carbon fiber insert Resin Band.",
				"Image": "http://casiowatchparts.casioblog1.netdna-cdn.com/wp-content/uploads/2016/09/GW-9400DCJ-1.png", 
				"type"	:"Shockproof"		
			},
			{
				"Brand": "G-9300-1",
				"Specs": "Shock Resistant, Mud resistan, Mineral Glass, Full auto LED light, selectable illumination duration, afterglow,Carbon fiber insert Resin Band.",
				"Image": "http://www.gshock.com/resource/img/products/watches/xlarge/G9300-1_xlarge.png",
				"type"	:"Shockproof" 
			},
			{
				"Brand": "GW-9400-3",
				"Specs": "Shock Resistant, Mud resistan, Mineral Glass, Full auto LED light, selectable illumination duration, afterglow,Carbon fiber insert Resin Band.",
				"Image": "http://www.gshock.com/resource/img/products/watches/xlarge/GW9400-3_xlarge.png",
				"type":"Shockproof"
			},
			{
				"Brand": "GWG-1000-1A9",
				"Specs": "Case / bezel material Resin / Stainless steel, Resin Band, Shock Resistant,Screw Lock Crown,Neobrite ,Vibration resistant ,Mud Resistant, Sapphire Glass with non-reflective coating, Sapphire Crystal200-meter water resistant.",
				"Image": "http://www.g-central.com/wp-content/uploads/2015/03/GWG-1000-1A9.png",
				"type":"Shockproof"
			}
			,
			{
				"Brand": "GWN-1000F-2A",
				"Specs": "Case / bezel material Resin / Stainless steel,Resin Band, Mineral Glass , Neobrite , 200-meter water resistance.",
				"Image": " http://degega.com/wp-content/uploads/2016/08/GWN-1000F-2ADR--500x600.png ",
				"type":"Waterproof"
			}
			,
			{
				"Brand": "GWN-1000B-1A",
				"Specs": "Solar powered, 200-meter water resistance, Mineral Glass, Resin / Stainless steel ",
				"Image": "https://www.android-enjoyed.com/media/catalog/product/g/w/gwn-1000b-1adr_22615.png",
				"type":"Waterproof"
			}
			,
			{
				"Brand": "GN-1000C-8A",
				"Specs": "Solar powered, 200-meter water resistance, Mineral Glass, Resin / Stainless steel",
				"Image": "http://4.bp.blogspot.com/-7lTsM3IhW8c/Vh8EUL2Xn2I/AAAAAAAAIk0/i0oSGPFxUBI/s640/GN-1000C-8A_l.png",
				"type":"Waterproof"
			}
			,
			{
				"Brand": "GN-1000GB-1A",
				"Specs": "Neobrite,Solar powered, 200-meter water resistance, Mineral Glass, Resin / Stainless steel  ",
				"Image": "http://www.g-central.com/wp-content/uploads/2016/06/GN-1000GB-1A.png",
				"type":"Waterproof"
			}
		];

	}

	render(html,component){
		component.innerHTML += html;
	}


	reRender(html,component){
		component.innerHTML = html;
	}	
}

class Component extends App{
	constructor(){		
		super();
	}

	landingPage(){
		 $(document).ready(function(){
      $('.parallax').parallax();
    });

		let html = `
		

		<nav>

		<div class="nav-wrapper black">
		<a href="#" onclick="components.landingPage()" class="brand-logo">G-Watch</a>

		<ul id="nav-mobile" class="right hide-on-med-and-down">

		<li>
			<a href="#" onclick="component.landingPage()"> Home </a>
		</li>
		<li>
			<a href="#" onclick="component.GLatest()"> G-Latest </a>
		</li>
		<li>
			<a href="#" onclick="component.Product()"> Product</a>
		</li>
		<li>
			<a href="#" onclick="component.Create()"> Create</a>
		</li>
		<li>
			<a href="#" onclick="component.Contact()"> Contact </a>
		</li>

		</ul>
		</div>
		</nav>


	<div id="landing">
		
		<div class="parallax-container">
			<div class="parallax"><img class="img-responsive" src="img/ppic2.jpg" alt="logo"></div>
			

		</div>
		<div class="section white">
			<div class="row container">
				<div class="col s12">
				<h1 class="center-align">G-Watch</h1>		
				<hr>	
				</div>

				<div class="col s12 center-align">
				<h5>G-Shock is a line of watches manufactured by Casio, 
				designed to resist mechanical shock and vibration. 
				Its full form is Gravitational Shock.They are designed primarily for sports, 
				military and outdoors-oriented activities; 
				nearly all G-Shocks are digital or a combination of analog or digital and have a 
				stopwatch feature, countdown timer, backlight and water resistance.</h5>

				</div>
			</div>
		</div>
		<div class="parallax-container">
			<div class="parallax"><img class="img-responsive" src="img/ppic1.jpg" alt="logo"></div>
		</div>
		<div class="section white">
			<div class="row container">
				<div class="col s12">
				<h3 class="center-align">TO KEEP YOU UPDATED</h3>
				<h1 id="" class="center-align">FOLLOW US ON THESE SOCIAL MEDIA</h1>		
				</div>
				<div class="col s3 center-align logo-chan">
					<a href="https://www.facebook.com/christianjames.flores">
						<img src="http://bigbouncebigfun.com/wp-content/uploads/2015/04/facebook_circle-512-300x300.png">
					</a>
				</div>
				<div class="col s3 center-align logo-chan">
					<a href="https://dashboard.heroku.com/apps">
						<img src="https://cdn3.iconfinder.com/data/icons/free-social-icons/67/twitter_circle_color-256.png">
					</a>
				</div>
				<div class="col s3 center-align logo-chan">
					<a href="#">
						<img src="http://icons.iconarchive.com/icons/sicons/basic-round-social/512/instagram-icon.png">
					</a>
				</div>
				<div class="col s3 center-align logo-chan">
					<a href="https://github.com/Rouge111">
						<img src="https://cdn4.iconfinder.com/data/icons/iconsimple-logotypes/512/github-512.png">
					</a>
				</div>
			</div>
		</div>
	

	</div>



	<div id="glatest">
		<div class="row container">
			<div class="col s12 center-align">
			<h3>G-Latest</h3>
			<hr>
			</div>
			<div class="col s12">
				<h3>Shockproof Watches</h3>
			</div>

			<div id="Shockproof" class="row">

			</div>
			<div class="col s12">
				<h3>Waterproof Watches</h3>
			</div>

			<div id="waterWatch" class="row">

			</div>


		</div>
	</div>


	<div id="Create"> 

	<div class="section">
		<h1>Create</h1> 
	</div>

		<div class="row container">
			
				<div class="input-field col s6">
		          <input id="brandadd" type="text" class="validate">
		          <label for="brandadd">Brand Name...</label>
		        </div>

		        <div class="input-field col s6">
		          <input id="specsadd" type="text" class="validate">
		          <label for="specsadd">Specs...</label>
		        </div>

		        <div class="input-field col s6">
		          <input id="typeadd" type="text" class="validate">
		          <label for="typeadd">Type...</label>
		        </div>
		         <div class="input-field col s6">
		          <input id="imgadd" type="text" class="validate">
		          <label for="imgadd">Image...</label>
		        </div>

		        <div class="col s6">
		        	<a class="waves-effect waves-light btn" onclick="component.AddProduct()">button</a>
		        </div>
		        
			
			

		</div>
	</div>


	<div id="MoreInfo"> 
	<div class="row container">
		

	</div>
	</div>

	<div id="contact">
	<div class="row container">
		<h1>Contact</h1>
	</div>
	</div>

	<div id="Product" class="container row">

		<h1>Product</h1>

					<section >
						<div class="container">
							<table class="table">
								<thead>
									<tr>
										<th data-field="id"><center>G-shock</center></th>
										<th data-field="name"><center>Type</center></th>
									</tr>
								</thead>
								<tbody id="list" class=" table-bordered table-hover">  
								</tbody>
							</table>
						</div>
						<br>
						<br>
						<div class="load-more wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
						<a href="#" onclick="component.landingPage()"  class="btn btn-lg btn-primary">Back</a>
						</div>
						</section>
					</div>


				<div id="productpage">
						<h1>asdasdsad</h1>
				</div>







	<footer class="page-footer #212121 grey darken-4">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
               
                
              </div>
              <div class="col l4 offset-l2 s12">
              
                <ul>
                  
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            
            <center><p>© 2016 Copyright. G-Watch</p></center>
           
            </div>
          </div>
        </footer>


			

		`;
		this.reRender(`${html}`,document.getElementById("app"));
		$('#landing').show();
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').hide();
		$('#Create').hide();
		$('#productpage').hide();
		component.readParfait();


	}
	MoreInfo(key){


		console.log("halo");
		$('#home').hide();
		$('#portfolio').hide(); 
		$('#tables').hide();
		$('#thisinfo').show();
		$('#productpage').hide();
		component.MoreInfoDetails(key);
	}

	GLatest(){
		component.ShowShockproof();
		component.ShowWaterProofWatch();
		$('#landing').hide();
		$('#glatest').show();
		$('#contact').hide();
		$('#Product').hide();
		$('#Create').hide();
		$('#productpage').hide();

	}
	Product(){
		$('#landing').hide();
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').show();
		$('#Create').hide();
		$('#productpage').hide();

	}
	Create(){
	
		$('#landing').hide();
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').hide();
		$('#Create').show();
		$('#productpage').hide();
	}

	Contact(){

		$('#landing').hide();
		$('#glatest').hide();
		$('#contact').show();
		$('#Product').hide();
		$('#Create').hide();
		$('#productpage').hide();
	}
	ProductPage(key){
		let i =key;
		console.log(this.x[(key)].Brand);
		let html=`

			<div class="row container">
				<div class="col s6">
				<img src="${this.x[i].Image}">
				</div>
				<div class="col s6">
					<p>Brand name: </p><p>${this.x[i].Brand}</p>
					<p>Specs name: </p><p>${this.x[i].Specs}</p>
					<p>Type name: </p><p>${this.x[i].type}</p>

					<a class="waves-effect waves-light btn #004d40 teal darken-4" onclick="">Update</a>
					<a class="waves-effect waves-light btn  #18ffff cyan accent-2" onclick="">Add Cart</a>
					<a class="waves-effect waves-light btn #b71c1c red darken-4" onclick="component.AddProduct(${i})">Back</a>
				</div>

			</div>
		`;
		this.reRender(`${html}`,document.getElementById("productpage"));
			$('#landing').hide();
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').hide();
		$('#Create').hide();
		$('#productpage').show();
	}
	AddProduct(){
	let brand = document.getElementById("brandadd");
	let specs = document.getElementById("specsadd");
	let type = document.getElementById("typeadd");
	let image = document.getElementById("imgadd");

	let all ={
	"Brand": brand.value,
	"Specs": specs.value,
	"type": type.value,
	"Image": image.value

	};

	this.x.push(all);
	console.log(all);






	console.log(type.value);
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').show();
		$('#Create').hide();
		$('#productpage').hide();
		component.readParfait();
	}

	ShowShockproof(){
		let html=``;
		for(let i=0; i<this.x.length;i++){
			if(this.x[i].type === "Shockproof"){
				
				 html+=`
					<div class="col s3">
					<div id="sizes">
					<img src="${this.x[i].Image}"></div>
					<p>Brand: ${this.x[i].Brand}</p>
					
					<a href="#" class="btn btn-lg btn-primary" onclick ="component.ProductPage2(${i})">More Info</a>
					</div>
				`;
			}
		}
		this.reRender(`${html}`,document.getElementById("Shockproof"));

	}
	ShowWaterProofWatch(){
		let html=``;
		for(let i=0; i<this.x.length;i++){
			if(this.x[i].type === "Waterproof"){ 
				 html+=`
					<div class="col s3">
					<div id="sizes">
					<img src="${this.x[i].Image}">
					</div>
					<p>Brand: ${this.x[i].Brand}</p>
					

					<a href="#" class="btn btn-lg btn-primary" onclick ="component.ProductPage2(${i})">More Info</a>
					</div>
				`;
			}
		}
		this.reRender(`${html}`,document.getElementById("waterWatch"));
	}

	readParfait(){
		let listtable = document.getElementById("x");
		let html = ``;
		for(let i=0;i<this.x.length;i++){
			html += `
			<tr>
				<td>${this.x[i].Brand}</td>
				<td>${this.x[i].type}</td>
				<td><a href="#" class="btn btn-lg btn-primary" onclick ="component.ProductPage(${i})">More Info</a></td> 
			</tr>`;        
		}
		list.innerHTML = html;
	}
	ProductPage2(key){
	console.log("asdasd");
	let i =key;
		console.log(this.x[(key)].Brand);
		let html=`

			<div class="row container">
				<div class="col s6">
				<img src="${this.x[i].Image}">
				</div>
				<div class="col s6">
					<p>Brand name: </p><p>${this.x[i].Brand}</p>
					<p>Specs name: </p><p>${this.x[i].Specs}</p>
					<p>Type name: </p><p>${this.x[i].type}</p>

					<a class="waves-effect waves-light btn #004d40 teal darken-4" onclick="">Update</a>
					<a class="waves-effect waves-light btn  #18ffff cyan accent-2" onclick="">Add Cart</a>
					<a class="waves-effect waves-light btn #b71c1c red darken-4" onclick="component.GLatest(${i})">Back</a>
				</div>

			</div>
		`;
		this.reRender(`${html}`,document.getElementById("productpage"));
			$('#landing').hide();
		$('#glatest').hide();
		$('#contact').hide();
		$('#Product').hide();
		$('#Create').hide();
		$('#productpage').show();

	}

	moreInfoDetails(key){
	console.log("halo");
		let parfaitInfo = document.getElementById("thisinfo");
		let html = `
		<section>
            <div id="key" class="container">
              <div class="row">
              <div class="col col-md-12">
                <center> <h1>${this.x[key].Brand}</h1></center><br>
                </div>
                <div class="col col-md-12">
                <center><img src="${this.x[key].Image}" alt="No image"></center>
                </div>
              </div>
            </div><br><br><br>
              <div class="row">
                <div class="col col-md-5" id="textBox">
                            <p><br>
                              Comment:<br> ${this.x[key].Brand}<br><br>
                              Availability:<br>  ${this.x[key].Specs}<br><br>
                              Main Ingredients:<br>${this.x[key].type}<br><br>

                             Price:
                            </p>
                           <!-- <p id="price">${this.x[key].cost} </p> -->
                            <br><br><br>
                            <center><a class="btn btn-lg btn-primary">Buy</a>
                            <a class="btn btn-lg btn-primary">Delete</a>
                            <a class="btn btn-lg btn-primary">Update</a></center>  
                      </div>
                      </div>
        </section>
            `;
            this.reRender(`${html}`,document.getElementById("thisinfo"));
	}

}


let component = new Component();
component.landingPage();
component.readParfait();

