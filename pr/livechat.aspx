

   	// livechat by www.mylivechat.com/  2018-06-12

   	


   	MyLiveChat.Version=1018;
   	MyLiveChat.FirstRequestTimeout=28800;
   	MyLiveChat.NextRequestTimeout=57600;
   	MyLiveChat.SyncType="VISIT";
   	MyLiveChat.SyncStatus="READY";
   	MyLiveChat.SyncUserName="Guest_9928441d";
   	MyLiveChat.SyncResult=null;
   	MyLiveChat.HasReadyAgents=false;
   	MyLiveChat.SourceUrl="https://www.writerrelocations.com/privacy-policy/";
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


	
   	
   	MyLiveChat.VisitorLocation="IN|India|10|Haryana|Gurgaon";
   	MyLiveChat.LastLoadTime=new Date().getTime();
   	MyLiveChat.VisitorStatus="VISIT";
   	MyLiveChat.VisitorDuration=21;
   	MyLiveChat.VisitorEntryUrl="https://www.writerrelocations.com/privacy-policy/";
   	MyLiveChat.VisitorReferUrl=null;

   	MyLiveChat.VisitorUrls=[];


   	MyLiveChat.VisitorUrls.push("https://www.writerrelocations.com/privacy-policy/");
   	

   	MyLiveChat_Initialize();

   	if(MyLiveChat.localStorage||MyLiveChat.userDataBehavior)
   	{
   		MyLiveChat_SyncToCPR();
   	}
	
   	