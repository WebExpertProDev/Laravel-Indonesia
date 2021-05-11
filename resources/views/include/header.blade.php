
<header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h5 class="logo mr-auto"><a href="{{url('/')}}">OYIKA Cambodia</a></h5>
      <!--  <a href="javascript:void(0);" class="logo mr-auto"><img src="images/logo.png" alt="" class="img-fluid"></a> -->
	  @if(!Auth::check())
	  <nav class="nav-menu d-none d-lg-block">
	  <ul>
	  <li class=""><a href="{{route('login')}}"><i class="fa fa-key" aria-hidden="true"></i>Login</a>
	  </ul>
	  </nav>
	  @endif
@if(Auth::check())
      <nav class="nav-menu d-none d-lg-block">
	  
        <ul>
			  @if(Auth::user()->sectionCheck('Security')|| Auth::user()->role_id == 1)
          <li class="drop-down"><a href="javascript:void(0);"><i class="fa fa-cogs pr-2" aria-hidden="true"></i>Security</a>
            <ul>
              <li><a href="{{route('user-list.index')}}"><i class="fa fa-user pr-2" aria-hidden="true"></i>List Users</a></li>
              <li><a href="{{route('roles.index')}}"><i class="fa fa-users pr-2" aria-hidden="true"></i>List Roles</a></li>
				  {{--<li><a href="#"><i class="fa fa-bar-chart pr-2" aria-hidden="true"></i>User's Statistics</a></li>
              <li><a href="#"><i class="fa fa-lock pr-2" aria-hidden="true"></i>Base Permissions</a></li>
              <li><a href="#"><i class="fa fa-list-alt pr-2" aria-hidden="true"></i>Views/Menus</a></li>
              <li><a href="#"><i class="fa fa-link pr-2" aria-hidden="true"></i>Permission on View/Menu</a></li>
				  --}}
            </ul>
          </li>
		  @endif
		  @if(Auth::user()->sectionCheck('Checklist')|| Auth::user()->role_id == 1)
          <li class="drop-down"><a href="javascript:void(0);"><i class="fa fa-list pr-2" aria-hidden="true"></i>Checklist</a>
            <ul>
              <li><a href="{{route('checklist-index')}}"><i class="fa fa-users pr-2" aria-hidden="true"></i>Form</a></li>
			  <li><a href="{{route('checklist-view')}}"><i class="fa fa-users pr-2" aria-hidden="true"></i>View Checklist Data</a></li>
            </ul>
          </li>
		  @endif
		  @if(Auth::user()->sectionCheck('Analytics') || Auth::user()->role_id == 1)
          <li class="drop-down"><a href="javascript:void(0);"></i>Analytics</a>
            <ul>
              <li><a href="{{route('user-stat.index')}}"><i class="fa fa-folder-open-o pr-2" aria-hidden="true"></i>Ops Reports View</a></li>
            </ul>
          </li>
     @endif
      
          <li class="drop-down"><a href="javascript:void(0);"><i class="fa fa-user pr-2" aria-hidden="true"></i>{{Auth::user()->name}}</a>
            <ul>
       
			  <li><a href="{{route('logout')}}">Logout</a></li>
            </ul>
          </li>
          </ul>
      </nav>
	  @endif
	  
	  <!-- .nav-menu -->
  
    </div>
  </header>