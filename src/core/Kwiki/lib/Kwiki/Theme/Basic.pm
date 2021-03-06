package Kwiki::Theme::Basic;
use Kwiki::Theme -Base;

const theme_id => 'basic';
const class_title => 'Basic Theme';

__DATA__

__theme/basic/template/tt2/theme_screen.html__

[%- INCLUDE theme_html_doctype.html %]
[% INCLUDE theme_html_begin.html %]
<table id="group"><tr>
<td id="group_1">
<div class="navigation">
[% INCLUDE theme_title_pane.html %]
[% INCLUDE theme_toolbar_pane.html %]
[% INCLUDE theme_status_pane.html %]
</div>

<hr />
[% INCLUDE theme_content_pane.html %]
<hr />
</td>

<td id="group_2">
<div class="navigation">
[% INCLUDE theme_logo_pane.html %]
<br/>
[% INCLUDE theme_widgets_pane.html %]
</div>

</td>
</tr></table>
[% INCLUDE theme_html_end.html -%]

__theme/basic/css/kwiki.css__
#logo_pane {
    text-align: center;
}
    
#logo_pane img {
    width: 90px;
}
    
#group {
    width: 100%;
}

#group_1 {
    vertical-align: top;
}

#group_2 {
    vertical-align: top;
    width: 125px;
}

body {
    background:#fff;        
}

h1, h2, h3, h4, h5, h6 {
    margin: 0px;
    padding: 0px;
    font-weight: bold;
}

.error, .empty {
    color: #f00;
}

div.navigation a:visited {
    color: #00f;
}
