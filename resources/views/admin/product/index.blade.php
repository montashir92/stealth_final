@extends('layouts.admin')
@section('title', 'On Process')
@section('admin-content')
<main>
    <div class="container">
        <div class="heading-title p-2 my-2">
            <span class="my-3 heading "><i class="fas fa-home"></i> <a class="" href="{{route('admin.index')}}">Home</a> >Product List</span>
        </div>
        <div class="card">
            <div class="card-header">
                <div class="table-head text-left"><i class="fas fa-table me-1"></i>Product List <a href="" class="float-right"><i class="fas fa-print"></i></a></div>
               
            </div>
            <div class="card-body table-card-body p-3">
                <div class="tab-content" id="myTabContent">
                  <div class="tab-pane fade show active" id="pending" role="tabpanel" aria-labelledby="home-tab">
                       <table id="first_table">
                        <thead class="text-center bg-light">
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Code</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product as $key=> $item)
                                  <tr>
                                      <td class="text-center">{{ $key+1 }}</td>
                                      <td>{{ $item->name }}</td>
                                      <td class="text-center">{{ $item->code }}</td>
                                      <td class="text-right">{{ $item->price }}</td>
                                      <td class="text-right">{{ $item->discount }}</td>
                                      <td class="text-center"><img src="{{ asset('uploads/product/thumbnail/'.$item->thum_image) }}" class="tbl-image" alt=""></td>
                                     
                                      <td class="text-center">
                                        <a href="{{ route('product.edit', $item->slug) }}" class="btn btn-edit"><i class="fas fa-pencil-alt"></i></a>
                                        <button type="submit" class="btn btn-delete" onclick="deleteUser({{ $item->id }})"><i class="far fa-trash-alt"></i></button>
                                          <form id="delete-form-{{ $item->id }}" action="{{ route('product.destroy', $item) }}"
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
@endsection
@push('admin-js')
 
<script src="{{ asset('admin/js/sweetalert2.all.js') }}"></script>
<script> 
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