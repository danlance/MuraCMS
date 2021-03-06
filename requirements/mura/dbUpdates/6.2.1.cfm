<cfquery name="rsCheck">
select moduleID from tcontent where type='Module' and moduleID='00000000000000000000000000000000099'
</cfquery>


<cfif not rsCheck.recordcount>
	<cfquery name="rsCheck">
	select siteID from tsettings
	</cfquery>
	
	<cfloop query="rsCheck">
		<cfquery>
		INSERT INTO tcontent 
		(
			SiteID
			,ModuleID
			,ParentID
			,ContentID
			,ContentHistID
			,RemoteID
			,RemoteURL
			,RemotePubDate
			,RemoteSourceURL
			,RemoteSource
			,Credits
			,FileID
			,Template
			,Type
			,subType
			,Active
			,OrderNo
			,Title
			,MenuTitle
			,Summary
			,Filename
			,MetaDesc
			,MetaKeyWords
			,Body
			,lastUpdate
			,lastUpdateBy
			,lastUpdateByID
			,DisplayStart
			,DisplayStop
			,Display
			,Approved
			,IsNav
			,Restricted
			,RestrictGroups
			,Target
			,TargetParams
			,responseChart
			,responseMessage
			,responseSendTo
			,responseDisplayFields
			,moduleAssign
			,displayTitle
			,Notes
			,inheritObjects
			,isFeature
			,ReleaseDate
			,IsLocked
			,nextN
			,sortBy
			,sortDirection
			,featureStart
			,featureStop
			,forceSSL
			,audience
			,keyPoints
			,searchExclude
			,path
		) VALUES  (
			<cfqueryparam cfsqltype="cf_sql_varchar" value="#rsCheck.siteid#">
			,'00000000000000000000000000000000099'
			,'00000000000000000000000000000000END'
			,'00000000000000000000000000000000099'
			,'#createUUID()#'
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,'Module'
			,'default'
			,1
			,NULL
			,'Variations Manager'
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,1
			,1
			,1
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,NULL
			,0
			,NULL
			,NULL
			,NULL
			,NULL
		)
		</cfquery>
	</cfloop>
</cfif>