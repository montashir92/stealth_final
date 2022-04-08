@extends('layouts.admin')
@section('title', 'Accessories')
@section('admin-content')
<main>
   <div class="container ">
    <div class="heading-title p-2 my-2">
        <span class="my-3 heading "><i class="fas fa-home"></i> <a class="" href="{{route('admin.index')}}">Home</a> >Accessories</span>
    </div>
    <div class="card mb-3">
        
        <div class="card-body table-card-body p-3 mytable-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <div class=""><i class="fas fa-image me-1"></i>Add Accessories</div>
                            </div>
                            <div class="card-body table-card-body">
                            <form action="{{ route('accessories.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3">
                                        <label><strong>Accessories Name:</strong></label>
                                    </div>
                                    <div class="col-md-9">
                                        <input type="text" name="name" placeholder="Accessories Name" class="form-control my-form-control @error('name') is-invalid @enderror">
                                          @error('name')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span> 
                                        @enderror 
                                    </div>
                                    <div class="col-md-3">
                                        <label><strong>Select Photo: </strong></label>
                                    </div>
                                    <div class="col-md-5 mt-1">
                                        <input name="image" type="file" class="form-control form-control-sm @error('image') is-invalid @enderror" id="image" type="file"  onchange="readURL(this);">
                                          @error('image')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span> 
                                          @enderror
                                      </div>
                                      <div class="col-md-3 mt-1">
                                        <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 100px;height: 80px; background: #3f4a49;">
                                      </div>
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <button type="submit" class="btn btn-sm btn-primary float-right mt-2" value="Submit">upload</button>
                                    </div>
                                </div>
                            </form>
                        </div>     
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="card"> 
                                 <div class="card-header">
                                     <div class="table-head"><i class="fas fa-table me-1"></i> Accessories List</div>
                                 </div>
                                 <div class="card-body table-card-body p-3">
                                     <table id="datatablesSimple">
                                         <thead class="text-center bg-light">
                                             <tr>
                                                 <th>SL</th>
                                                 <th>Name</th>
                                                 <th>photo</th>
                                                 <th>Action</th>
                                             </tr>
                                         </thead>
                                         <tbody>
                                             @foreach ($accessories as $key=> $accessory)
                                            <tr>
                                                <td>{{ $key +1 }}</td>
                                                <td>{{ $accessory->name }}</td>
                                                <td class="text-center"><img class="tbl-image" src="{{ asset($accessory->image) }}" alt="{{ $accessory->name }}"></td>
                                                <td class="text-center">
                                                    <a href="{{ route('accessories.edit', $accessory->id) }}" class="btn btn-edit"><i class="fas fa-pencil-alt"></i></a>
                                                    <button type="submit" class="btn btn-delete" onclick="deleteUser({{ $accessory->id }})"><i class="far fa-trash-alt"></i></button>
                                                        <form id="delete-form-{{ $accessory->id }}" action="{{ route('accessories.destroy', $accessory) }}"
                                                            method="POST" style="display: none;">
                                                            @csrf
                                                            @method('DELETE')
                                                        </form>
                                                </td>
                                            </tr>
                                            @endforeach
                                         </tbody>
                                     </table>
                                 </div>
                             </div>
                        </div>
                    </div>   
                </div>
           
        </div>
   </div> 
</div>
</main>        
@endsection
@push('admin-js')
<script src="{{ asset('admin/js/sweetalert2.all.js') }}"></script>
<script> 
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload=function(e) {
                $('#previewImage')
                    .attr('src', e.target.result)
                    .width(100)
                    .height(80);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    document.getElementById("previewImage").src="/noimage.png";
   
   
    function deleteUser(id) {
            swal({
                title: 'Are you sure?',
                text: "You want to Delete this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('delete-form-' + id).submit();
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === swal.DismissReason.cancel
                ) {
                    swal(
                        'Cancelled',
                        'Your data is safe :)',
                        'error'
                    )
                }
            })
        }
</script> 

@endpush