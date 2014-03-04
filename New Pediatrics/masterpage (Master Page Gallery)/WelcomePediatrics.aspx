<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.SharePoint.FieldEditor" Assembly="RadEditorSharePoint, Version=5.6.0.0, culture=neutral, PublicKeyToken=1f131a624888eeed" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">

	<PublishingWebControls:editmodepanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:cssregistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/zz2_EditMode.css %>" runat="server"/>
	</PublishingWebControls:editmodepanel><!-- End editmodestyles -->

	<!-- if JS is enabled remove nojavascript classes -->
	<script type="text/javascript">
			$(function(){
				$('#feature-links, #tabs > ul, #tabs > #tabs-1, #tabs > #tabs-2, #tabs > #tabs-3').removeClass('noShow');
				$('#tabs, #tabs-1').removeClass('nojavascript');
				
				$('.ECal td').wrapInner('<div class="ECalWrap" />');			
			});
		</script>
	
	<script type="text/javascript" src="/Style Library/JavaScript/fade_image_gallery.js"></script>

	<!-- JQuery Tabs -->
	<script type="text/javascript" src="/Style Library/JavaScript/jquery-ui-1.8.11.custom.min.js"></script>	
	<script type="text/javascript">
			$(function(){
				// Tabs
				$('#tabs').tabs();
				
				//hover states on the static widgets
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
			});
		</script>
	
	<!-- YouTube Feed -->
	<script type="text/javascript" src="https://assets.ucsd.edu/js/jquery.jgfeed-min.js"></script>
	<script type="text/javascript" src="https://assets.ucsd.edu/js/jyoutube.min.js"></script>
	<script type="text/javascript" charset="utf-8">
            $(document).ready(function() {            
                $.jGFeed('https://gdata.youtube.com/feeds/api/playlists/PLPTeRjsI0gMY-0Q_Vmw57-bGrYBZaqDej?v=2',
                function(feeds){
                    // Check for errors
                    if(!feeds){
                        // there was an error
                        return false;
                    }

                    var html = '';

                    // do whatever you want with feeds here
                    for(var i=0; i<feeds.entries.length; i++){
                        var entry = feeds.entries[i];
                    	html += '<div class="youTubeThumbContainer">' + '<a href="' + entry.link + '" title="' + entry.title + '" target="_blank"><img src="' + $.jYoutube(entry.link, 'small') + '" alt="' + entry.title + '" class="youTubeThumb"></a>' + '<p>' + '<a href="' + entry.link + '" title="' + entry.title + '" target="_blank">' + entry.title + '</a>' + '</p>' + '</div>';
                    }

                    $('#you_tube_feed').html(html);
                }, 30);
            });
        </script>
	
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="SEO_x0020_Browser_x0020_Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/WelcomePediatrics.css %>" runat="server"/>

	<div id="divisionHomeTop">
		<div id="features">

			<div style="display: block;" id="feature-1" class="feature-story active">
				<div id="slide-1" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...providing the highest quality clinical care today and tomorrow.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-2" class="feature-story">
				<div id="slide-2" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...providing the highest quality clinical care today and tomorrow.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-3" class="feature-story">
				<div id="slide-3" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...conducting cutting-edge biomedical research targeting diseases that impact infants, children and adolescents.</p>
					</div>
				</div>
			</div>

			<div style="display: none;" id="feature-4" class="feature-story">
				<div id="slide-4" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...conducting cutting-edge biomedical research targeting diseases that impact infants, children and adolescents.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-5" class="feature-story">
				<div id="slide-5" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...training the next generation of pediatricians by enhancing medical, residency and fellowship education.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-6" class="feature-story">
				<div id="slide-6" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...training the next generation of pediatricians by enhancing medical, residency and fellowship education.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-7" class="feature-story">
				<div id="slide-7" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...developing the Department of Pediatrics into a world class academic Department.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-8" class="feature-story">
				<div id="slide-8" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...developing the Department of Pediatrics into a world class academic Department.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-9" class="feature-story">
				<div id="slide-9" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...advocating for children in our daily endeavors.</p>
					</div>
				</div>
			</div>
			
			<div style="display: none;" id="feature-10" class="feature-story">
				<div id="slide-10" class="slide">
					<div class="message-back">
						<h1>We Dedicate Ourselves To:</h1>
						<p>...advocating for children in our daily endeavors.</p>
					</div>
				</div>
			</div>
						
		</div>
	</div><!-- End #divisionHomeTop -->

			<div class="clr"></div>

	<div id="divisionHomeBottom">
		
		<div id="homeColumnLeft">
			<h1><span>
			<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Left" runat="server"></SharePoint:TextField>
			</span></h1>
			<div class="lineBreak"></div>
			<WebPartPages:WebPartZone id="WebPartZone2" runat="server" title="Web Part Zone" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;WebPartZone2&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Web Part Zone&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;&lt;tr&gt;
		&lt;td style=&quot;height:100%;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;border-color:Gray;border-width:1px;border-style:Solid;width:100%;height:100%;&quot;&gt;
			&lt;tr valign=&quot;top&quot;&gt;
				&lt;td _designerRegion=&quot;0&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
					&lt;tr&gt;
						&lt;td style=&quot;height:100%;&quot;&gt;&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='WebPartZone2' /&gt;&lt;P N='Title' ID='2' T='Web Part Zone' /&gt;&lt;P N='HeaderText' R='2' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
		</div><!-- End #homeColumnLeft -->

		<div id="homeColumnRight">
		
			<h1><span>
			<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Right" runat="server"></SharePoint:TextField>
			</span></h1>
			<div class="lineBreak"></div>
			<div id="tabs" class="nojavascript">
				<ul class="noShow">
    				<li><a href="#tabs-1">News</a> </li>
    				<li><a href="#tabs-2">Videos</a> </li>
    				<li><a href="#tabs-3">Rady Children's News</a> </li>
				</ul>
				<div id="tabs-1" class="nojavascript">
					<div class="tabContainer">
						<telerik:RadHtmlField AllowSpecialTags="True" id="LeftCol" FieldName="Column_x0020_Text_x0020_Left" runat="server" DisplayWidth="280px" DisplayHeight="200px"></telerik:RadHtmlField>
					</div>
				</div>
				<div id="tabs-2" class="noShow">
					<div id="you_tube_feed"></div>
				</div>
				<div id="tabs-3" class="noShow">
					<div class="tabContainer">
						<telerik:RadHtmlField AllowSpecialTags="True" id="CenterCol" FieldName="Column_x0020_Content_x0020_Center" runat="server" DisplayWidth="280px" DisplayHeight="200px"></telerik:RadHtmlField>							
					</div>
				</div>
			</div>	
			
			<div id="columnRightBottom">
				<h1><span>
					<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Center" runat="server"></SharePoint:TextField>
				</span></h1>
				<div class="lineBreak"></div>
				<WebPartPages:WebPartZone id="WebPartZone" runat="server" title="Web Part Zone" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;WebPartZone&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Web Part Zone&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;&lt;tr&gt;
		&lt;td style=&quot;height:100%;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;border-color:Gray;border-width:1px;border-style:Solid;width:100%;height:100%;&quot;&gt;
			&lt;tr valign=&quot;top&quot;&gt;
				&lt;td _designerRegion=&quot;0&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
					&lt;tr&gt;
						&lt;td style=&quot;height:100%;&quot;&gt;&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='WebPartZone' /&gt;&lt;P N='Title' ID='2' T='Web Part Zone' /&gt;&lt;P N='HeaderText' R='2' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>

				<h1><span>
					<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Right_x0020_Two" runat="server"></SharePoint:TextField>
				</span></h1>
				<div class="lineBreak"></div>
				<telerik:RadHtmlField AllowSpecialTags="True" id="RightCol" FieldName="Column_x0020_Text_x0020_Right" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
			</div><!-- End #columnRightBottom -->
		</div><!-- End #homeColumnCenter -->
			
		<div class="clr"></div>
				
		<PublishingWebControls:editmodepanel runat="server" id="SEOeditmodepanel">
			<!-- Add field controls here to bind custom metadata viewable and editable in edit mode only.-->
		
			<div class="clr"></div>
			
			<table bgcolor="#EDEDED" cellpadding="0" cellspacing="0" align="left" style="font-size:11px; padding-top:40px; width:919px;">
							<tr>
											<td class="seoPanelTitle">SEO 
											
											
											
											
											
											Editing Panel</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<p style="padding:5px 10px;">&quot;Title&quot; 
											
											
											
											
											
											appears on the global and left 
											
											
											
											
											
											navigation</p>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<SharePoint:TextField runat="server" id="TitleFieldEdit" FieldName="Title" DisplaySize="140" />
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<p style="padding:5px 10px;">&quot;SEO 
											
											
											
											
											
											Browser Title&quot; appears in the 
											
											
											
											
											
											browser title bar and the HTML TITLE 
											
											
											
											
											
											tag</p>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<SharePoint:TextField id="SEOBrowserTitleField" FieldName="SEO_x0020_Browser_x0020_Title" runat="server" DisplaySize="140">
											</SharePoint:TextField>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<p style="padding:5px 10px;">&quot;Meta 
											
											
											
											
											
											Description&quot; appears in the HTML 
											
											
											
											
											
											META DESCRIPTION tag and usually in 
											
											
											
											
											
											the first few lines of search engine 
											
											
											
											
											
											results</p>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<SharePoint:NoteField FieldName="Meta_x0020_Description" runat="server" id="NoteField1">
											</SharePoint:NoteField>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<p style="padding:5px 10px;">&quot;Meta 
											
											
											
											
											
											Keywords&quot; appears in the HTML META 
											
											
											
											
											
											KEYWORDS tag</p>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<SharePoint:TextField FieldName="Meta_x0020_Keywords" runat="server" DisplaySize="140">
											</SharePoint:TextField>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<p style="padding:5px 10px;">&quot;Meta 
											
											
											
											
											
											Robots&quot; appears in the HTML META 
											
											
											
											
											
											ROBOTS tag and tells search 
											
											
											
											
											
											
						engines whether to index the content on this page 
											
											
											
											
											
											(index, noindex) and whether to 
											
											
											
											
											
											follow links on this page (follow, 
											
											
											
											
											
											nofollow).</p>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>
											<SharePoint:DropDownChoiceField FieldName="Meta_x0020_Robots" runat="server">
											</SharePoint:DropDownChoiceField>
											</td>
							</tr>
							<tr bgcolor="#EDEDED">
											<td>&nbsp;<br />
											&nbsp;<br />
											&nbsp;</td>
							</tr>
			</table>
		</PublishingWebControls:editmodepanel><!-- End SEOeditmodepanel -->
	</div><!-- End #divisionHomeBottom -->
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderTitleBreadcrumb" runat="server"/>
<asp:Content ContentPlaceholderID="PlaceHolderLeftNavBar" runat="server"/>







