.class public Lcom/estrongs/android/util/be;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/util/be;

.field private static d:I

.field private static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/util/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/util/be;->d:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/be;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
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

    sput-object v0, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/LinkedList;Lcom/estrongs/android/util/bf;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/util/bf;",
            ">;",
            "Lcom/estrongs/android/util/bf;",
            "Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method

.method private static b(I)V
    .locals 3

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    :try_start_0
    const-string v0, "ALTER TABLE visit_history ADD isdir INTEGER"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x3

    if-ge p0, v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/be;->l()V

    :cond_2
    if-ge p0, v2, :cond_3

    :try_start_1
    const-string v0, "ALTER TABLE visit_history ADD title TEXT"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    const-string v0, "UPDATE cachedb_version SET dbver=4"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized c()Lcom/estrongs/android/util/be;
    .locals 5

    const/4 v0, 0x0

    const-class v1, Lcom/estrongs/android/util/be;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    if-nez v2, :cond_3

    sget-object v2, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/estrongs/android/pop/z;->ao:Z

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/be;

    invoke-direct {v0}, Lcom/estrongs/android/util/be;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/be;->b(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/util/be;

    invoke-direct {v2}, Lcom/estrongs/android/util/be;-><init>()V

    sput-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visit_history"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v2, v2, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visit_history"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visit_history"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v2, v2, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visit_history"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/be;

    invoke-direct {v0}, Lcom/estrongs/android/util/be;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/estrongs/android/util/be;->j()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/util/be;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "visit_history"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Lcom/estrongs/android/util/be;

    invoke-direct {v0}, Lcom/estrongs/android/util/be;-><init>()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/be;

    invoke-direct {v0}, Lcom/estrongs/android/util/be;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "\"\""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static j()V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS visit_history (id INTEGER PRIMARY KEY,isdir INTEGER,title TEXT,path TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS web_icon (domain TEXT UNIQUE, icon BLOB)"

    sget-object v1, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v1, v1, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/be;->k()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/be;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static k()I
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

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

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO cachedb_version (dbver) values(4)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x4

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v1, :cond_1

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

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static l()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "visit_history"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

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

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE visit_history  SET path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/android/util/be;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/be;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v2, v2, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

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

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private m()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget v0, Lcom/estrongs/android/util/be;->d:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "web_icon"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "domain"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icon"

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

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_5

    add-int/lit8 v0, v0, -0x14

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_1
    sget-object v2, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :goto_2
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    sget-object v2, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    move-object v0, v8

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p2, v1

    :goto_0
    return-object p2

    :cond_0
    :try_start_0
    sget-object v3, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v3

    move-object p2, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    sget-object v2, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v5, 0x14

    if-le v2, v5, :cond_7

    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v6, v0, Lcom/estrongs/android/util/bf;->b:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/estrongs/android/util/bf;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object p2, v0, Lcom/estrongs/android/util/bf;->e:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v2, :cond_2

    iget-object v6, v0, Lcom/estrongs/android/util/bf;->b:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/estrongs/android/util/bf;->e:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/estrongs/android/util/bf;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/util/bf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    goto :goto_0

    :cond_4
    :try_start_3
    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p2, v0

    goto/16 :goto_0

    :cond_7
    move v2, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 3

    sget v0, Lcom/estrongs/android/util/be;->d:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sput p1, Lcom/estrongs/android/util/be;->d:I

    :goto_1
    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v2, Lcom/estrongs/android/util/be;->d:I

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V
    .locals 6

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p3, v1, :cond_0

    :cond_2
    invoke-static {p2}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/estrongs/android/util/be;->d:I

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p2, v0}, Lcom/estrongs/android/pop/utils/aa;->b(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p4}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    :cond_5
    sget-object v3, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_1
    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v5, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object p1, v0, Lcom/estrongs/android/util/bf;->d:Ljava/lang/String;

    iput p3, v0, Lcom/estrongs/android/util/bf;->c:I

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->e:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    :try_start_2
    new-instance v4, Lcom/estrongs/android/util/bf;

    invoke-direct {v4}, Lcom/estrongs/android/util/bf;-><init>()V

    iput-object p1, v4, Lcom/estrongs/android/util/bf;->d:Ljava/lang/String;

    iput-object p2, v4, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/android/util/bf;->b:Ljava/lang/String;

    iput p3, v4, Lcom/estrongs/android/util/bf;->c:I

    iput-object v2, v4, Lcom/estrongs/android/util/bf;->e:Landroid/graphics/Bitmap;

    if-ne p3, v1, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, v4, Lcom/estrongs/android/util/bf;->f:Z

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/estrongs/android/util/be;->d:I

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4, p5}, Lcom/estrongs/android/util/be;->a(Ljava/util/LinkedList;Lcom/estrongs/android/util/bf;Z)V

    :cond_8
    :goto_3
    monitor-exit v3

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    if-eqz p5, :cond_8

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4, p5}, Lcom/estrongs/android/util/be;->a(Ljava/util/LinkedList;Lcom/estrongs/android/util/bf;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    :goto_1
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    move v3, v5

    :cond_1
    move-object v0, p0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/util/be;->g:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/util/be;->g:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/util/be;->g:Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/be;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/util/be;->i()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()[Lcom/estrongs/android/util/bf;
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/util/bf;

    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/util/bf;

    return-object v0
.end method

.method public f()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "DELETE FROM visit_history"

    iget-object v1, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/util/be;->g()V

    sget-object v0, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    iget-object v4, v0, Lcom/estrongs/android/util/bf;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "isdir"

    iget v4, v0, Lcom/estrongs/android/util/bf;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "path"

    iget-object v0, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "visit_history"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :try_start_1
    const-string v0, "DELETE FROM web_icon"

    iget-object v1, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/util/be;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "domain"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "web_icon"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public i()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget v0, Lcom/estrongs/android/util/be;->d:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/util/be;->m()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v3, "isdir=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/util/be;->b:Lcom/estrongs/android/util/be;

    iget-object v0, v0, Lcom/estrongs/android/util/be;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "visit_history"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "path"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "isdir"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "title"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget v1, Lcom/estrongs/android/util/be;->d:I

    if-le v0, v1, :cond_4

    sget v1, Lcom/estrongs/android/util/be;->d:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_2
    sget-object v1, Lcom/estrongs/android/util/be;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :goto_3
    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :cond_7
    move-object v4, v8

    move-object v3, v8

    goto/16 :goto_1
.end method
