.class public Lcom/estrongs/android/ui/e/hl;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private l:I

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/c;-><init>(Landroid/content/Context;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/e/hl;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/hl;->q:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/hl;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "mime_type"

    const-string v4, "audio/*"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_ringtone"

    if-ne p3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_alarm"

    const/4 v4, 0x4

    if-ne p3, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_music"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/hl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/hl;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/e/hz;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/ui/e/hz;-><init>(Lcom/estrongs/android/ui/e/hl;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/hz;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ne p2, v0, :cond_3

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    if-ne p2, v1, :cond_4

    const-string v0, "is_notification"

    move-object v6, v0

    goto :goto_0

    :cond_4
    const-string v0, "is_alarm"

    move-object v6, v0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private l()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "add_to"

    aput-object v1, v0, v4

    const-string v1, "ringtone"

    aput-object v1, v0, v5

    const-string v1, "share"

    aput-object v1, v0, v6

    const-string v1, "property"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "backup_pcs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "add_to"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->n:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "moveout"

    aput-object v1, v0, v4

    const-string v1, "ringtone"

    aput-object v1, v0, v5

    const-string v1, "share"

    aput-object v1, v0, v6

    const-string v1, "property"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "backup_pcs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "moveout"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->p:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "ES"

    const-string v1, "can\'t create ringtone folder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/estrongs/fs/b/r;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v5}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v5

    new-instance v8, Lcom/estrongs/fs/impl/local/f;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v5, v8}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/a/a;->execute(Z)V

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_4

    move v0, v6

    goto/16 :goto_1

    :cond_4
    move v3, v6

    :goto_2
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    invoke-direct {p0, v2, p2}, Lcom/estrongs/android/ui/e/hl;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/e/hl;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_9

    move v0, v6

    goto/16 :goto_1

    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/hl;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/e/hl;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move v0, v7

    goto/16 :goto_1

    :cond_a
    move v3, v7

    goto :goto_2
.end method

.method public d(I)V
    .locals 7

    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/estrongs/android/ui/e/hl;->l:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/e/hl;->l:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    :goto_3
    array-length v1, v0

    if-le v1, v4, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    aget-object v2, v0, v5

    aput-object v2, v1, v5

    aget-object v0, v0, v6

    aput-object v0, v1, v6

    const/4 v0, 0x4

    const-string v2, "extra"

    aput-object v2, v1, v0

    move-object v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hl;->b([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    :goto_5
    invoke-static {v4}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->m:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "http://"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    :goto_6
    if-nez v1, :cond_6

    const-string v1, "delete"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ringtone"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hl;->b([Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->o:[Ljava/lang/String;

    goto :goto_5

    :pswitch_2
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->n:[Ljava/lang/String;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hl;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->p:[Ljava/lang/String;

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    move-object v4, v0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected h()V
    .locals 11

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0202a4

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/e/hm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/hm;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v2, 0x7f020295

    iget-object v3, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v4, 0x7f0b03e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/e/hn;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/hn;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f02029c

    iget-object v4, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v5, 0x7f0b0013

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/ui/e/hr;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/hr;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v4, 0x7f0202c1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v6, 0x7f0b03d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/ui/e/ht;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/e/ht;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v5, 0x7f0202d8

    iget-object v6, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v7, 0x7f0b0263

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/ui/e/hu;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/hu;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v6, 0x7f0202ac

    iget-object v7, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v8, 0x7f0b003c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/estrongs/android/ui/e/hw;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/e/hw;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v7, 0x7f0202a6

    iget-object v8, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v9, 0x7f0b02b9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/estrongs/android/ui/e/hx;

    invoke-direct {v7, p0}, Lcom/estrongs/android/ui/e/hx;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v8, 0x7f020288

    iget-object v9, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    const v10, 0x7f0b04f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/estrongs/android/ui/e/hy;

    invoke-direct {v8, p0}, Lcom/estrongs/android/ui/e/hy;-><init>(Lcom/estrongs/android/ui/e/hl;)V

    invoke-virtual {v0, v8}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    :cond_0
    iget-object v8, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v9, "play"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v8, "add_to"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "moveout"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "ringtone"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "share"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "property"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "delete"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    const-string v2, "backup_pcs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need PopAudioPlayer as the first argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->j:Ljava/util/Map;

    return-object v0
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/hl;->l()V

    return-void
.end method
