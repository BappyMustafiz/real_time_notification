@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Read Lesson</div>
					<div class="card-body">
						<ul class="item-group">
							@foreach($lessons as $lesson)
								<li class="list-group-item">
									<h2>{{$lesson->data['lesson']['title']}}</h2>
									<hr>
									{{$lesson->data['lesson']['body']}}
								</li>
							@endforeach
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection