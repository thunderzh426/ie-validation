
USE validator
GO
 IF NOT EXISTS(SELECT * FROM sys.schemas WHERE [name] = N'dbo')      
     EXEC (N'CREATE SCHEMA dbo')                                   
 GO                                                               

USE validator
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf'  AND sc.name=N'dbo'  AND type in (N'U'))
BEGIN

  DECLARE @drop_statement nvarchar(500)

  DECLARE drop_cursor CURSOR FOR
      SELECT 'alter table '+quotename(schema_name(ob.schema_id))+
      '.'+quotename(object_name(ob.object_id))+ ' drop constraint ' + quotename(fk.name) 
      FROM sys.objects ob INNER JOIN sys.foreign_keys fk ON fk.parent_object_id = ob.object_id
      WHERE fk.referenced_object_id = 
          (
             SELECT so.object_id 
             FROM sys.objects so JOIN sys.schemas sc
             ON so.schema_id = sc.schema_id
             WHERE so.name = N'crf'  AND sc.name=N'dbo'  AND type in (N'U')
           )

  OPEN drop_cursor

  FETCH NEXT FROM drop_cursor
  INTO @drop_statement

  WHILE @@FETCH_STATUS = 0
  BEGIN
     EXEC (@drop_statement)

     FETCH NEXT FROM drop_cursor
     INTO @drop_statement
  END

  CLOSE drop_cursor
  DEALLOCATE drop_cursor

  DROP TABLE [dbo].[crf]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[dbo].[crf]
(
   [crf_id] int IDENTITY(2, 1)  NOT NULL,
   [name] nvarchar(100)  NOT NULL,
   [html_id] nvarchar(500)  NOT NULL,
   [frame_id] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'validator.crf',
        N'SCHEMA', N'dbo',
        N'TABLE', N'crf'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE validator
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_crf_id'  AND sc.name=N'dbo'  AND type in (N'PK'))
ALTER TABLE [dbo].[crf] DROP CONSTRAINT [PK_crf_crf_id]
 GO



ALTER TABLE [dbo].[crf]
 ADD CONSTRAINT [PK_crf_crf_id]
 PRIMARY KEY 
   CLUSTERED ([crf_id] ASC)

GO


USE validator
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf$name_UNIQUE'  AND sc.name=N'dbo'  AND type in (N'UQ'))
ALTER TABLE [dbo].[crf] DROP CONSTRAINT [crf$name_UNIQUE]
 GO



ALTER TABLE [dbo].[crf]
 ADD CONSTRAINT [crf$name_UNIQUE]
 UNIQUE 
   NONCLUSTERED ([name] ASC)

GO

