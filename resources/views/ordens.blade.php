<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'><strong><i class="fa fa-cc-mastercard text-normal"></i> Añadir Transacciones</strong>
        </div>
        <div class='panel-body'>
            <form method='post' action='{{CRUDBooster::mainpath('add-save')}}'>
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <div class="box-body">
                    <div class='form-group'>
                        <label class="control-label col-sm-2">
                            Usuario<span class="text-danger" text="This field is required">*</span>
                        </label>
                        <div class="col-sm-10">
                            <input type='text' name='user_id' required class='form-control'/>
                            <div class="text-danger"></div>
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class='form-group '>
                        <label class="control-label col-sm-2">
                            Cliente<span class="text-danger" text="This field is required">*</span>
                        </label>
                        <div class="control-label col-sm-10">
                            <input type='text' name='cliente_id' required class='form-control'/>
                            <div class="text-danger"></div>
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class='form-group'>
                        <label class="control-label col-sm-2">
                            Tarjetas<span class="text-danger" text="This field is required">*</span>
                        </label>
                        <div class="col-sm-10">
                            <input type='text' name='tarjeta_id' required class='form-control'/>
                            <div class="text-danger"></div>
                            <p class="help-block"></p>
                        </div>
                    </div>

                        <div class='form-group header-group-0'>
                            <label class="control-label col-sm-2">
                                Total<span class="text-danger" text="This field is required">*</span>
                            </label>
                            <div class="col-sm-10">
                                <input type='text' name='total' required class='form-control'/>
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>


                </div>
                <!-- etc .... -->
                <div class='panel-footer'>
                    <input type='submit' class='btn btn-success' value='Save changes'/>
                </div>
            </form>
        </div>

    </div>
@endsection