@extends('layouts.welcome')
@section('navigation')
<nav class="navbar navbar-inverse">
                
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand active" href="{{ url('/') }}">Artificiallimbcare.lk</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="{{ url('/') }}">{{ __('views.welcome.home') }}</a></li>
      <li ><a href="{{ url('/aboutus') }}">About Us</a></li>
      <li class="active"> <a href="{{ url('/services') }}">Services</a></li>
      <li >  <a href="{{ url('/contact') }}">Contact</a></li>
      
     
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
            @if (Route::has('login'))
            @if (!Auth::check())
                @if(config('auth.users.registration'))
                    {{-- <a href="{{ url('/register') }}">{{ __('views.welcome.register') }}</a> --}}
                @endif
                <li><a href="{{ url('/login') }}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            @else
                @if(auth()->user()->usertype == 'administrator'){{--->hasRole('administrator')--}}
                <li> <a href="{{ url('/admin') }}">{{ __('views.welcome.admin') }}</a></li>
                @elseif(auth()->user()->usertype == 'Receptionist')
                <li> <a href="{{ url('/receptionist') }}">{{ __('views.welcome.admin') }}</a></li>
                @elseif(auth()->user()->usertype == 'PNO')
                <li>  <a href="{{ url('/pno') }}">{{ __('views.welcome.admin') }}</a></li>
                @elseif(auth()->user()->usertype == 'Director')
                <li>  <a href="{{ url('/director') }}">{{ __('views.welcome.admin') }}</a></li>
                @elseif(auth()->user()->usertype == 'Patient')
                <li>  <a href="{{ url('/patient') }}">{{ __('views.welcome.admin') }}</a></li>
                @elseif(auth()->user()->usertype == 'Doctor')
                <li>  <a href="{{ url('/doctor') }}">{{ __('views.welcome.admin') }}</a></li>
                @endif
                <li><a href="{{ url('/logout') }}"><span class="glyphicon glyphicon-log-out"></span>{{ __('views.welcome.logout') }}</a></li>
            @endif
        @endif
        
      </ul>
  </div>
