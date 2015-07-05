.class public Lcom/estrongs/android/pop/app/a/ao;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/pop/app/a/ao;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/al;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/estrongs/android/pop/app/a/al;

.field private d:Lcom/estrongs/android/pop/app/a/al;

.field private e:Z

.field private f:Lcom/estrongs/android/pop/app/a/ap;

.field private g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->g:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    new-instance v1, Lcom/estrongs/android/pop/app/a/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/aq;-><init>(Lcom/estrongs/android/pop/app/a/ao;)V

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/aq;->a(Lcom/estrongs/android/pop/app/a/aq;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/ao;->j()Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/a/ao;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/a/ao;->b:Lcom/estrongs/android/pop/app/a/ao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/a/ao;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/a/ao;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/a/ao;->b:Lcom/estrongs/android/pop/app/a/ao;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/a/ao;->b:Lcom/estrongs/android/pop/app/a/ao;

    return-object v0
.end method

.method public static k()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/a/ao;->b:Lcom/estrongs/android/pop/app/a/ao;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/a/al;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/a/ao;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/a/al;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/a/al;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->e()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/a/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/a/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/al;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v8, -0x1

    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    move v1, v0

    :goto_1
    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_6

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v1, -0x1

    if-ge v5, v0, :cond_3

    const/16 v0, 0x1f4

    move v3, v0

    :goto_3
    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_5

    mul-int/lit16 v0, v5, 0x1f4

    add-int/2addr v0, v4

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    iget-wide v10, v0, Lcom/estrongs/android/pop/app/a/al;->a:J

    if-nez v4, :cond_4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/lit16 v3, v3, 0x1f4

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_3

    :cond_4
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_5
    :try_start_1
    const-string v0, "audio_playlists_map"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "audio_playlists"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public b()Lcom/estrongs/android/pop/app/a/al;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/a/al;

    const v1, 0x7f0b03da

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/a/al;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/ao;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    return-object v0
.end method

.method public b(Lcom/estrongs/android/pop/app/a/al;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/ao;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    return v0
.end method

.method public e()Lcom/estrongs/android/pop/app/a/al;
    .locals 14

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/estrongs/android/pop/app/a/ao;->g:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/estrongs/android/pop/app/a/al;

    const v1, 0x7f0b0396

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/a/al;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ay()Z

    move-result v8

    const v9, 0x7d000

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/al;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    const/16 v0, 0x80

    new-array v2, v0, [Ljava/lang/String;

    array-length v0, v2

    move v3, v6

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_data"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    add-int/lit16 v0, v3, 0x80

    new-array v1, v0, [Ljava/lang/String;

    array-length v0, v1

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v10, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v2, v3, 0x1

    aput-object v5, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_2
    if-ge v0, v3, :cond_3

    if-eqz v8, :cond_1

    :try_start_2
    new-instance v1, Ljava/io/File;

    aget-object v5, v2, v0

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v10

    int-to-long v12, v9

    cmp-long v1, v10, v12

    if-gez v1, :cond_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    aget-object v5, v2, v0

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    :cond_2
    :goto_4
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    return-object v0

    :cond_3
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->d:Lcom/estrongs/android/pop/app/a/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->h:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->c:Lcom/estrongs/android/pop/app/a/al;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    return v0
.end method

.method public i()V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    :try_start_0
    new-instance v3, Lcom/estrongs/android/pop/app/a/aq;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/a/aq;-><init>(Lcom/estrongs/android/pop/app/a/ao;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/aq;->a(Lcom/estrongs/android/pop/app/a/aq;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    invoke-static {v3, v6}, Lcom/estrongs/android/pop/app/a/aq;->a(Lcom/estrongs/android/pop/app/a/aq;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/pop/app/a/al;

    invoke-direct {v8, v6}, Lcom/estrongs/android/pop/app/a/al;-><init>(Ljava/lang/String;)V

    array-length v9, v7

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_0

    aget-object v10, v7, v0

    invoke-virtual {v8, v10}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/estrongs/android/pop/app/a/al;->e()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v6}, Lcom/estrongs/android/pop/app/a/aq;->b(Lcom/estrongs/android/pop/app/a/aq;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput-boolean v11, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/a/ap;->a()V

    iput-object v12, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    iput-boolean v11, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/a/ap;->a()V

    iput-object v12, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-boolean v11, p0, Lcom/estrongs/android/pop/app/a/ao;->e:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/a/ap;->a()V

    iput-object v12, p0, Lcom/estrongs/android/pop/app/a/ao;->f:Lcom/estrongs/android/pop/app/a/ap;

    :cond_3
    throw v0
.end method

.method public j()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/al;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "audio_playlists"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    new-instance v4, Lcom/estrongs/android/pop/app/a/al;

    int-to-long v6, v0

    invoke-direct {v4, v6, v7, v2}, Lcom/estrongs/android/pop/app/a/al;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bak"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->d()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ao;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v8

    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_7
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method
