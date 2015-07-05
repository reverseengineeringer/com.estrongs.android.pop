.class public Lcom/estrongs/fs/impl/local/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Random;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 8

    const/16 v6, 0xa

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/l;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    new-instance v3, Lcom/estrongs/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v2, :cond_0

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-ltz v1, :cond_5

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "offset > filesize"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/estrongs/fs/impl/local/e;

    invoke-direct {v1, v3, p2, p3}, Lcom/estrongs/fs/impl/local/e;-><init>(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/l;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/impl/local/g;

    invoke-direct {v1, v0, p1, p2}, Lcom/estrongs/fs/impl/local/g;-><init>(Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v4

    invoke-static/range {p0 .. p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/w;->a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/w;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/impl/local/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    const/4 v2, 0x6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v8, v7

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v6, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    if-nez v4, :cond_c

    invoke-static {}, Lcom/estrongs/android/nativetool/c;->a()Landroid/net/LocalSocket;

    move-result-object v2

    move-object v5, v2

    :goto_1
    if-eqz v7, :cond_b

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    const-string v4, "countChildren"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "countChildren"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    array-length v8, v7

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_a

    aget-object v9, v7, v4

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    if-nez v9, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    const/4 v10, 0x7

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_8
    new-instance v10, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v10, v5, v9, v2}, Lcom/estrongs/fs/impl/local/f;-><init>(Landroid/net/LocalSocket;Ljava/io/File;Z)V

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_9

    const/16 v9, 0xb

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v6, v9, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [J

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v10}, Lcom/estrongs/a/b/o;->a(Ljava/lang/Object;[J)V

    invoke-interface/range {p2 .. p2}, Lcom/estrongs/a/b/o;->a()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_a
    if-eqz v5, :cond_b

    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_3
    move-object v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_c
    move-object v5, v2

    goto/16 :goto_1
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/util/al;

    invoke-direct {v2, p0}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v3, "setReadable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setWritable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setExecutable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->bm(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [J

    invoke-interface {p2, p1, v0}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/l;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/File;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Lcom/estrongs/a/b/s;)Z
    .locals 10

    invoke-interface {p1}, Lcom/estrongs/a/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->j:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-static {p0}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/impl/local/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_4
    :goto_2
    if-eqz v0, :cond_21

    const-wide/16 v6, 0x1

    invoke-interface {p1, v6, v7}, Lcom/estrongs/a/b/s;->a(J)V

    instance-of v3, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v3, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_13

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->b(Ljava/io/File;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/estrongs/fs/b/ab;->a(Ljava/lang/String;)V

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_a

    array-length v7, v3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_a

    aget-object v8, v3, v0

    invoke-static {v8, p1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/File;Lcom/estrongs/a/b/s;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->b(Ljava/io/File;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    if-nez v3, :cond_24

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v7, 0xb

    if-lt v0, v7, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/estrongs/fs/impl/local/a;->d(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_f

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_7
    if-nez v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v3

    const/16 v6, 0x12

    if-lt v3, v6, :cond_4

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->c(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_22

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto/16 :goto_5

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    move v0, v3

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/estrongs/fs/impl/local/j;->c(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_12
    if-eqz v1, :cond_4

    const/16 v3, 0x11

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_13
    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_17

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->b(Ljava/io/File;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_1c

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget v7, v0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_9
    if-nez v3, :cond_24

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v7, 0xb

    if-lt v0, v7, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/estrongs/fs/impl/local/a;->d(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_1d

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_a
    if-nez v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v3

    const/16 v6, 0x12

    if-lt v3, v6, :cond_4

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_20

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->c(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_22

    instance-of v0, v1, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto/16 :goto_8

    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_a

    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/estrongs/fs/impl/local/j;->c(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_20
    if-eqz v1, :cond_4

    const/16 v3, 0x11

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_21
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->b(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_22
    move v0, v3

    goto/16 :goto_2

    :cond_23
    move v0, v3

    goto/16 :goto_a

    :cond_24
    move v0, v3

    goto/16 :goto_2

    :cond_25
    move v0, v3

    goto/16 :goto_7

    :cond_26
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/w;->a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/local/w;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7, v2}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v4

    const/16 v5, 0x12

    if-lt v4, v5, :cond_6

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v5

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/fs/b/ar;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/estrongs/fs/b/p;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/estrongs/fs/b/ao;

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/estrongs/fs/impl/local/i;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/local/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/local/i;->start()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_6

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v7}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZZ)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6, v0}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_1
    :try_start_1
    sget-boolean v4, Lcom/estrongs/android/pop/z;->aa:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_2

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move v1, v2

    :goto_2
    if-nez v1, :cond_8

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_8

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/a;->b(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    move v1, v3

    :goto_3
    if-eqz v1, :cond_3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_4
    if-nez v1, :cond_8

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v4, 0x12

    if-lt v2, v4, :cond_8

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_2
    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :goto_5
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/d;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move v2, v0

    :goto_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/j;->b(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    :cond_8
    move v0, v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_6

    :cond_9
    move v2, v0

    goto/16 :goto_1
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;
    .locals 2

    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    :goto_0
    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;ZZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;ZZ)Ljava/io/OutputStream;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/util/bd;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->t:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    sget-boolean v2, Lcom/estrongs/android/pop/z;->aa:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_3
    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/local/j;->a(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_3

    invoke-static {v0, v2}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Folder"

    iput-object v0, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v2, v4, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/estrongs/fs/c;->f:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/estrongs/fs/c;->g:I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "Folder"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, v0, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-boolean v3, v0, Lcom/estrongs/fs/c;->m:Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/estrongs/fs/c;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/fs/c;->e:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/fs/c;->j:J

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->k:Z

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/estrongs/fs/c;->d:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, v2, Lcom/estrongs/fs/c;->e:J

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v6, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-static {p0, v3}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    :goto_2
    sget-boolean v4, Lcom/estrongs/android/pop/z;->aa:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_5

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/File;)V

    :cond_5
    if-nez v2, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/a;->c(Ljava/lang/String;Z)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v3

    const/16 v4, 0x12

    if-lt v3, v4, :cond_6

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :try_start_3
    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    :cond_6
    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/j;->b(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_3

    :catch_2
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_4

    :catch_3
    move-exception v3

    goto/16 :goto_1

    :cond_9
    move v2, v0

    goto :goto_2
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/estrongs/fs/c;->d:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/media/d;->f(Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/k/b;->b(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/media/d;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/k/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;ZZ)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    sget-object v4, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
