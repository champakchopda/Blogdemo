@extends('Admin.Default')
	

@section('content')

<div id="page-wrapper">
			<div class="main-page">
<div class="forms">
                    <br>
					<h2 class="title1">User profile</h2>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
					
						<div class="form-body">
							<form method="POST"  id="profileupdate" action="{{route('profileupdate')}}">
								 {{csrf_field()}}
								  @include('Admin.message')
							 <div class="form-group"> <label for="name">Name</label> <input type="text" name="name" class="form-control" id="name" value="{{$user->name}}" placeholder="Enter name"> </div>

							 <div class="form-group"> <label for="email">Email</label> <input type="email" value="{{$user->email}}" name="email" class="form-control" id="email" placeholder="Enter Title"> </div>
                             <div class="form-group"> <label for="dob">Dob</label> <input type="date" value="{{$user->dob}}" name="dob" class="form-control" id="dob" > </div>
    
							    <button type="submit" class="btn btn-primary">Save</button> </form> 
						</div>
					</div>
					
				</div>
				</div>
			</div>




					@endsection

					@section('script')
					  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />

  <script type="text/javascript">
  	
  	 $(document).ready(function () {
    $('#newpost').validate({
      rules: {
        title: {
          required: true
        },
        email: {
          required: true
        },
        body: {
          required: true
        },
        // contact: {
        //   required: true,
        //   rangelength: [10, 12],
        //   number: true
        // },
        // password: {
        //   required: true,
        //   minlength: 8
        // },
        // confirmPassword: {
        //   required: true,
        //   equalTo: "#password"
        // }
      },
      messages: {
        title: 'Please enter Title.',
        email:   'Please Enter email',
        body:   'Please Enter Body',
        // contact: {
        //   required: 'Please enter Contact.',
        //   rangelength: 'Contact should be 10 digit number.'
        // },
        // password: {
        //   required: 'Please enter Password.',
        //   minlength: 'Password must be at least 8 characters long.',
        // },
        // confirmPassword: {
        //   required: 'Please enter Confirm Password.',
        //   equalTo: 'Confirm Password do not match with Password.',
        // }
      },
      submitHandler: function (form) {
        form.submit();
      }
    });
  });
  </script>
					@endsection
