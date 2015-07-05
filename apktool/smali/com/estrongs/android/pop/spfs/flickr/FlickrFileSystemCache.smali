.class public Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;
.super Ljava/lang/Object;


# static fields
.field private static final COLUMN_CTIME:Ljava/lang/String; = "checktime"

.field private static final COLUMN_DB_VERION:Ljava/lang/String; = "dbver"

.field private static final COLUMN_DIR_TYPE:Ljava/lang/String; = "dir_type"

.field private static final COLUMN_HASH:Ljava/lang/String; = "hash"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_ISDIR:Ljava/lang/String; = "isdir"

.field private static final COLUMN_MTIME:Ljava/lang/String; = "mtime"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final COLUMN_PATH:Ljava/lang/String; = "path"

.field private static final COLUMN_PID:Ljava/lang/String; = "parent_id"

.field private static final COLUMN_PRESENT:Ljava/lang/String; = "present"

.field private static final COLUMN_SERVER:Ljava/lang/String; = "server"

.field private static final COLUMN_SERVER_ID:Ljava/lang/String; = "server_id"

.field private static final COLUMN_SIZE:Ljava/lang/String; = "size"

.field private static final COLUMN_THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field private static final COLUMN_URL:Ljava/lang/String; = "url"

.field private static final COLUMN_URL_ID:Ljava/lang/String; = "urlid"

.field private static final DB_VERSION:I = 0x1

.field private static final dbname:Ljava/lang/String; = "Flickr_cachedb"

.field private static dbpath:Ljava/lang/String; = null

.field private static final filecache_table:Ljava/lang/String; = "file_cache"

.field private static inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache; = null

.field private static server_ids:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final server_table:Ljava/lang/String; = "server_id"

.field private static final version_table:Ljava/lang/String; = "cachedb_version"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->server_ids:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private static createFileCacheTables()V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS server_id (id INTEGER PRIMARY KEY,server TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS file_cache (id INTEGER PRIMARY KEY,server_id INTEGER,path TEXT,name TEXT,isdir INTEGER,hash  TEXT,mtime  INTEGER,parent_id  INTEGER,checktime INTEGER,size INTEGER,dir_type TEXT,present INTEGER,urlid TEXT,url TEXT,thumbnail_url TEXT)"

    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)"

    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getDBVersion()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->updateDatabase(I)V

    return-void
.end method

.method private static getDBVersion()I
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cachedb_version"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dbver"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO cachedb_version (dbver) values(1)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;
    .locals 6

    const/4 v0, 0x0

    const-class v3, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    if-nez v1, :cond_4

    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    invoke-direct {v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;-><init>()V

    sput-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Flickr_cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Flickr_cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Flickr_cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_5
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->createFileCacheTables()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->inst:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private qstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "\"\""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setPath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->dbpath:Ljava/lang/String;

    return-void
.end method

.method private static updateDatabase(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO file_cache (server_id,path,name,isdir,hash,mtime,size,parent_id,checktime,dir_type,url,present,urlid,thumbnail_url) values("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public addServer(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO server_id (server) values("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public countSubFiles(II)I
    .locals 1

    const-string v0, "isdir=0"

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->countSubsNumber(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countSubFolders(II)I
    .locals 1

    const-string v0, "isdir=1"

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->countSubsNumber(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countSubsNumber(IILjava/lang/String;)I
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    move v2, v8

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->countSubsNumber(IILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method public delServer(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getServerId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM server_id WHERE id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteEntry(ILcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM file_cache WHERE server_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget v0, p2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v0, v3, :cond_2

    iget v0, p2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->listFile(II)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    iget v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->deleteEntry(ILcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public deleteFile(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getFile(ILjava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->deleteEntry(ILcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;Z)V

    goto :goto_0
.end method

.method public getFile(II)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dir_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "url"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "present"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "urlid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "thumbnail_url"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    iput p2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    iput p1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getFile(ILjava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dir_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "url"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "present"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "urlid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "thumbnail_url"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    iput p1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    iput-object p2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getPathId(ILjava/lang/String;)I
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    move v0, v8

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getServerId(Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->server_ids:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "server_id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->server_ids:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v3, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->server_ids:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public listFile(II)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dir_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "url"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "present"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "urlid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "thumbnail_url"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    new-instance v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    iput p1, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    iput p2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    iget-object v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public udpateFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE file_cache SET mtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checktime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dir_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "urlid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thumbnail_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->qstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateFiles(IILjava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    iput p1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    iput p2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    if-nez p3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    iget v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    iget v5, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v4, v5, :cond_4

    iget v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    iget v5, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    iget-object v5, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    iget v5, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    if-ne v4, v5, :cond_1

    iget v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    iget v5, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    if-ne v4, v5, :cond_1

    iget v4, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    iget v5, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    if-eq v4, v5, :cond_2

    :cond_1
    iget v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->udpateFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V

    :cond_2
    :goto_2
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    goto :goto_1

    :cond_4
    iget v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    invoke-virtual {p0, v4, v2, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->deleteEntry(ILcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    if-nez p5, :cond_7

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    iget v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    invoke-virtual {p0, v2, v0, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->deleteEntry(ILcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;Z)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public updateFiles(IILjava/util/HashMap;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dir_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "url"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "present"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "urlid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "thumbnail_url"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    iput p1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    iput p2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->hash:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->checktime:I

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->dir_type:I

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->present:I

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v9

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->updateFiles(IILjava/util/HashMap;Ljava/util/HashMap;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method
