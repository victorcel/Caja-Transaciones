<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;


class AdminOrdersController extends \crocodicstudio\crudbooster\controllers\CBController
{

    public function cbInit()
    {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "orders";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
        $this->col = [];
        $this->col[] = ["label" => "User", "name" => "user_id", "join" => "cms_users,name"];
        $this->col[] = ["label" => "Cliente", "name" => "cliente_id", "join" => "clientes,username"];
        $this->col[] = ["label" => "tipo", "name" => "(SELECT franquicia.tarjeta FROM tarjetas JOIN franquicia ON franquicia.id = tarjetas.franquicia_id JOIN orders ord on ord.tarjeta_id= tarjetas.id where ord.id =orders.id) as tipo"];
        $this->col[] = ["label" => "Tarjeta", "name" => "tarjeta_id", "join" => "tarjetas,numero_tarj"];
        $this->col[] = ["label" => "Total", "name" => "total"];
        $this->col[] = ["label" => "Fecha", "name" => "created_at"];
        # END COLUMNS DO NOT REMOVE THIS LINE

        # START FORM DO NOT REMOVE THIS LINE
        $this->form = [];
        $this->form[] = ['label' => 'User', 'name' => 'user_id', 'type' => 'hidden', 'value' => CRUDBooster::myId(), 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'Cliente', 'name' => 'cliente_id', 'type' => 'datamodal', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datamodal_table' => 'clientes', 'datamodal_columns' => 'first_name,last_name,username', 'datamodal_select_to' => 'id:cliente_id'];
        $this->form[] = ['label' => 'Tarjeta', 'name' => 'tarjeta_id', 'type' => 'select', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'tarjetas,numero_tarj', 'parent_select' => 'cliente_id'];
        $this->form[] = ['label' => 'Total', 'name' => 'total', 'type' => 'number', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10'];
        # END FORM DO NOT REMOVE THIS LINE

        # OLD START FORM
        //$this->form = [];
        //$this->form[] = ['label'=>'User','name'=>'user_id','type'=>'hidden','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Cliente','name'=>'cliente_id','type'=>'datamodal','validation'=>'required|integer|min:0','width'=>'col-sm-10','datamodal_table'=>'clientes','datamodal_columns'=>'first_name,last_name,username'];
        //$this->form[] = ['label'=>'Tarjeta','name'=>'tarjeta_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tarjetas,numero_tarj','parent_select'=>'cliente_id'];
        //$this->form[] = ['label'=>'Total','name'=>'total','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
        # OLD END FORM

        $this->button_addmore = false;
        //Alert::warning('this is warning alert');


        // Alert::message('---Robots are working!');

        //$this->button_save = false;
        /*
        | ----------------------------------------------------------------------
        | Sub Module
        | ----------------------------------------------------------------------
        | @label          = Label of action
        | @path           = Path of sub module
        | @foreign_key 	  = foreign key of sub table/module
        | @button_color   = Bootstrap Class (primary,success,warning,danger)
        | @button_icon    = Font Awesome Class
        | @parent_columns = Sparate with comma, e.g : name,created_at
        |
        */
        $this->sub_module = array();


        /*
        | ----------------------------------------------------------------------
        | Add More Action Button / Menu
        | ----------------------------------------------------------------------
        | @label       = Label of action
        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
        | @icon        = Font awesome class icon. e.g : fa fa-bars
        | @color 	   = Default is primary. (primary, warning, succecss, info)
        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
        |
        */
        $this->addaction = array();


        /*
        | ----------------------------------------------------------------------
        | Add More Button Selected
        | ----------------------------------------------------------------------
        | @label       = Label of action
        | @icon 	   = Icon from fontawesome
        | @name 	   = Name of button
        | Then about the action, you should code at actionButtonSelected method
        |
        */
        $this->button_selected = array();


        /*
        | ----------------------------------------------------------------------
        | Add alert message to this module at overheader
        | ----------------------------------------------------------------------
        | @message = Text of message
        | @type    = warning,success,danger,info
        |
        */
        $this->alert = array();
        // $this->alert[] = ['message' => 'Your message goes here...', 'type' => 'info'];


        /*
        | ----------------------------------------------------------------------
        | Add more button to header button
        | ----------------------------------------------------------------------
        | @label = Name of button
        | @url   = URL Target
        | @icon  = Icon from Awesome.
        |
        */
        $this->index_button = array();
        $this->index_button[] = ['label' => 'Crear Tarjeta', 'url' => CRUDBooster::adminPath('tarjetas/add'), "icon" => "fa fa-credit-card"];
        $this->index_button[] = ['label' => 'Crear Usuario', 'url' => CRUDBooster::adminPath('clientes/add'), "icon" => "fa fa-users"];


        /*
        | ----------------------------------------------------------------------
        | Customize Table Row Color
        | ----------------------------------------------------------------------
        | @condition = If condition. You may use field alias. E.g : [id] == 1
        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
        |
        */
        $this->table_row_color = array();


        /*
        | ----------------------------------------------------------------------
        | You may use this bellow array to add statistic at dashboard
        | ----------------------------------------------------------------------
        | @label, @count, @icon, @color
        |
        */
        $this->index_statistic = array();


        /*
        | ----------------------------------------------------------------------
        | Add javascript at body
        | ----------------------------------------------------------------------
        | javascript code in the variable
        | $this->script_js = "function() { ... }";
        |
        */
        $this->script_js = NULL;
        /* $this->script_js = "    $(function() {
         swal('Test Script');
         })";*/


        /*
        | ----------------------------------------------------------------------
        | Include HTML Code before index table
        | ----------------------------------------------------------------------
        | html code to display it before index table
        | $this->pre_index_html = "<p>test</p>";
        |
        */
        $this->pre_index_html = null;


        /*
        | ----------------------------------------------------------------------
        | Include HTML Code after index table
        | ----------------------------------------------------------------------
        | html code to display it after index table
        | $this->post_index_html = "<p>test</p>";
        |
        */
        $this->post_index_html = null;


        /*
        | ----------------------------------------------------------------------
        | Include Javascript File
        | ----------------------------------------------------------------------
        | URL of your javascript each array
        | $this->load_js[] = asset("myfile.js");
        |
        */
        $this->load_js = array();
        $this->load_js[] = asset("sweetalert.min.js");


        /*
        | ----------------------------------------------------------------------
        | Add css style at body
        | ----------------------------------------------------------------------
        | css code in the variable
        | $this->style_css = ".style{....}";
        |
        */
        $this->style_css = NULL;


        /*
        | ----------------------------------------------------------------------
        | Include css File
        | ----------------------------------------------------------------------
        | URL of your css each array
        | $this->load_css[] = asset("myfile.css");
        |
        */
        $this->load_css = array();


    }


    /*
    | ----------------------------------------------------------------------
    | Hook for button selected
    | ----------------------------------------------------------------------
    | @id_selected = the id selected
    | @button_name = the name of button
    |
    */
    public function actionButtonSelected($id_selected, $button_name)
    {
        //Your code here

    }


    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate query of index result
    | ----------------------------------------------------------------------
    | @query = current sql query
    |
    */
    public function hook_query_index(&$query)
    {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate row of index table html
    | ----------------------------------------------------------------------
    |
    */
    public function hook_row_index($column_index, &$column_value)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before add data is execute
    | ----------------------------------------------------------------------
    | @arr
    |
    */
    public function hook_before_add(&$postdata)
    {

        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after add public static function called
    | ----------------------------------------------3------------------------
    | @id = last insert id
    |
    */
    public function hook_after_add($id)
    {
        //dd($id);
        $carbon = new \Carbon\Carbon();
        $date = $carbon->now('America/Bogota');
        $date = $date->format('m');
        //dd($date);
        $cliente = DB::table(orders)->where('id', $id)->get();
        //  dd($cliente[0]->cliente_id);
        $datos = DB::table(orders)->join('clientes', 'orders.cliente_id', '=', 'clientes.id')->where('cliente_id', $cliente[0]->cliente_id)->whereMonth('orders.created_at', $date)->select('clientes.*', DB::raw('SUM(orders.total) as total'))->groupBy('clientes.id')->get();//sum('total');
        //  dd($datos[0]->total);
        if ($datos[0]->total >= "5000000") {
            //dd($datos[0]->total);
            $config['content'] = "El cliente " . $datos[0]->username . " " . $datos[0]->first_name . " " . $datos[0]->last_name . ", Supera el monto minimo de trasnsaciones mensuales son: " . $datos[0]->total;
            $config['to'] = CRUDBooster::adminPath('notifications');
            $config['id_cms_users'] = [CRUDBooster::myId()]; //This is an array of id users
            CRUDBooster::sendNotification($config);
        }


    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before update data is execute
    | ----------------------------------------------------------------------
    | @postdata = input post data
    | @id       = current id
    |
    */
    public function hook_before_edit(&$postdata, $id)
    {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after edit public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_edit($id)
    {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command before delete public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_before_delete($id)
    {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after delete public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_delete($id)
    {
        //Your code here

    }
    /* public function getAdd() {
         //Create an Auth
         if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {
             CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
         }

         $data = [];
         $data['page_title'] = 'Añadir Transacciones';
         $this->data['return_url'] = 'erw';

         //Please use cbView method instead view method from laravel
         $this->cbView('ordens',$data);
     }*/

    //By the way, you can still create your own method in here... :)


}