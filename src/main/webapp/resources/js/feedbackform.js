$(function () {
    $('#btnSubmit').click(function (e) {       
        var comment = $('#comment').val();

        function logResults(json) {
            console.log(json);
        }
               
        $.ajax({
            url: 'https://twinword-sentiment-analysis.p.mashape.com/analyze/?text='+comment,
            type: 'GET',
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                alert('success!'+data.type+' '+data.score);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(  ' jqXHR '+jqXHR + 
                        '\n textStatus ' + textStatus + 
                        '\n errorThrown ' + errorThrown);
                },
            beforeSend: function(jqXHR) {
            jqXHR.setRequestHeader("X-Mashape-Key", 
            "jFqUaR64DhmshWd6Iq5JTrzgaGXyp1uzOx4jsnX5OJXZBMiH8H"); // Enter here your Mashape key
                    }
        });
        return false;
       //e.preventDefault();
     });
});