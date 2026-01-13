$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false);

    window.addEventListener("message", function (event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true);
            } else {
                display(false);
            }
        }
    });

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post("https://bzzz_prop_placer/exit", JSON.stringify({}));
            return;
        }
    };
    $("#close").click(function () {
        $.post("https://bzzz_prop_placer/exit", JSON.stringify({}));
        return;
    });
    $("#submit").click(function () {
        let inputValue = $("#input").val();
        let inputValue2 = $("#input2").val();
        $.post(
            "https://bzzz_prop_placer/submit",
            JSON.stringify({
                text: inputValue,
                id: inputValue2,
            })
        );
        return;
    });
});
