

   	// livechat by www.mylivechat.com/  2018-06-12

   	

   	if(typeof(MyLiveChat)=="undefined")
   	{
   		MyLiveChat={};
   		MyLiveChat.RawConfig={SmartRejectTooltip:"Close",SmartHeadline:"Chat Invitation",SmartHideTimeout:"10",WaitingFieldQuestion:"1",ButtonOfflineImage:"upload",SmartVisitUrlFilter:"",WebConsoleRedirectTime:"636705200799061243",SmartMaxReject:"2",InlineChatOfflineLogo:"12",SoundRequest:"ring",InviteHeadline:"Chat Invitation",SmartUseVisitUrlFilter:"1",SmartUseReferUrlFilter:"1",InlineChatSurveyVisible:"1",SmartMaxIgnore:"2",WaitingShowForInvite:"0",InlineChatTemplate:"10",DialogWidth:"580",InviteSoundFile:"1",InviteMessage:"Hello, my name is Jane. How can I assist you today?",InlineChatSurveyUseRating:"1",InviteAcceptTooltip:"Chat Invitation",SmartLocationFilter:"",FeedbackLogo:"upload",InviteShowTimeout:"30",SoundInvitation:"iphone4_ring",ButtonOpenNewWindow:"True",SupportPhoto:"upload",InPageBubbleTop:"3",InviteRejectTooltip:"Close",DialogHeight:"420",InPageUseBubbleTop:"1",SmartPlaySound:"1",InlineChatSurveyUseEmail:"1",InlineChatBubbleUIMode:"1",SmartMessage:"May I help you?",SmartStayTime:"5",InlineChatOnlineLogo:"15",WaitingShowForSmart:"1",SmartReferUrlFilter:"",SmartSoundFile:"1",InPageTemplate:"10",WaitingLogo:"upload",SmartShowTimeout:"60",SmartAcceptTooltip:"Chat Invitation",SoundVisitor:"ring",InPageHeadOnline:"Are You Relocating !",SmartPhoto:"upload",SmartUsePageTime:"1",InvitePhoto:"upload",CustomDataDefinition:"[]",SmartEntryUrlFilter:"",InlineChatSurveyUseComment:"1",maxWaitTime:"300",SmartUseStayTime:"1",WaitingFieldEmail:"1",SmartUseLocationFilter:"1",WaitingPhoto:"5",SmartHideIfChatting:"1",SmartKeywordsFilter:"",SoundVisitorVolume:"71",SmartPageCount:"1",FeedbackPhoto:"4",InlineChatTimestampVisible:"1",SmartUseMaxReject:"1",SurveyUseRating:"0",SmartUsePageCount:"1",InlineChatCustomerTextStyle:"color:#3798de",SoundJoin:"online",SmartUseKeywordsFilter:"1",InvitePlaySound:"1",SmartUseEntryUrlFilter:"1",WaitingFieldDepartment:"1",ButtonOnlineImage:"upload",InPageImageOffline:"1",SmartUseHideTimeout:"1",InviteHideTimeout:"1800",iosnotifylist:"",WaitingShowForClick:"1",SoundNudge:"msn_nudge",InlineChatHideSubject:"",SmartUseMaxIgnore:"1",InPageImageOnline:"1",OnholdWaitTime:"120",SoundMessage:"msn_message",MessageTimestampVisible:"1",SmartPageTime:"5",SmartUseShowTimeout:"1"};
   		MyLiveChat.RawQuery={hccid:"94652479",apimode:"chatinline"};
   		for(var mlcp in MyLiveChat.RawConfig)
   		{
   			MyLiveChat[mlcp]=MyLiveChat.RawConfig[mlcp];
   		}
   		for(var mlcp in MyLiveChat.RawQuery)
   		{
   			MyLiveChat[mlcp]=MyLiveChat.RawQuery[mlcp];
   		}
   		if(MyLiveChat.InPageTemplate=="1"||MyLiveChat.InPageTemplate=="7")
   			MyLiveChat.InlineChatTemplate="2";
   		if(!MyLiveChat.InlineChatTemplate)
   			MyLiveChat.InlineChatTemplate=MyLiveChat.InPageTemplate||"2";

   		MyLiveChat.HCCID='94652479';
   		MyLiveChat.PageBeginTime=new Date().getTime();
   		MyLiveChat.LoadingHandlers=[];
   		//	,"Departments"
   		MyLiveChat.CPRFIELDS=["SyncType","SyncStatus","SyncResult","HasReadyAgents","VisitorUrls","VisitorStatus","VisitorDuration","VisitorEntryUrl","VisitorReferUrl"];
	   }



   	MyLiveChat.Version=1018;
   	MyLiveChat.FirstRequestTimeout=28800;
   	MyLiveChat.NextRequestTimeout=57600;
   	MyLiveChat.SyncType=null;
   	MyLiveChat.SyncStatus="LOADING";
   	MyLiveChat.SyncUserName=null;
   	MyLiveChat.SyncResult="LOADING";
   	MyLiveChat.HasReadyAgents=false;
   	MyLiveChat.SourceUrl="https://www.writerrelocations.com/terms-and-conditions/";
   	MyLiveChat.AgentTimeZone=parseInt("5" || "-5");
   	MyLiveChat.UrlBase="https://s3.mylivechat.com/livechat/";
   	MyLiveChat.SiteUrl="https://s3.mylivechat.com/";

   	MyLiveChat.Departments=[];

   	

   	MyLiveChat.Departments.push({
   		Name:"Default",
   		Agents:[{
   			Id:'User:1',
   			Name:"WriterRelocations",
   			Online:false
   			}],
   		Online:false
   		});

	

	
   	MyLiveChat.VisitorUrls=[];


	
   	
   	function MyLiveChat_AddScript(tag)
   	{
   		var func=MyLiveChat_AddScript;
   		var arr=func._list;
   		if(!arr)func._list=arr=[];
   		if(func._loading)
   		{
   			arr.push(tag);
   			return;
   		}
   		function ontagload()
   		{
   			func._loading=false;
   			if(!arr.length)return;
   			tag=arr.shift();
   			LoadTag();
   		}
   		function LoadTag()
   		{
   			func._loading=true;
   			if('onload' in tag)
   			{
   				tag.onload=ontagload;
   			}
   			else
   			{
   				var iid=setInterval(function()
   				{
   					if(tag.readyState!='complete'&&tag.readyState!='loaded')
   						return;
   					clearInterval(iid);
   					ontagload();
   				},10);
   			}
   			var p=document.getElementsByTagName("head")[0]||document.body;
   			p.insertBefore(tag,p.firstChild);
   		}
   		LoadTag();
   	}

   	function MyLiveChat_GetLastScriptTag()
   	{
   		var coll=document.getElementsByTagName("script");
   		return coll[coll.length-1];
   	}
   	function MyLiveChat_DocWrite(html,relativetag)
   	{
   		if(html.substr(0,7)=="<script")	//Low IE interactive or defer
   		{
   			var tag=document.createElement("script");

   			var src=html.match(/src=["']?([^"'>]*)["']/)[1];
   			var div=document.createElement("div");
   			div.innerHTML=src;
   			src=div.innerText||div.firstChild.nodeValue;

   			if(!MyLiveChat.LoadedScripts)MyLiveChat.LoadedScripts={};
   			if(MyLiveChat.LoadedScripts[src])return;
   			MyLiveChat.LoadedScripts[src]=true;
   			tag.setAttribute("src",src);
   			MyLiveChat_AddScript(tag);
   		}
   		else
   		{
   			if(!document.body||document.readyState=="loading")
   			{
   				document.write(html);
   				return;
   			}

   			if(!relativetag)relativetag=MyLiveChat_GetLastScriptTag();

   			var div = document.createElement("DIV");
   			div.innerHTML = html;
   			while (true) {
   				var c = div.firstChild;
   				if (!c) break;
   				div.removeChild(c);
   				relativetag.parentNode.insertBefore(c,relativetag);
   			}
   		}
   	}
	
   	MyLiveChat.NewGuid=function()
   	{
   		var guid = "";
   		for (var i = 1; i <= 32; i++){
   			guid +=Math.floor(Math.random()*16.0).toString(16);
   			if(i==8||i==12||i==16||i==20)guid += "-";
   		}
   		return guid;    
   	}

   	
   	MyLiveChat.RandomID='e9e802bc-3731-bf3d-25b1-3e91aa0ad708';


	

   	MyLiveChat.VisitorStatus="";
   	MyLiveChat.VisitorDuration=0;
   	MyLiveChat.VisitorEntryUrl="";
   	MyLiveChat.VisitorReferUrl="";

   	MyLiveChat.ShowButton=true;
   	MyLiveChat.ShowLink=true;
   	MyLiveChat.ShowBox=true;
   	MyLiveChat.ShowSmart=false;
   	MyLiveChat.ScriptUrl="https://s3.mylivechat.com/livechat/livechat.aspx?hccid=94652479\x26apimode=chatinline";




   	MyLiveChat.NoPrivateLabel=true;


   	MyLiveChat.LoadingHandlers.push(function(funcself)
   	{
   		MyLiveChat_RunLoadingHandler('chatinline',funcself);
   	});

   	MyLiveChat.ResourcesVary="\x26culture=en-US\x26mlcv=1018";

   	function MyLiveChat_HtmlEncode(text) {
   		if (!text) return "";
   		return text.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/\x22/g, "&quot;")
			.replace(/\x27/g, "&#39;").replace(/\n/g, "<br/>").replace(/\r/g, "");
   	}
   	function MyLiveChat_LoadMoreScripts()
   	{
   		var mlcresurl=MyLiveChat.UrlBase+"resources.aspx?HCCID="+MyLiveChat.HCCID;
   		if(MyLiveChat.InPageTemplate)mlcresurl+="&InPageTemplate="+MyLiveChat.InPageTemplate;
   		if(MyLiveChat.InlineChatTemplate)mlcresurl+="&InlineChatTemplate="+MyLiveChat.InlineChatTemplate;
	
   		if(!window.jsml)
   		{
   			MyLiveChat_DocWrite("<script src='"+MyLiveChat.SiteUrl+"JSML/jsml.js'></scr"+"ipt>");
   		}
   		MyLiveChat_DocWrite("<script src='"+MyLiveChat_HtmlEncode(mlcresurl+MyLiveChat.ResourcesVary)+"'></scr"+"ipt>");

   		if(false)
   		{
		window.mlcapimodeisdialog=true;
   		var surl=MyLiveChat.ScriptUrl;
   		MyLiveChat_DocWrite("<script onerror='LoaderScriptTagError()' src='" + MyLiveChat_HtmlEncode(MyLiveChat.UrlBase + "dialog.aspx?"+surl.substring(surl.indexOf('?')+1))+"'></scr" + "ipt>");	
   		MyLiveChat_DocWrite("<script onerror='LoaderScriptTagError()' src='" +  MyLiveChat.UrlBase + "script/dialoginit.js'></scr" + "ipt>");
	   }
	   else if(false)
   	{
   		MyLiveChat.IsDesignMode=true;
   	}
   	}

   	MyLiveChat['chatinline'+"_script_tag"]=MyLiveChat_GetLastScriptTag();

   	if(typeof(MyLiveChat_Initialize)=="undefined")
   	{
   		MyLiveChat_LoadMoreScripts();
   	}
   	else
   	{
   		MyLiveChat_Initialize()
   	}

