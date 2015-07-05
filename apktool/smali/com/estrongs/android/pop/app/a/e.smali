.class public abstract Lcom/estrongs/android/pop/app/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/e/iw;

.field b:Lcom/estrongs/android/pop/app/a/ac;

.field private c:Lcom/estrongs/android/ui/e/ic;

.field private d:Lcom/estrongs/android/view/a/a;

.field private e:Lcom/estrongs/android/view/a/a;

.field private f:Lcom/estrongs/android/view/a/a;

.field private g:Lcom/estrongs/android/view/a/a;

.field private h:Lcom/estrongs/android/view/a/a;

.field private i:Lcom/estrongs/android/view/a/a;

.field private j:Lcom/estrongs/android/view/a/a;

.field private k:Lcom/estrongs/android/view/a/a;

.field private l:Lcom/estrongs/android/view/a/a;

.field private m:Lcom/estrongs/android/view/a/a;

.field private n:Lcom/estrongs/android/view/a/a;

.field private o:Lcom/estrongs/android/view/a/a;

.field private p:Lcom/estrongs/android/view/a/a;

.field private q:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a/e;->e()V

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
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

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

.method static synthetic a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/app/a/ak;Lcom/estrongs/android/pop/app/a/al;)V
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/e;Lcom/estrongs/android/pop/app/a/ak;Lcom/estrongs/android/pop/app/a/al;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/ak;Lcom/estrongs/android/pop/app/a/al;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/e;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/e;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0b03ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/ui/e/iw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/a/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/a/l;-><init>(Lcom/estrongs/android/pop/app/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/l;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-ne p2, v0, :cond_3

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

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
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z
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
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

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
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

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
    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

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

.method private e()V
    .locals 5

    const v4, 0x7f02029c

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2, v2}, Lcom/estrongs/android/ui/e/iw;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    new-instance v0, Lcom/estrongs/android/ui/e/ic;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/e/ic;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->c:Lcom/estrongs/android/ui/e/ic;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->c:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ic;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->c:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/ic;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    new-instance v1, Lcom/estrongs/android/pop/app/a/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/f;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ja;)V

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03e4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/o;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->d:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03d4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/r;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->e:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03e1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/s;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->f:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03e0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/u;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->m:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03e2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/v;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->l:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03e3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/x;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->k:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b0263

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/z;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->g:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/ab;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->h:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b04f4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/g;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->i:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b02b9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/h;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->j:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/i;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->n:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/j;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->p:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b04ad

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/k;-><init>(Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->o:Lcom/estrongs/android/view/a/a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

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

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

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

    invoke-direct {p0, v2, p2}, Lcom/estrongs/android/pop/app/a/e;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/e;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

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
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/e;->c(Ljava/lang/String;I)Ljava/lang/String;

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

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/e;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move v0, v7

    goto/16 :goto_1

    :cond_a
    move v3, v7

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->c:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ic;->b()Lcom/estrongs/android/ui/e/jk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/jk;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->p:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i()I

    move-result v0

    if-nez v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/e;->j:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->i:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->o:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->h:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->g:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_4
    const/4 v0, 0x1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->f:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->e:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->d:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->c()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->m:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->k:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->n:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->q:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->l:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    goto :goto_3

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    :cond_0
    return-void
.end method
