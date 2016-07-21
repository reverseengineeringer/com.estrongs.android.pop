.class public Lcom/estrongs/android/ui/e/iq;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/e/iq;->i:I

    iput-object p1, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-void
.end method

.method private static a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

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

.method static synthetic a(Lcom/estrongs/android/ui/e/iq;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/e/ji;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/ji;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ji;->show()V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/fs/h;)V
    .locals 2

    if-nez p1, :cond_0

    const v0, 0x7f080066

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/hf;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/dialog/hf;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hf;->a()V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/e/is;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/ui/e/is;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/is;->start()V

    return-void
.end method

.method public static b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

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

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

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

    invoke-static {p0, v2, p2}, Lcom/estrongs/android/ui/e/iq;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

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
    invoke-static {p0, p1, p2}, Lcom/estrongs/android/ui/e/iq;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_9
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move v0, v7

    goto/16 :goto_1

    :cond_a
    move v3, v7

    goto :goto_2
.end method

.method private static c(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-ne p2, v0, :cond_3

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

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

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

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
    if-eqz v8, :cond_6

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v7

    goto :goto_1

    :cond_9
    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v0, v7

    goto :goto_1

    :cond_b
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    if-nez v0, :cond_c

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_c
    :goto_2
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v8

    :goto_3
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v0, v7

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v7

    :goto_4
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v7

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/estrongs/android/ui/e/iq;->i:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/e/iq;->i:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->b:[Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->c:[Ljava/lang/String;

    :goto_3
    invoke-static {v4}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->c:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "http://"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    :goto_4
    if-nez v1, :cond_3

    const-string v1, "delete"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->b:[Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ringtone"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->e:[Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->d:[Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->b:[Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->f:[Ljava/lang/String;

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move-object v4, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public d()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

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

    const/4 v1, 0x7

    const-string v2, "search"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->c:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "add_to"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->d:[Ljava/lang/String;

    const/16 v0, 0x8

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

    const/4 v1, 0x7

    const-string v2, "search"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->g:[Ljava/lang/String;

    const/16 v0, 0x8

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

    const/4 v1, 0x7

    const-string v2, "search"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->e:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "play"

    aput-object v1, v0, v3

    const-string v1, "moveout"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->f:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->c:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->e:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iq;->g:[Ljava/lang/String;

    const-string v1, "backup_pcs"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/iq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->g:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 12

    const v6, 0x7f02040b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020432

    iget-object v2, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f08009a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/e/ir;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ir;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v2, 0x7f020434

    iget-object v3, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v4, 0x7f080141

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/e/iv;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/iv;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v4, 0x7f08007d

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/ui/e/iz;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/iz;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v5, 0x7f0806d9

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/ui/e/jb;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/e/jb;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v5, 0x7f020424

    iget-object v6, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v7, 0x7f0803dd

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/ui/e/jc;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/jc;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v6, 0x7f02044c

    iget-object v7, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v8, 0x7f0800ac

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/estrongs/android/ui/e/je;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/e/je;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v7, 0x7f02043a

    iget-object v8, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v9, 0x7f08022e

    invoke-virtual {v8, v9}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/estrongs/android/ui/e/jf;

    invoke-direct {v7, p0}, Lcom/estrongs/android/ui/e/jf;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v8}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v8, 0x7f0203fa

    iget-object v9, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v10, 0x7f0802b2

    invoke-virtual {v9, v10}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/estrongs/android/ui/e/jg;

    invoke-direct {v8, p0}, Lcom/estrongs/android/ui/e/jg;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v0, v8}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    :cond_0
    new-instance v8, Lcom/estrongs/android/view/a/a;

    const v9, 0x7f02046e

    iget-object v10, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v11, 0x7f08072f

    invoke-virtual {v10, v11}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/estrongs/android/ui/e/jh;

    invoke-direct {v9, p0}, Lcom/estrongs/android/ui/e/jh;-><init>(Lcom/estrongs/android/ui/e/iq;)V

    invoke-virtual {v8, v9}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v10, "play"

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v9, "add_to"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "moveout"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "ringtone"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "share"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "property"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "delete"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "search"

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/iq;->a:Ljava/util/Map;

    const-string v2, "backup_pcs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
