.class public Lcom/estrongs/android/pop/app/a/al;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a/al;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/al;->e:Z

    iput p1, p0, Lcom/estrongs/android/pop/app/a/al;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a/al;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/al;->e:Z

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    iput-object p3, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a/al;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/al;->e:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    return-void
.end method

.method private a(JJ)J
    .locals 9

    const-wide/16 v6, 0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND play_order>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sub-long v0, p3, p1

    add-long/2addr v0, v6

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND play_order<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v0, p1, p3

    add-long/2addr v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/al;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/a/ak;J)V
    .locals 12

    const-wide/16 v10, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    iget-wide v0, p1, Lcom/estrongs/android/pop/app/a/ak;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/estrongs/android/pop/app/a/ak;->d:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/estrongs/android/pop/app/a/al;->a(JJ)J

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, p2

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    cmp-long v0, v6, p2

    if-gez v0, :cond_2

    add-long v0, v6, v10

    move-wide v2, v0

    :goto_1
    cmp-long v0, v2, p2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v8, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    add-long v0, v2, v10

    move-wide v2, v0

    goto :goto_1

    :cond_2
    move-wide v2, p2

    :goto_2
    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v8, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    add-long v0, v2, v10

    move-wide v2, v0

    goto :goto_2

    :cond_3
    iput-wide v4, p1, Lcom/estrongs/android/pop/app/a/ak;->d:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    long-to-int v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    long-to-int v1, p2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/a/ak;->a:J

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
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, ""

    aput-object v4, v1, v0

    const/4 v0, 0x1

    const-string v4, ""

    aput-object v4, v1, v0

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v8, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?"

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/a/ak;->d:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    move v1, v0

    :goto_3
    move v5, v2

    :goto_4
    if-ge v5, v1, :cond_8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v1, -0x1

    if-ge v5, v0, :cond_5

    const/16 v0, 0x1f4

    move v3, v0

    :goto_5
    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_7

    mul-int/lit16 v0, v5, 0x1f4

    add-int/2addr v0, v4

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v10, v0, Lcom/estrongs/android/pop/app/a/ak;->a:J

    if-nez v4, :cond_6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/lit16 v3, v3, 0x1f4

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_5

    :cond_6
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_7
    :try_start_1
    const-string v0, "audio_playlists_map"

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

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/a/al;->e:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/a/al;->c:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p1, v2, v3}, Lcom/estrongs/android/pop/app/a/ak;-><init>(Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/a/ak;->c:J

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->b()V

    :cond_1
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "audio_playlists_map"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "play_order"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_a

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "_data"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "play_order"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "album"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "artist"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "duration"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/a/ak;

    move-wide v4, v1

    invoke-direct/range {v0 .. v12}, Lcom/estrongs/android/pop/app/a/ak;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v13, :cond_b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v13, v1

    goto :goto_1

    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    if-eqz v13, :cond_a

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    move v6, v0

    :goto_4
    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v6, :cond_a

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v6, -0x1

    if-ge v7, v0, :cond_4

    const/16 v0, 0x1f4

    move v1, v0

    :goto_6
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_6

    mul-int/lit16 v0, v7, 0x1f4

    add-int/2addr v0, v2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_4

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v6, -0x1

    mul-int/lit16 v1, v1, 0x1f4

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_5
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_6
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "duration"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    if-eqz v0, :cond_7

    iput-object v2, v0, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    iput-object v4, v0, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    iput-wide v10, v0, Lcom/estrongs/android/pop/app/a/ak;->h:J

    goto :goto_9

    :catch_0
    move-exception v0

    :cond_8
    :goto_a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_5

    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    goto/16 :goto_0

    :cond_b
    move-object v1, v13

    goto/16 :goto_2

    :cond_c
    move-object v1, v13

    goto/16 :goto_3
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_playlists"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "audio_playlists_map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public e()V
    .locals 12

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_a

    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/a/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_playlists"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->a()Lcom/estrongs/android/pop/app/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/an;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT into audio_playlists_map (_data,playlist_id,play_order,title,album,artist,duration) values(?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/a/al;->a:J

    iput-wide v6, v1, Lcom/estrongs/android/pop/app/a/ak;->c:J

    :cond_2
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v10, v1, Lcom/estrongs/android/pop/app/a/ak;->c:J

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v10, v1, Lcom/estrongs/android/pop/app/a/ak;->d:J

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v10, v1, Lcom/estrongs/android/pop/app/a/ak;->h:J

    cmp-long v1, v6, v10

    if-gtz v1, :cond_6

    const/4 v6, 0x7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/ak;

    iget-wide v10, v1, Lcom/estrongs/android/pop/app/a/ak;->h:J

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    if-eqz v3, :cond_0

    const-string v1, "audio_playlists_map"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v1, v8

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/al;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/a/ak;->a:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v8

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    move v2, v8

    goto/16 :goto_1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/a/al;->e:Z

    return v0
.end method
