$().ready(function () {
    $('.modal.printable').on('shown.bs.modal', function () {
        $('.modal-dialog', this).addClass('focused');
        $('body').addClass('modalprinter');

        if ($(this).hasClass('autoprint')) {
            window.print();
        }
    }).on('hidden.bs.modal', function () {
        $('.modal-dialog', this).removeClass('focused');
        $('body').removeClass('modalprinter');
    });
});

function PrintContent() {

    var DocumentContainer = document.getElementById('#modal-body');
    var WindowObject = window.open("", "PrintWindow",
    "width=260px,height=526px,top=50,left=50,toolbars=no,scrollbars=yes,status=no,resizable=yes");
    WindowObject.document.write();
    WindowObject.document.write('<link rel="stylesheet" type="text/css" href="~/css/main.css">')
    WindowObject.document.writeln(DocumentContainer.innerHTML);
    WindowObject.document.close();
    WindowObject.focus();
    WindowObject.print();
    WindowObject.close();
}

function PrintDiv() {
    var divContents = document.getElementById("mydiv").innerHTML;
    var printWindow = window.open('', '', 'height=500,width=800');
    printWindow.document.write(divContents);
    printWindow.document.close();
    printWindow.print();
}