@extends('Admin.Default')
@section('content')
<div id="page-wrapper">
			<div class="main-page">
<div class="forms">
	@include('Admin.message')
					<h2 class="title1">Update Blog</h2>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Update Blog</h4>
						</div>
						<div class="form-body">
							<form method="POST"  action="{{route('update_post',['id'=>$post->id])}}">
								 {{csrf_field()}}
								  @include('Admin.message')
								   <div class="form-group"> <label for="title">Title</label> <input type="text" name="title" class="form-control" value="{{$post->title}}" id="title" placeholder="Enter Title"> </div>

							 <div class="form-group"> 
							 <label for="title">Body</label> 

							 	<textarea class="form-control" id="body" name="body" rows="4" cols="50">{{$post->body}}</textarea>
							  </div>

							  
							 
							    <button type="submit" class="btn btn-success">Update</button>

							     </form> 
						</div>
					</div>
					
				</div>
				</div>
			</div>


					@endsection