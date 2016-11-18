
USE vhacdwrb02.MAVIN_DEV1
GO
 IF NOT EXISTS(SELECT * FROM sys.schemas WHERE [name] = N'app_NlpApp2')      
     EXEC (N'CREATE SCHEMA app_NlpApp2')                                   
 GO                                                               

USE vhacdwrb02.MAVIN_DEV1
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'annotation'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'annotation'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[annotation]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[annotation]
(
   [id] int  NOT NULL,
   [document_namespace] nvarchar(500)  NOT NULL,
   [document_table] nvarchar(500)  NOT NULL,
   [document_id] int  NOT NULL,
   [document_name] nvarchar(100) DEFAULT NULL  NULL,
   [annotation_type] nvarchar(500) DEFAULT NULL  NULL,
   [start] int DEFAULT NULL  NULL,
   [end] int DEFAULT NULL  NULL,
   [value] nvarchar(max)  NULL,
   [features] nvarchar(max)  NULL,
   [provenance] nvarchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0052: string literal was converted to NUMERIC literal
   */

   [score] float(53) DEFAULT 1  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.annotation',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'annotation'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'crf'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[crf]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[crf]
(
   [crf_id] int IDENTITY(2, 1)  NOT NULL,
   [name] nvarchar(100)  NOT NULL,
   [html_id] nvarchar(500)  NOT NULL,
   [frame_id] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.crf',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'crf'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf_element'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'crf_element'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[crf_element]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[crf_element]
(
   [crf_id] int  NOT NULL,
   [element_id] int  NOT NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.crf_element',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'crf_element'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf_project'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'crf_project'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[crf_project]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[crf_project]
(
   [crf_project_id] int IDENTITY(2, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL,
   [crf_id] int DEFAULT NULL  NULL,
   [document_table] nvarchar(100) DEFAULT NULL  NULL,
   [document_id_column] nvarchar(100) DEFAULT NULL  NULL,
   [document_text_column] nvarchar(100) DEFAULT NULL  NULL,
   [column_types_map] nvarchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.crf_project',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'crf_project'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf_project_frame_instance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'crf_project_frame_instance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[crf_project_frame_instance]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[crf_project_frame_instance]
(
   [crf_project_id] int  NOT NULL,
   [frame_instance_id] int  NOT NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.crf_project_frame_instance',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'crf_project_frame_instance'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf_section'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'crf_section'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[crf_section]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[crf_section]
(
   [section_id] int IDENTITY(13, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL,
   [crf_id] int  NOT NULL,
   [repeat] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.crf_section',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'crf_section'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'data_type'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'data_type'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[data_type]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[data_type]
(
   [id] int IDENTITY(5, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.data_type',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'data_type'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'documents'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'documents'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[documents]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[documents]
(
   [document_id] bigint  NOT NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [name] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR(MAX) according to character set mapping for latin1 character set
   */

   [doc_text] varchar(max)  NULL,
   [date] datetime2(0) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [author] varchar(100) DEFAULT NULL  NULL,
   [mrn] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.documents',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'documents'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'element'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'element'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[element]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[element]
(
   [element_id] int IDENTITY(69, 1)  NOT NULL,
   [display_name] nvarchar(500) DEFAULT NULL  NULL,
   [html_id] nvarchar(500)  NOT NULL,
   [section_id] int DEFAULT NULL  NULL,
   [repeat] int DEFAULT NULL  NULL,
   [element_type] int DEFAULT NULL  NULL,
   [data_type] int DEFAULT NULL  NULL,
   [slot_id] int DEFAULT NULL  NULL,
   [primary_key] smallint DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.element',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'element'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'element_type'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'element_type'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[element_type]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[element_type]
(
   [element_type_id] int IDENTITY(8, 1)  NOT NULL,
   [element_type_name] nvarchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.element_type',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'element_type'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'element_value'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'element_value'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[element_value]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[element_value]
(
   [element_id] int  NOT NULL,
   [value_id] int  NOT NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.element_value',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'element_value'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame]
(
   [frame_id] int IDENTITY(2, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance]
(
   [frame_instance_id] int IDENTITY(51, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL,
   [frame_id] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_annotation'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_annotation'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_annotation]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_annotation]
(
   [id] int  NOT NULL,
   [document_namespace] nvarchar(500) DEFAULT NULL  NULL,
   [document_table] nvarchar(500) DEFAULT NULL  NULL,
   [document_id] int DEFAULT NULL  NULL,
   [annotation_type] nvarchar(500) DEFAULT NULL  NULL,
   [start] int DEFAULT NULL  NULL,
   [end] int DEFAULT NULL  NULL,
   [value] nvarchar(max)  NULL,
   [features] nvarchar(max)  NULL,
   [provenance] nvarchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0052: string literal was converted to NUMERIC literal
   */

   [score] float(53) DEFAULT 1  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_annotation',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_annotation'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_data'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_data'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_data]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_data]
(
   [frame_instance_id] int  NOT NULL,
   [slot_id] int  NOT NULL,
   [value] nvarchar(max)  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0052: string literal was converted to NUMERIC literal
   */

   [section_slot_number] int DEFAULT 0  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0052: string literal was converted to NUMERIC literal
   */

   [element_slot_number] int DEFAULT 0  NULL,
   [document_namespace] nvarchar(500) DEFAULT NULL  NULL,
   [document_table] nvarchar(500) DEFAULT NULL  NULL,
   [document_id] int DEFAULT NULL  NULL,
   [annotation_id] int DEFAULT NULL  NULL,
   [annotation_namespace] nvarchar(500) DEFAULT NULL  NULL,
   [element_id] int DEFAULT NULL  NULL,
   [v_scroll_pos] int DEFAULT NULL  NULL,
   [scroll_height] int DEFAULT NULL  NULL,
   [scroll_width] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_data',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_data'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_document'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_document'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_document]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_document]
(
   [frame_instance_id] int DEFAULT NULL  NULL,
   [document_id] int DEFAULT NULL  NULL,
   [document_table] nvarchar(500) DEFAULT NULL  NULL,
   [document_namespace] nvarchar(500) DEFAULT NULL  NULL,
   [document_key] nvarchar(500) DEFAULT NULL  NULL,
   [document_text_column] nvarchar(500) DEFAULT NULL  NULL,
   [document_name] nvarchar(500) DEFAULT NULL  NULL,
   [document_order] int DEFAULT NULL  NULL,
   [document_features] nvarchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_document',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_document'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_document_history'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_document_history'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_document_history]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_document_history]
(
   [frame_instance_id] int DEFAULT NULL  NULL,
   [document_namespace] nvarchar(500) DEFAULT NULL  NULL,
   [document_table] nvarchar(500) DEFAULT NULL  NULL,
   [document_id] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_document_history',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_document_history'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_element_repeat'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_element_repeat'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_element_repeat]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_element_repeat]
(
   [frame_instance_id] int  NOT NULL,
   [element_id] int DEFAULT NULL  NULL,
   [section_slot_num] int DEFAULT NULL  NULL,
   [repeat_num] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_element_repeat',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_element_repeat'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_instance_section_repeat'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_instance_section_repeat'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_instance_section_repeat]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_instance_section_repeat]
(
   [frame_instance_id] int  NOT NULL,
   [section_id] int DEFAULT NULL  NULL,
   [repeat_num] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_instance_section_repeat',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_instance_section_repeat'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'frame_slot'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'frame_slot'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[frame_slot]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[frame_slot]
(
   [frame_id] int  NOT NULL,
   [slot_id] int  NOT NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.frame_slot',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'frame_slot'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'msa'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'msa'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[msa]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[msa]
(
   [msa_id] int  NOT NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_namespace] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_table] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [group] varchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.msa',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'msa'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'msa_profile'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'msa_profile'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[msa_profile]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[msa_profile]
(
   [msa_id] int  NOT NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_namespace] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_table] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [group] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR(MAX) according to character set mapping for latin1 character set
   */

   [profile] varchar(max)  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [name] varchar(500) DEFAULT NULL  NULL,
   [profile_type] int DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [annotation_type] varchar(500) DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.msa_profile',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'msa_profile'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'msa_row'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'msa_row'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[msa_row]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[msa_row]
(
   [msa_id] int  NOT NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_namespace] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [document_table] varchar(500) DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR according to character set mapping for latin1 character set
   */

   [group] varchar(500) DEFAULT NULL  NULL,
   [row_id] int DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR(MAX) according to character set mapping for latin1 character set
   */

   [base_tokens] varchar(max)  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR(MAX) according to character set mapping for latin1 character set
   */

   [filler_tokens] varchar(max)  NULL,
   [multiplicity] int DEFAULT NULL  NULL,

   /*
   *   SSMA informational messages:
   *   M2SS0055: Data type was converted to VARCHAR(MAX) according to character set mapping for latin1 character set
   */

   [sentences] varchar(max)  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.msa_row',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'msa_row'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'provenance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'provenance'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[provenance]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[provenance]
(
   [id] int IDENTITY(1, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL,
   [priority] int DEFAULT NULL  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.provenance',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'provenance'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'slot'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'slot'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[slot]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[slot]
(
   [slot_id] int IDENTITY(198, 1)  NOT NULL,
   [name] nvarchar(500) DEFAULT NULL  NULL,
   [annotation_type] nvarchar(100) DEFAULT NULL  NULL,
   [slot_type] int  NOT NULL,
   [cond] nvarchar(max)  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.slot',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'slot'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'user'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'user'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[user]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[user]
(
   [user_id] int IDENTITY(2, 1)  NOT NULL,
   [user_name] nvarchar(500) DEFAULT NULL  NULL,
   [project_id] int DEFAULT NULL  NULL,
   [frame_instance_id] int DEFAULT NULL  NULL,
   [pw] nvarchar(max)  NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.`user`',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'user'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF  EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'value'  AND sc.name=N'app_NlpApp2'  AND type in (N'U'))
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
             WHERE so.name = N'value'  AND sc.name=N'app_NlpApp2'  AND type in (N'U')
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

  DROP TABLE [app_NlpApp2].[value]
END 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE 
[app_NlpApp2].[value]
(
   [value_id] int IDENTITY(198, 1)  NOT NULL,
   [display_name] nvarchar(500) DEFAULT NULL  NULL,
   [slot_id] int DEFAULT NULL  NULL,
   [html_id] nvarchar(500)  NOT NULL
)
GO
BEGIN TRY
    EXEC sp_addextendedproperty
        N'MS_SSMA_SOURCE', N'test.value',
        N'SCHEMA', N'app_NlpApp2',
        N'TABLE', N'value'
END TRY
BEGIN CATCH
    IF (@@TRANCOUNT > 0) ROLLBACK
    PRINT ERROR_MESSAGE()
END CATCH
GO

USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_crf_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[crf] DROP CONSTRAINT [PK_crf_crf_id]
 GO



ALTER TABLE [app_NlpApp2].[crf]
 ADD CONSTRAINT [PK_crf_crf_id]
 PRIMARY KEY 
   CLUSTERED ([crf_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_element_crf_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[crf_element] DROP CONSTRAINT [PK_crf_element_crf_id]
 GO



ALTER TABLE [app_NlpApp2].[crf_element]
 ADD CONSTRAINT [PK_crf_element_crf_id]
 PRIMARY KEY 
   CLUSTERED ([crf_id] ASC, [element_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_project_crf_project_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[crf_project] DROP CONSTRAINT [PK_crf_project_crf_project_id]
 GO



ALTER TABLE [app_NlpApp2].[crf_project]
 ADD CONSTRAINT [PK_crf_project_crf_project_id]
 PRIMARY KEY 
   CLUSTERED ([crf_project_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_project_frame_instance_crf_project_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[crf_project_frame_instance] DROP CONSTRAINT [PK_crf_project_frame_instance_crf_project_id]
 GO



ALTER TABLE [app_NlpApp2].[crf_project_frame_instance]
 ADD CONSTRAINT [PK_crf_project_frame_instance_crf_project_id]
 PRIMARY KEY 
   CLUSTERED ([crf_project_id] ASC, [frame_instance_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_crf_section_section_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[crf_section] DROP CONSTRAINT [PK_crf_section_section_id]
 GO



ALTER TABLE [app_NlpApp2].[crf_section]
 ADD CONSTRAINT [PK_crf_section_section_id]
 PRIMARY KEY 
   CLUSTERED ([section_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_data_type_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[data_type] DROP CONSTRAINT [PK_data_type_id]
 GO



ALTER TABLE [app_NlpApp2].[data_type]
 ADD CONSTRAINT [PK_data_type_id]
 PRIMARY KEY 
   CLUSTERED ([id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_documents_document_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[documents] DROP CONSTRAINT [PK_documents_document_id]
 GO



ALTER TABLE [app_NlpApp2].[documents]
 ADD CONSTRAINT [PK_documents_document_id]
 PRIMARY KEY 
   CLUSTERED ([document_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_element_element_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[element] DROP CONSTRAINT [PK_element_element_id]
 GO



ALTER TABLE [app_NlpApp2].[element]
 ADD CONSTRAINT [PK_element_element_id]
 PRIMARY KEY 
   CLUSTERED ([element_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_element_type_element_type_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[element_type] DROP CONSTRAINT [PK_element_type_element_type_id]
 GO



ALTER TABLE [app_NlpApp2].[element_type]
 ADD CONSTRAINT [PK_element_type_element_type_id]
 PRIMARY KEY 
   CLUSTERED ([element_type_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_element_value_element_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[element_value] DROP CONSTRAINT [PK_element_value_element_id]
 GO



ALTER TABLE [app_NlpApp2].[element_value]
 ADD CONSTRAINT [PK_element_value_element_id]
 PRIMARY KEY 
   CLUSTERED ([element_id] ASC, [value_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_frame_frame_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[frame] DROP CONSTRAINT [PK_frame_frame_id]
 GO



ALTER TABLE [app_NlpApp2].[frame]
 ADD CONSTRAINT [PK_frame_frame_id]
 PRIMARY KEY 
   CLUSTERED ([frame_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_frame_instance_frame_instance_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[frame_instance] DROP CONSTRAINT [PK_frame_instance_frame_instance_id]
 GO



ALTER TABLE [app_NlpApp2].[frame_instance]
 ADD CONSTRAINT [PK_frame_instance_frame_instance_id]
 PRIMARY KEY 
   CLUSTERED ([frame_instance_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_frame_instance_annotation_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[frame_instance_annotation] DROP CONSTRAINT [PK_frame_instance_annotation_id]
 GO



ALTER TABLE [app_NlpApp2].[frame_instance_annotation]
 ADD CONSTRAINT [PK_frame_instance_annotation_id]
 PRIMARY KEY 
   CLUSTERED ([id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_frame_slot_frame_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[frame_slot] DROP CONSTRAINT [PK_frame_slot_frame_id]
 GO



ALTER TABLE [app_NlpApp2].[frame_slot]
 ADD CONSTRAINT [PK_frame_slot_frame_id]
 PRIMARY KEY 
   CLUSTERED ([frame_id] ASC, [slot_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_provenance_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[provenance] DROP CONSTRAINT [PK_provenance_id]
 GO



ALTER TABLE [app_NlpApp2].[provenance]
 ADD CONSTRAINT [PK_provenance_id]
 PRIMARY KEY 
   CLUSTERED ([id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_slot_slot_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[slot] DROP CONSTRAINT [PK_slot_slot_id]
 GO



ALTER TABLE [app_NlpApp2].[slot]
 ADD CONSTRAINT [PK_slot_slot_id]
 PRIMARY KEY 
   CLUSTERED ([slot_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_user_user_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[user] DROP CONSTRAINT [PK_user_user_id]
 GO



ALTER TABLE [app_NlpApp2].[user]
 ADD CONSTRAINT [PK_user_user_id]
 PRIMARY KEY 
   CLUSTERED ([user_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'PK_value_value_id'  AND sc.name=N'app_NlpApp2'  AND type in (N'PK'))
ALTER TABLE [app_NlpApp2].[value] DROP CONSTRAINT [PK_value_value_id]
 GO



ALTER TABLE [app_NlpApp2].[value]
 ADD CONSTRAINT [PK_value_value_id]
 PRIMARY KEY 
   CLUSTERED ([value_id] ASC)

GO


USE test
GO
IF EXISTS (SELECT * FROM sys.objects so JOIN sys.schemas sc ON so.schema_id = sc.schema_id WHERE so.name = N'crf$name_UNIQUE'  AND sc.name=N'app_NlpApp2'  AND type in (N'UQ'))
ALTER TABLE [app_NlpApp2].[crf] DROP CONSTRAINT [crf$name_UNIQUE]
 GO



ALTER TABLE [app_NlpApp2].[crf]
 ADD CONSTRAINT [crf$name_UNIQUE]
 UNIQUE 
   NONCLUSTERED ([name] ASC)

GO


USE test
GO
IF  EXISTS (
       SELECT * FROM sys.objects  so JOIN sys.indexes si
       ON so.object_id = si.object_id
       JOIN sys.schemas sc
       ON so.schema_id = sc.schema_id
       WHERE so.name = N'annotation'  AND sc.name = N'app_NlpApp2'  AND si.name = N'idx_annot_start' AND so.type in (N'U'))
   DROP INDEX [app_NlpApp2].[annotation].[idx_annot_start] 
GO
CREATE NONCLUSTERED INDEX [idx_annot_start] ON [app_NlpApp2].[annotation]
(
   [start] ASC
)
WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY] 
GO
GO

USE test
GO

   /* 
   *   SSMA error messages:
   *   M2SS0020: The size of the index key is more than 900 bytes


IF  EXISTS (
       SELECT * FROM sys.objects  so JOIN sys.indexes si
       ON so.object_id = si.object_id
       JOIN sys.schemas sc
       ON so.schema_id = sc.schema_id
       WHERE so.name = N'annotation'  AND sc.name = N'app_NlpApp2'  AND si.name = N'idx_annot_type' AND so.type in (N'U'))
   DROP INDEX [app_NlpApp2].[annotation].[idx_annot_type] 
GO
CREATE NONCLUSTERED INDEX [idx_annot_type] ON [app_NlpApp2].[annotation]
(
   [annotation_type] ASC
)
WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY] 
GO
GO

   */
