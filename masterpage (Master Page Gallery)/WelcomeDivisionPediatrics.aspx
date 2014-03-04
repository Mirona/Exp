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

</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="SEO_x0020_Browser_x0020_Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/WelcomeDivisionPediatrics.css %>" runat="server"/>

	<div id="divisionHomeTop">
		<div id="divisionMainImage">
			<PublishingWebControls:RichImageField FieldName="PublishingPageImage" runat="server" DisplayWidth="500" DisplayHeight="285">
			</PublishingWebControls:RichImageField>
		</div>
		<div id="welcomeMessage">
			<telerik:RadHtmlField id="Welcome" FieldName="PublishingPageContent" runat="server" DisplayWidth="380px" DisplayHeight="240px"></telerik:RadHtmlField>
		</div>
	</div><!-- End #divisionHomeTop -->

			<div class="clr"></div>

	<div id="divisionHomeBottom">
		
		<div id="homeColumnLeft">
			<h1><span>
				<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Left" runat="server"></SharePoint:TextField>
			</span></h1>
			<div class="lineBreak"></div>
			<telerik:RadHtmlField AllowSpecialTags="True" id="LeftCol" FieldName="Column_x0020_Text_x0020_Left" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
		</div><!-- End #homeColumnLeft -->
	
		<div id="homeColumnCenter">
			<h1><span>
				<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Center" runat="server"></SharePoint:TextField>
			</span></h1>
			<div class="lineBreak"></div>
			<telerik:RadHtmlField AllowSpecialTags="True" id="CenterCol" FieldName="Column_x0020_Content_x0020_Center" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
		</div><!-- End #homeColumnCenter -->
			
		<div id="homeColumnRight">
			<h1><span>
				<SharePoint:TextField FieldName="Column_x0020_Title_x0020_Right" runat="server"></SharePoint:TextField>
			</span></h1>
			<div class="lineBreak"></div>
			<telerik:RadHtmlField AllowSpecialTags="True" id="RightCol" FieldName="Column_x0020_Text_x0020_Right" runat="server" DisplayWidth="600px" DisplayHeight="200px"></telerik:RadHtmlField>
		</div><!-- End #homeColumnRight -->
	
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







