$sysvars = get-variable | select -Expand name

  function remove-uservars {
     get-variable |
       where {$sysvars -notcontains $_.name} |
         remove-variable $sysvars
    }