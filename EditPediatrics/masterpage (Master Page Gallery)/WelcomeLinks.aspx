<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<style type="text/css">
		.ms-pagetitleareaframe table, .ms-titleareaframe
		{
			background: none;
			height: 10px;
			overflow:hidden;
		}
		.ms-pagetitle, .ms-titlearea
		{
			display:none;
		}
	</style>
	<PublishingWebControls:editmodepanel runat="server" id="editmodestyles">
			<!-- Styles for edit mode only-->
			<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/zz2_editMode.css %>" runat="server"/>
	</PublishingWebControls:editmodepanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="SEO_x0020_Browser_x0020_Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:TextField FieldName="Headline" runat="server"></SharePointWebControls:TextField>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/pageLayouts.css %>" runat="server"/>
	<div class="ms-pagebreadcrumb removeMargins">
		<asp:SiteMapPath ID="siteMapPath" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" __designer:Templates="&lt;Group Name=&quot;NodeTemplate&quot;&gt;&lt;Template Name=&quot;NodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;CurrentNodeTemplate&quot;&gt;&lt;Template Name=&quot;CurrentNodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;RootNodeTemplate&quot;&gt;&lt;Template Name=&quot;RootNodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;PathSeparatorTemplate&quot;&gt;&lt;Template Name=&quot;PathSeparatorTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"/>
	</div>
	
	<div class="welcomeImage">
		<PublishingWebControls:RichImageField id="PageImage" FieldName="PublishingPageImage"  runat="server"/>
	</div>
	<div class="pageContent">
		<PublishingWebControls:RichHtmlField id="PageContent" FieldName="PublishingPageContent" runat="server"/>
	</div>
	<table width="100%">
		<tr>
			<td width="50%" valign="top">
			<PublishingWebControls:SummaryLinkFieldControl id="LeftColumnSummaryLinks" FieldName="SummaryLinks"  runat="server"/>
			</td>
			<td width="50%" valign="top">
			<PublishingWebControls:SummaryLinkFieldControl id="RightColumnSummaryLinks" FieldName="SummaryLinks2"  runat="server"/>
			</td>
		</tr>
		<tr>
			<td width="100%" valign="top" colspan="2">
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="true" ID="TopColumnZone" FrameType="TitleBarOnly"
					Title="<%$Resources:cms,WebPartZoneTitle_Top%>" Orientation="Vertical" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;TopColumnZone&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Top&lt;/td&gt;
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
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='TopColumnZone' /&gt;&lt;P N='FrameType' E='2' /&gt;&lt;P N='Title' Bound='True' T='Resources:cms,WebPartZoneTitle_Top' /&gt;&lt;P N='HeaderText' ID='2' T='Top' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='PartChromeType' E='3' /&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			</td>
		</tr>
		<tr>
			<td width="50%" valign="top">
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="true" ID="LeftColumnZone" FrameType="TitleBarOnly"
					Title="<%$Resources:cms,WebPartZoneTitle_LeftColumn%>" Orientation="Vertical" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;LeftColumnZone&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Left Column&lt;/td&gt;
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
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='LeftColumnZone' /&gt;&lt;P N='FrameType' E='2' /&gt;&lt;P N='Title' Bound='True' T='Resources:cms,WebPartZoneTitle_LeftColumn' /&gt;&lt;P N='HeaderText' ID='2' T='Left Column' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='PartChromeType' E='3' /&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			</td>
			<td width="50%" valign="top">
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="true" ID="RightColumnZone" FrameType="TitleBarOnly"
					Title="<%$Resources:cms,WebPartZoneTitle_RightColumn%>" Orientation="Vertical" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;RightColumnZone&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Right Column&lt;/td&gt;
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
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='RightColumnZone' /&gt;&lt;P N='FrameType' E='2' /&gt;&lt;P N='Title' Bound='True' T='Resources:cms,WebPartZoneTitle_RightColumn' /&gt;&lt;P N='HeaderText' ID='2' T='Right Column' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='PartChromeType' E='3' /&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			</td>
		</tr>
	</table>
	
	<PublishingWebControls:editmodepanel runat="server" id="SEOeditmodepanel">
		<!-- Add field controls here to bind custom metadata viewable and editable in edit mode only.-->
		<p><table cellpadding="0" cellspacing="0" align="left" bgcolor="#EDEDED" style="font-size:11px;">
						<tr>
										<td class="seoPanelTitle">SEO Editing 
										Panel
										</td>
						</tr>

						<tr>
										<td>&quot;Title&quot; appears on the global and 
										
										left navigation
										</td>
						</tr>
						<tr>
										<td>
										<SharePointWebControls:TextField runat="server" id="TitleFieldEdit" FieldName="Title" DisplaySize="140" />
										</td>
						</tr>
						<tr>
										<td>&quot;SEO Browser Title&quot; appears in the 
										
										browser title bar and the HTML TITLE tag
										</td>
						</tr>
						<tr>
										<td>
										<SharePointWebControls:TextField id="SEOBrowserTitleField" FieldName="SEO_x0020_Browser_x0020_Title" runat="server" DisplaySize="140">
										</SharePointWebControls:TextField>
										</td>
						</tr>
						<tr>
										<td>&quot;Meta Description&quot; appears in the 
										
										HTML META DESCRIPTION tag and usually in 
										
										the first few lines of search engine 
										
										results
										</td>
						</tr>
						<tr>
										<td>
										<SharePointWebControls:NoteField FieldName="Meta_x0020_Description" runat="server" DisplaySize="140">
										</SharePointWebControls:NoteField>
										</td>
						</tr>
						<tr>
										<td>&quot;Meta Keywords&quot; appears in the HTML 
										
										META KEYWORDS tag
										</td>
						</tr>
						<tr>
										<td>
										<SharePointWebControls:TextField FieldName="Meta_x0020_Keywords" runat="server" DisplaySize="140">
										</SharePointWebControls:TextField>
										</td>
						</tr>
						<tr>
										<td>
											&quot;Meta Robots&quot; appears in the HTML 
											META ROBOTS tag and tells search 
											engines whether to index the content 
											on this page (index, noindex) and 
											whether to follow links on this page 
											(follow, nofollow).
										</td>
						</tr>
						<tr>
							<td>
								<SharePointWebControls:DropDownChoiceField FieldName="Meta_x0020_Robots" runat="server"></SharePointWebControls:DropDownChoiceField>
							</td>
						</tr>
		</table>
		<div style="clear:both">&nbsp;</div>
	</PublishingWebControls:editmodepanel>
</asp:Content>
