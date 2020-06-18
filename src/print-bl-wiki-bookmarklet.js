//
// print-bl-wiki-bookmarklet
//
// This works on URL including '.backlog.' with removing unnecessary elements
// to make Wiki page suitable for print function of browsers.
// You can get more colorful, proper print than built-in one.
// 
if (location.href.match(/\.backlog\./)) {
    document.querySelectorAll('.content-main>*').forEach(function(e) {
        if (e.id == 'wikicard') {
            e.querySelectorAll('.file-attach').forEach(function(f) {
                f.style = 'display:none'
            })
        } else {
            e.style = 'display:none'
        }
    });
    window.print();
    location.reload()
}
