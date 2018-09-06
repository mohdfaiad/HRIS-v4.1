

INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'NS ', N'Not synced', N'Record has not yet been synced')
GO
INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'QUE', N'Qued for sending', N'Qued for sending to the server or client')
GO
INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'SSC', N'Sent to client', N'Sent to client')
GO
INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'SSV', N'Sent to server', N'Sent to server')
GO
INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'SYN', N'Synced', N'Record has been synced')
GO
INSERT [dbo].[t_wsmessagestatus] ([messagestatus_code], [messagestatus_name], [messagestatus_description]) VALUES (N'SYW', N'Synced to web', N'Record has been synced to the web')
GO
INSERT [dbo].[t_wsmessagetype] ([messagetype_code], [messagetype_name], [messagetype_description]) VALUES (N'CHS', N'Change status', N'Change status in source database. Status comes from the destination database')
GO
INSERT [dbo].[t_wsmessagetype] ([messagetype_code], [messagetype_name], [messagetype_description]) VALUES (N'REQ', N'Record request', N'Send and receive request from destination branch')
GO
INSERT [dbo].[t_wsmessagetype] ([messagetype_code], [messagetype_name], [messagetype_description]) VALUES (N'SFX', N'SQL fix', N'Ad hoc sql for data correction')
GO
INSERT [dbo].[t_wsmessagetype] ([messagetype_code], [messagetype_name], [messagetype_description]) VALUES (N'SUP', N'SQL update', N'Sql query update for store proc, triggers, views, etc')
GO
INSERT [dbo].[t_wsmessagetype] ([messagetype_code], [messagetype_name], [messagetype_description]) VALUES (N'SYN', N'Record sync', N'Sync record in central database')
GO
