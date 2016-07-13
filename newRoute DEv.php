Route::get('/r', function ()
{
    function philsroutes()
    {
        $i=0;
        $routeCollection = Route::getRoutes();
        echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">';
        echo '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-toggle/2.2.2/css/bootstrap-toggle.css">';
        echo '<link rel="stylesheet" href="/assets/js/table/bootstrap-table.css">';
        echo '<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>';
        echo '<script src="/assets/js/toggletable.js"></script>';
        echo "<div class='container'><div class='col-md-12'>";
echo '<div>';
echo '    <label><input id="hover" type="checkbox" checked=""> hover</label>';
echo '    <label><input id="striped" type="checkbox"> striped</label>';
echo '    <label><input id="condensed" type="checkbox"> condensed</label>';
echo '</div>';
        echo "<table id='table' data-toggle='table' class='table table-striped table-condensed table-responsive' style='border-collapse:collapse;width:100%'>";
        echo '<tr>';
        echo '<td> </td>';
            echo "<td width='10%'><h4>HTTP Method</h4></td>";
            echo "<td width='30%'><h4>URL</h4></td>";
            echo "<td width='30%'><h4>Route Name</h4></td>";
            echo "<td width='30%'><h4>Corresponding Action</h4></td>";
        echo '</tr>';

            // echo '<tr>';
            //     echo '<td>';
            //     echo '</td>';
            // echo '</tr>';
        foreach ($routeCollection as $value)
        {
            $number = $i++;
            $secretrow = "secretrow";

            echo '<tr data-toggle="collapse" data-target="#'.$secretrow.$number.'" class="accordion-toggle">';
            echo '<td><button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-eye-open"></span></button></td>';
                echo '<td>' . $value->getMethods()[0] . '</td>';
                echo "<td><a href='" . $value->getPath() . "' target='_blank'>" . $value->getPath() . '</a> </td>';
                echo '<td>' . $value->getName() . '</td>';
                echo '<td>' . $value->getActionName() . '</td>';
            echo '</tr>';

echo '<tr>';
echo '<td colspan="12" class="hiddenRow">';
echo '<div class="accordian-body collapse" id="'.$secretrow.$number.'">';
echo '<table class="table table-striped table-responsive">';
    echo '<thead>';
        echo '<tr>';

            echo '<td><a href="' . $value->getPath() . '"><strong>Visit This Link</strong></a></td>';

        echo '</tr>';
        echo '<tr>';
            echo '<th>Copy Url</th>';

        echo '</tr>';
    echo '</thead>';
echo '<tbody>';
echo '<tr>';
    echo '<td align="left"><pre style="font-family: Inconsolata;font-size: 1.25em;">{!! url(\'' . $value->getPath() . '\') !!}</pre></td>';
echo '</tr>';

echo '<tr>';
    echo '<td><strong>Copy Form Url</strong></td>';
echo '</tr>';


echo '<tr>';
    echo '<td align="left"><pre style="font-family:Inconsolata;font-size: 1em;">{!! Form::open([\'url\' => \'' . $value->getPath() . '\', \'method\' => \'post\', \'files\' => true]) !!}</pre></td>';
echo '</tr>';






echo '<tr>';
    echo '<td align="left"><strong>Copy Url Route</strong> </td>';
echo '</tr>';
echo '<tr>';
    echo '<td align="left"><pre style="font-family: Inconsolata;font-size: 1.25em;">{!! route(\'' . $value->getName() . '\') !!}</pre></td>';
echo '</tr>';

echo '<tr>';
    echo '<td align="left"><strong>Copy Form:: Route</strong> </td>';
echo '</tr>';
echo '<tr>';
    echo '<td align="left"><pre style="font-family:Inconsolata;font-size: 1em;">{!! Form::open([\'route\' => \''. $value->getName() .'\', \'method\' => \'post\', \'files\' => true]) !!}</pre></td>';
echo '</tr>';



echo '<tr>';
    echo '<td align="left"><strong>Copy Url Action</strong> </td>';

echo '</tr>';
echo '<tr>';
    echo '<td align="left"><pre style="font-family:Inconsolata;font-size: 1.25em;">{!! action(\'' . $value->getActionName() . '\']) !!}</pre></td>';
 echo '</tr>';


echo '<tr>';
    echo '<td align="left"><strong>Copy Form:: Action</strong>   '.$value->getActionName().'</td>';
echo '</tr>';
echo '<tr>';
    echo '<td align="left"><pre style="font-family:Inconsolata;font-size: 1em;"> {!! Form::open([\'action\' => \'' . $value->getActionName() . '\', \'method\' => \'post\', \'files\' => true]) !!}</pre></td>';
echo '</tr>';






echo '</tbody>';
echo '</table>';
echo '</div>';
echo '</td>';
echo '</tr>';
        }
        echo '</table></div></div>';
        echo '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>';
            echo '<script src="/assets/js/table/bootstrap-table.js"></script>';

echo "<script>$('#table').bootstrapTable();</script>";




    }
    return philsroutes();
});