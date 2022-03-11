document.addEventListener('turbolinks:load', () => {

    //-------------------Postソート機能-------------------------
    const asc_button = document.getElementById('asc_button');
    const desc_button = document.getElementById('desc_button');

    const SortFuncAsc = () => {
        $.ajax({
            url: '/posts/index',
            type: 'GET',
            dataType: 'html',
            data: {
                sort_value: "release_asc" 
            }
         }).done(data => {
            $('.main_contents').html(data)
         })
    };


    const SortFuncDesc = () => {
        $.ajax({
           url: '/posts/index',
           type: 'GET',
           dataType: 'html',
           data: {
               sort_value: "release_desc" 
           }
        }).done(data => {
           $('.main_contents').html(data)
        })
     };

    asc_button.addEventListener('click', SortFuncAsc);
    desc_button.addEventListener('click', SortFuncDesc); 
})





