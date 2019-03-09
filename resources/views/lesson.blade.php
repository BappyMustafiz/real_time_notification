@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Read Lesson</div>
					<div class="card-body">
						<ul class="item-group">
							@foreach($lesson as $l)
								<li class="list-group-item">
									<h2>{{$l->title}}</h2>
									<hr>
									{{$l->body}}
								</li>
							@endforeach
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection