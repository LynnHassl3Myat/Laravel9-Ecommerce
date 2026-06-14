cat > resources/views/admin/message/show.blade.php << 'EOF'
@extends('layouts.adminbase')
@section('title', 'Message Detail')
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Message Detail</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('admin.index')}}">Home</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.message.index')}}">Messages</a></li>
                            <li class="breadcrumb-item active">Detail</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Message from {{$data->name}}</h3>
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    <table class="table table-bordered">
                        <tr><th style="width:200px">Name</th><td>{{$data->name}}</td></tr>
                        <tr><th>Email</th><td>{{$data->email}}</td></tr>
                        <tr><th>Phone</th><td>{{$data->phone}}</td></tr>
                        <tr><th>Subject</th><td>{{$data->subject}}</td></tr>
                        <tr><th>Message</th><td>{{$data->message}}</td></tr>
                        <tr><th>Note</th><td>{{$data->note}}</td></tr>
                        <tr><th>IP</th><td>{{$data->ip}}</td></tr>
                        <tr><th>Status</th><td>{{$data->status}}</td></tr>
                        <tr><th>Date</th><td>{{$data->created_at}}</td></tr>
                    </table>
                    <form action="{{route('admin.message.update', $data->id)}}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label>Note</label>
                            <input type="text" name="note" value="{{$data->note}}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <select name="status" class="form-control">
                                <option value="New" {{$data->status == 'New' ? 'selected' : ''}}>New</option>
                                <option value="Read" {{$data->status == 'Read' ? 'selected' : ''}}>Read</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success">Update</button>
                        <a href="{{route('admin.message.index')}}" class="btn btn-default">Back</a>
                    </form>
                </div>
            </div>
        </section>
    </div>
@endsection
EOF