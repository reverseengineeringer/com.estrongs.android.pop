.class public Lcom/estrongs/android/pop/app/messagebox/w;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/pop/app/messagebox/w;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/x;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/messagebox/x;-><init>(Lcom/estrongs/android/pop/app/messagebox/w;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/w;
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/w;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/messagebox/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/w;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/w;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/messagebox/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/w;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/w;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/messagebox/ah;)I
    .locals 6

    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "msg_deadline"

    iget-object v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "msg_text"

    iget-object v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon_url"

    iget-object v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "click_action"

    iget v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "click_params"

    iget-object v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "guide_page"

    iget-object v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msg_status"

    iget v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "msg_type"

    iget v4, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages_list"

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/ah;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "msg_deadline"

    aput-object v0, v2, v8

    const-string v0, "msg_text"

    aput-object v0, v2, v1

    const-string v0, "icon_url"

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v1, "click_action"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "click_params"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "guide_page"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "msg_status"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "msg_type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "msg_recommend_id"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "msg_time"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "del"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "hpmessage_icon"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "hpmessage_content"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "hpmessage_button"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "st"

    aput-object v1, v2, v0

    const-string v0, "msg_time desc"

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const-string v3, "msg_status= ?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    :goto_0
    iget-object v11, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "msg_time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/16 v2, 0x1bc

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/app/messagebox/ah;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/messagebox/ah;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->b:I

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->l:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->k:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->h:J

    const/16 v0, 0xc

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->o:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    :goto_2
    iput-boolean v0, v2, Lcom/estrongs/android/pop/app/messagebox/ah;->j:Z

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v9

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v10

    :cond_3
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public a()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "msg_status=?"

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "msg_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages_list"

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "msg_deadline"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_text"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon_url"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_action"

    iget v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "click_params"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "guide_page"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_status"

    iget v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_type"

    iget v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_recommend_id"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "st"

    iget-boolean v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "hpmessage_icon"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpmessage_content"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpmessage_button"

    iget-object v2, p2, Lcom/estrongs/android/pop/app/messagebox/ah;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages_list"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 6

    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "del"

    const/16 v4, 0x1bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/messagebox/w;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages_list"

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
