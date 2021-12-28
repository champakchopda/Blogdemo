@extends('Admin.Default')
@section('style')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
@endsection
@section('content')
<div id="page-wrapper">
			<div class="main-page">
<div class="forms">
	@include('Admin.message')
<table id="viewpost" class="table display table-bordered">
	
	<thead>
		<tr>
			
			<th>Sr No</th>
			<th>Title</th>
			<th>Body</th>
			<th>Action</th>
		</tr>
	</thead>

</table>
</div>
</div>
</div>
@endsection
@section('script')




    				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				
    				    <script src="{{asset('public/Admin/js/confirm.js')}}" type="text/javascript"></script>

					<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

					
				<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

					<script> 
   $(document).ready(function(){
           $('#viewpost').DataTable({
               productocessing: true,
               serverSide: true,
               ajax: '{!! route('listposting') !!}',
               columns: [
                  { data: 'DT_RowIndex', name: 'DT_Row_Index' , orderable: false, searchable: false}, 
                   { data: 'title', name: 'title' },
                   { data: 'body', name: 'body' },
                   {data: 'action', name: 'action', orderable: false, searchable: false}
               ]
           });
          
       });
         
       
</script>


						@endsection
					