</nav>
@endsection
@section('content')
         
        <div class="container">
            <br>
            <div class="col-12 panel panel-primary">
                        
                {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
               
            @if (($services->type)==="Orthosis care")
                <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/orthosis.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our photo and description</h4>
             </div>
              @endif
              @if (($services->type)==="Prosthesis care")
              <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/pedestrian-walking.png" width="75px" height="75px"></p><h4 align="center">{{$services->type}}</h4>
           </div>
            @endif
            @if (($services->type)==="Cosmetic solutions care")
            <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/nose.png" width="75px" height="75px"></p><h4 align="center">{{$services->type}}</h4>
         </div>
          @endif
          @if (($services->type)==="Children care")
          <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/chaild.png" width="75px" height="75px"></p><h4 align="center">{{$services->type}}</h4>
       </div>
        @endif

              
            </div>
            
          </div>
          
          <div class="container">

            <div class="col-8 panel panel-primary">
               <!-- Portfolio Item Heading -->
  <h1 class="my-4">{{$services->type}}
    <small>{{ $services->serviceName }}</small>
  </h1>

  <!-- Portfolio Item Row -->

  <div class="col-12   text-center">
    <div class="panel panel-success ">

        <div class="panel-heading">
    <div class="col-8">
        <div class="row">
            <div class="col-xs-12" >
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            @php
            use Illuminate\Support\Facades\DB;
            $ourvideo = DB::table('service_video')->where('serviceID', $services->id)->get();
            $ourphotos = DB::table('service_photo')->where('serviceID', $services->id)->get();

            if  (count($ourphotos) > 0)
            {$no=$ourphotos{0}->id;
          }
           
        @endphp
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
        
            <!-- Wrapper for slides -->
            <div class="carousel-inner">  
                       

              <div class="item active">
                  <p style="text-align:center;">  
                  <img     src="\image\service\item\{{ $services->pic }}"  alt="Los Angeles" style="height:400px;width:auto;max-width:1000px">
                </p>
              </div>
                {{-- @if  (count($ourphotos) > 0) --}}
                @foreach($ourphotos as $ourphoto)
                {{-- @if ($no==$ourphoto->id) --}}
                {{-- @else --}}
                <div class="item ">
                    <p style="text-align:center;">  
                    <img src="\image\service\item\our\{{$ourphoto->photo}}" alt="ck " style="height:400px;width:auto;max-width:1000px">
                  </p>
                </div>
                {{-- @endif --}}

                @endforeach

          {{-- @endif --}}
            </div>
        
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div></div></div>

    <div class="col-4">
       <h2  class="my-4" align="center">{{ $services->serviceName }}</h2>
      <p>{{ $services->description }}</p>
      <a  href="{{ route('services') }}">
          
      <button type="button" class="btn btn-danger">Services home</button>

    </a>
      @if (($services->type)==="Orthosis care")
     
      <a  href="{{ route('orthosishome') }}">
      <button type="button" class="btn btn-success">{{ $services->type}} home</button>
    </a>
    @endif
    @if (($services->type)==="Prosthesis care")

    <a  href="{{ route('prosthesishome') }}">
    <button type="button" class="btn btn-success">{{$services->type}} home</button>
  </a>
  @endif
  @if (($services->type)==="Cosmetic solutions care")
  <a  href="{{ route('cosmetichome') }}">
  <button type="button" class="btn btn-success">{{$services->type}} home</button>
</a>
@endif
@if (($services->type)==="Children care")
<a  href="{{ route('childrenhome') }}">
<button type="button" class="btn btn-success">{{$services->type}} home</button>
</a>
@endif
    </div>

</div>
</div>

</div>
</div>
</div>
  <!-- /.row -->
  <div class="container">
      <br>

      @if (($services->type)==="Orthosis care")
      <div class="col-12 panel panel-primary">
                  
          {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
          <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/orthosis.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our photo</h4>
            <a  href="{{ route('orthosishome') }}">
                <button type="button" class="btn btn-success">Orthosis care home</button>
              </a>
          </div>
      </div>
      @endif
      @if (($services->type)==="Prosthesis care")
      <div class="col-12 panel panel-primary">
                  
          {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
          <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/pedestrian-walking.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our photo</h4>
            <a  href="{{ route('prosthesishome') }}">
                <button type="button" class="btn btn-success">Prosthesis care home</button>
              </a>
          </div>
      </div>
      @endif
      @if (($services->type)==="Cosmetic solutions care")
      <div class="col-12 panel panel-primary">
          {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
          <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/nose.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} care our photo</h4>
            <a  href="{{ route('cosmetichome') }}">
                <button type="button" class="btn btn-success">Cosmetic solutions care home</button>
              </a>
          </div>
      </div>
      @endif
      @if (($services->type)==="Children care")
     
      <div class="col-12 panel panel-primary">
                                                      
          {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
          <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/chaild.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our photo</h4>
            <a  href="{{ route('childrenhome') }}">
              <button type="button" class="btn btn-success">Children care home</button>
            </a>
          </div>
      </div>
      @endif
        <div class="col-4  text-center">
            @if  (count($ourphotos) > 0)
            @foreach($ourphotos as $ourphoto)
            <div class="col-xs-12 col-md-4  text-center">
                <div class="panel panel-success ">
                    <div class="panel-heading " style="text-align: center;">
                        <p style="text-align:center;">  
                            <img id={{ $ourphoto->id }} onclick="displayIMG(this.id)" src="\image\service\item\our\{{$ourphoto->photo}}" alt="ck "  style="height:200px;width:150px;max-width:200px">
                          </p>
                    </div>
                </div>
              </div>  
        @endforeach 

        @endif
        </div>
            </div> 
            <div class="container">
                <br>
          
                @if (($services->type)==="Orthosis care")
                <div class="col-12 panel panel-primary">
                            
                    {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
                    <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/orthosis.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our video</h4>
                      <a  href="{{ route('orthosishome') }}">
                          <button type="button" class="btn btn-success">Orthosis care home</button>
                        </a>
                    </div>
                </div>
                @endif
                @if (($services->type)==="Prosthesis care")
                <div class="col-12 panel panel-primary">
                            
                    {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
                    <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/pedestrian-walking.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our video</h4>
                      <a  href="{{ route('prosthesishome') }}">
                          <button type="button" class="btn btn-success">Prosthesis care home</button>
                        </a>
                    </div>
                </div>
                @endif
                @if (($services->type)==="Cosmetic solutions care")
                <div class="col-12 panel panel-primary">
                    {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
                    <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/nose.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} care our video</h4>
                      <a  href="{{ route('cosmetichome') }}">
                          <button type="button" class="btn btn-success">Cosmetic solutions care home</button>
                        </a>
                    </div>
                </div>
                @endif
                @if (($services->type)==="Children care")
               
                <div class="col-12 panel panel-primary">
                                                                
                    {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
                    <div class="panel-heading"><p style="text-align:center;"> <img src="/img/icons/chaild.png" width="75px" height="75px"></p><h4 align="center">{{ $services->serviceName }} our video</h4>
                      <a  href="{{ route('childrenhome') }}">
                        <button type="button" class="btn btn-success">Children care home</button>
                      </a>
                    </div>
                </div>
                @endif
                  <div class="col-4  text-center">
                     
          @if  (count($ourvideo) > 0)
                      @foreach($ourvideo as $ourvideot)
                      <div class="col-xs-12 col-md-6  text-center">
                          <div class="panel panel-success ">
                              <div class="panel-heading " style="text-align: center;">
                              <iframe width="300px" height="300px" src="https://www.youtube.com/embed/{{$ourvideot->embed}}">
                                  </iframe>
                              </div>
                          </div>
                        </div>  
                  @endforeach 
                  @endif
                  </div>
                      </div>                       
                                                <div class="container">
                                                <div id="myModal" class="modal">
                                                        <span class="close" style="color:#FB0233;font-weight:bold;font-size: 50px;">&times;</span>
                                                        <img class="modal-content" id="img01" width="100%" height="100%">
                                                      
                                                    </div>
                                                </div>
                <div id="myModal" class="modal">
                        <span class="close">&times;</span>
                    <img class="modal-content" id="img01">
                    <div id="caption"></div>
                  </div>
                                                <div class="container">
                                                    <div class="panel panel-danger">
                        
                                                        {{-- <div class="panel-body"><p style="text-align:center;"><img src="img/core-img/artificial.png" class="center" width="800" height="420"></p></div> --}}
                                                        <div class="panel-heading"> <div class="col-12 col-lg-5">|| Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved  by ALC(pvt) Ltd.<br></div>
                                                        <div  align="right"> Web Design by<a href="https://www.facebook.com/team176sri/" target="_blank">Team 176</a></div>
                                                    </div>
                                                  </div></div>
                                                  <script>
                                                        // Get the modal
                                                        var modal = document.getElementById('myModal');
                                                        // var img=document.getElementById("myImg");
                                                        var modalImg = document.getElementById("img01");
                                                        var captionText = document.getElementById("caption");
                                                       
                                                          function displayIMG(clicked_id)
                                                        {
                                                            modal.style.display = "block";
                                                            modalImg.src = document.getElementById(clicked_id).src;
                                                            captionText.innerHTML =document.getElementById(clicked_id).alt;
                                                        }  
                                                        
                                                        // Get the <span> element that closes the modal
                                                        var span = document.getElementsByClassName("close")[0];
                                                        
                                                        // When the user clicks on <span> (x), close the modal
                                                        span.onclick = function() { 
                                                            modal.style.display = "none";
                                                        }
                                                        </script>
                                                                                              
                                                
                  
@endsection