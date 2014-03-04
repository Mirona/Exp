<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.SharePoint.FieldEditor" Assembly="RadEditorSharePoint, Version=5.6.0.0, culture=neutral, PublicKeyToken=1f131a624888eeed" %>
<%@ Register tagprefix="WebPartPages" namespace="Microsoft.SharePoint.WebPartPages" assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	
	<PublishingWebControls:editmodepanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePoint:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/zz2_EditMode.css %>" runat="server" />
	</PublishingWebControls:editmodepanel><!-- End editmodestyles -->

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderBodyAreaClass" >

	<!--	This section overrides the standard styles for this page	-->
		
	<SharePoint:CssLink ID="CssLink_TwoColumnLayout" runat="server" DefaultUrl="/Style Library/WelcomeLab.css"/>

</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="SEO_x0020_Browser_x0020_Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	

		<WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager">
		</WebPartPages:SPProxyWebPartManager>

		<div class="centerColumn left">
			
			<PublishingWebControls:EditModePanel runat="server" PageDisplayMode="Edit" SuppressTag="true">
				<SharePoint:TextField runat="server" id="HeadlineTitleField" FieldName="Headline" />
			</PublishingWebControls:EditModePanel>
			<PublishingWebControls:EditModePanel runat="server" PageDisplayMode="Display" SuppressTag="true">
				<h1>
				<SharePoint:FieldValue runat="server" FieldName="Headline" />
				</h1>
			</PublishingWebControls:EditModePanel>
			
			<div id="labHomeTop">
				<div id="labWebPartTop">
					<WebPartPages:WebPartZone id="TwoColWebPartZone" runat="server" title="Zone1" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;TwoColWebPartZone&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Zone1&lt;/td&gt;
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
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='TwoColWebPartZone' /&gt;&lt;P N='Title' ID='2' T='Zone1' /&gt;&lt;P N='HeaderText' R='2' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
				</div>
			</div>
			
			<div id="labHomeBottom">
				<div id="homeColumnLeft">
					<h2><span>
					<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Left" runat="server"></SharePoint:TextField>
					</span></h2>
					<telerik:RadHtmlField id="LeftCol" FieldName="Column_x0020_Text_x0020_Left" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
				</div>
				<div id="homeColumnRight">
					<h2><span>
					<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Right" runat="server"></SharePoint:TextField>
					</span></h2>
					<telerik:RadHtmlField id="RightCol" FieldName="Column_x0020_Text_x0020_Right" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
				</div>
			</div>
		
		
		<PublishingWebControls:editmodepanel runat="server" id="SEOeditmodepanel">
		<!-- Add field controls here to bind custom metadata viewable and editable in edit mode only.-->
		
		<div class="clr"></div>
		
		<p>
		<table cellpadding="0" cellspacing="0" align="left" bgcolor="#EDEDED" style="font-size:11px;">
						<tr>
										<td class="seoPanelTitle">SEO Editing 
										
										
										Panel </td>
						</tr>
						<tr>
										<td>&quot;Title&quot; appears on the global and 
										
										
										
								left navigation </td>
						</tr>
						<tr>
										<td>
										<SharePoint:TextField runat="server" id="TitleFieldEdit" FieldName="Title" DisplaySize="100" />
										</td>
						</tr>
						<tr>
										<td>&quot;SEO Browser Title&quot; appears in the 
										
										
										
								browser title bar and the HTML TITLE tag </td>
						</tr>
						<tr>
										<td>
										<SharePoint:TextField id="SEOBrowserTitleField" FieldName="SEO_x0020_Browser_x0020_Title" runat="server" DisplaySize="100">
										</SharePoint:TextField>
										</td>
						</tr>
						<tr>
										<td>&quot;Meta Description&quot; appears in the 
										
										
										
								HTML META DESCRIPTION tag and usually in 
										
										
										
								the first few lines of search engine results
										</td>
						</tr>
						<tr>
										<td>
										<SharePoint:NoteField FieldName="Meta_x0020_Description" runat="server" id="NoteField1">
										</SharePoint:NoteField>
										</td>
						</tr>
						<tr>
										<td>&quot;Meta Keywords&quot; appears in the HTML 
										
										
										
								META KEYWORDS tag </td>
						</tr>
						<tr>
										<td>
										<SharePoint:TextField FieldName="Meta_x0020_Keywords" runat="server" DisplaySize="100">
										</SharePoint:TextField>
										</td>
						</tr>
						<tr>
										<td>&nbsp;</td>
						</tr>
						<tr>
										<td>&quot;Meta Robots&quot; appears in the HTML 
										
										META ROBOTS tag and tells search engines 
										
										whether to index the content on this 
										
										page (index, noindex) and whether to 
										
										follow links on this page (follow, 
										
										nofollow).
										</td>
						</tr>
						<tr>
										<td>
										<SharePoint:DropDownChoiceField FieldName="Meta_x0020_Robots" runat="server">
										</SharePoint:DropDownChoiceField>
										</td>
						</tr>
		</table>
		</p>
			</PublishingWebControls:editmodepanel>
	
	</div>
		<div class="clr"></div>
		
</asp:Content>
