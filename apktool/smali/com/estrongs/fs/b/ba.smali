.class public Lcom/estrongs/fs/b/ba;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/net/Socket;

.field private e:J

.field private f:Landroid/app/Activity;

.field private g:Lcom/estrongs/fs/b/bl;

.field private h:Lcom/estrongs/a/a/h;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/b/bl;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Lcom/estrongs/a/a/h;

    invoke-direct {v0}, Lcom/estrongs/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ba;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ba;->j:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ba;->a:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    iget-object v0, p2, Lcom/estrongs/fs/b/bl;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    iput-object v0, p0, Lcom/estrongs/fs/b/ba;->d:Ljava/net/Socket;

    iget-wide v0, p2, Lcom/estrongs/fs/b/bl;->e:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/ba;->e:J

    iput-object p2, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ba;->canRestart:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ba;->canPause:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/fs/b/ba;->task_type:I

    iput-boolean p3, p0, Lcom/estrongs/fs/b/ba;->i:Z

    invoke-direct {p0}, Lcom/estrongs/fs/b/ba;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ba;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Object;Z)Lcom/estrongs/fs/b/ba;
    .locals 3

    check-cast p1, Lcom/estrongs/fs/b/bl;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/b/ba;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/b/ba;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/b/bl;Z)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ba;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ba;->a(Landroid/app/Activity;)Lcom/estrongs/fs/b/bk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/bk;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/bk;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ba;->execute()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/fs/b/ba;->execute()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ba;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/ba;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/fs/b/ba;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/fs/b/ba;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    return-object v0
.end method

.method private e()V
    .locals 4

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/ba;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_selected_count"

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget v1, v1, Lcom/estrongs/fs/b/bl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget-object v1, v1, Lcom/estrongs/fs/b/bl;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "size"

    iget-wide v2, p0, Lcom/estrongs/fs/b/ba;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ba;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)Lcom/estrongs/fs/b/bk;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/b/bk;

    const v1, 0x7f0b007b

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/estrongs/fs/b/bk;-><init>(Lcom/estrongs/fs/b/ba;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget v1, v1, Lcom/estrongs/fs/b/bl;->c:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget v1, v1, Lcom/estrongs/fs/b/bl;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/fs/b/bh;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/bh;-><init>(Lcom/estrongs/fs/b/ba;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ba;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    iget-object v2, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->f:J

    long-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/estrongs/a/a/m;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ba;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public task()Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for recving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/ba;->onProgress(Lcom/estrongs/a/a/m;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget-wide v4, v3, Lcom/estrongs/fs/b/bl;->e:J

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->e:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget v2, v2, Lcom/estrongs/fs/b/bl;->c:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    iget-object v4, v3, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget v3, v3, Lcom/estrongs/fs/b/bl;->d:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->c:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->d:J

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->d:Ljava/net/Socket;

    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/fs/b/ba;->a:Ljava/lang/Long;

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    move v4, v2

    :goto_1
    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->g:Lcom/estrongs/fs/b/bl;

    iget-boolean v2, v2, Lcom/estrongs/fs/b/bl;->k:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/ba;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/fs/b/bb;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/fs/b/bb;-><init>(Lcom/estrongs/fs/b/ba;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_3
    if-nez v4, :cond_17

    const/4 v2, 0x1

    :goto_4
    return v2

    :catch_0
    move-exception v2

    const/16 v3, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    const-string v5, "Sender disconnected."

    invoke-direct {v4, v5, v2}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/fs/b/ba;->setTaskResult(ILjava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/fs/b/ba;->i:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/fs/b/ba;->j:Z

    if-nez v5, :cond_4

    const-wide/16 v10, 0xc8

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v13

    const/4 v5, 0x0

    :try_start_4
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v5

    :goto_5
    :try_start_5
    const-string v6, "OVER"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    move v4, v7

    goto/16 :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/b/ba;->c:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x2f

    invoke-virtual {v13, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/estrongs/fs/d;->g(Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_7
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v4, :cond_18

    :try_start_6
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    iput-object v14, v2, Lcom/estrongs/a/a/h;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/b/ba;->d()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    iget-boolean v4, v2, Lcom/estrongs/a/a/h;->f:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ba;->h:Lcom/estrongs/a/a/h;

    iget v2, v2, Lcom/estrongs/a/a/h;->g:I

    const/4 v10, 0x2

    if-ne v2, v10, :cond_8

    const/4 v2, 0x1

    :goto_6
    move v10, v2

    move v11, v4

    :goto_7
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v2, 0x4000

    new-array v15, v2, [B

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v4, 0x0

    :goto_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x2

    move v2, v7

    :goto_9
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ba;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v6, Lcom/estrongs/a/a/m;->d:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/estrongs/a/a/m;->d:J

    if-eqz v2, :cond_10

    :try_start_8
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move v4, v2

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :catchall_0
    move-exception v2

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_9
    if-eqz v10, :cond_a

    :try_start_b
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    if-nez v6, :cond_b

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v6

    :cond_b
    cmp-long v2, v4, v16

    if-ltz v2, :cond_c

    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move v2, v7

    goto :goto_9

    :cond_c
    array-length v2, v15

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v18, v18, v4

    cmp-long v2, v18, v16

    if-lez v2, :cond_d

    const/4 v2, 0x0

    sub-long v18, v16, v4

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v15, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    :goto_b
    if-gtz v2, :cond_e

    move v2, v7

    goto :goto_9

    :cond_d
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    goto :goto_b

    :cond_e
    if-eqz v6, :cond_f

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v15, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    const/16 v2, 0x9

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x2

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/estrongs/fs/b/ba;->e:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_8

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v7

    goto/16 :goto_9

    :catch_4
    move-exception v4

    move v4, v2

    goto/16 :goto_1

    :cond_10
    cmp-long v4, v16, v4

    if-eqz v4, :cond_11

    :try_start_c
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v4}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_11
    invoke-static {v14}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)V

    const/16 v4, 0x2f

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_12
    move v4, v11

    move v7, v2

    move v2, v10

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v5, 0x7f0b0036

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Lcom/estrongs/fs/b/ba;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/ba;->b()Z

    move-result v2

    if-eqz v2, :cond_14

    check-cast v3, Lcom/estrongs/fs/b/ba;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ba;->c()Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const v6, 0x7f0b035c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/FexApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v7

    const-class v8, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "openfileOrFolder"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/FexApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_14
    check-cast v3, Lcom/estrongs/fs/b/ba;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ba;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_15
    const/4 v2, 0x1

    if-ne v4, v2, :cond_16

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    const v6, 0x7f0b00ec

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/b/ba;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_16
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ba;->f:Landroid/app/Activity;

    const v6, 0x7f0b00eb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/b/ba;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_4

    :catch_5
    move-exception v6

    goto/16 :goto_5

    :catch_6
    move-exception v6

    goto/16 :goto_a

    :catch_7
    move-exception v2

    goto/16 :goto_3

    :catch_8
    move-exception v2

    goto/16 :goto_c

    :cond_18
    move v10, v2

    move v11, v4

    goto/16 :goto_7
.end method
