.class public Lcom/estrongs/fs/b/f;
.super Lcom/estrongs/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/fs/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/h;)V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/f;->b:Lcom/estrongs/fs/h;

    iput-object p1, p0, Lcom/estrongs/fs/b/f;->b:Lcom/estrongs/fs/h;

    const-string v0, "title"

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/f;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/b/f;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/f;->startTime:J

    :cond_0
    const-string v0, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/f;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/f;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/f;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "file_type"

    iget-object v1, p0, Lcom/estrongs/fs/b/f;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/f;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/f;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/f;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/f;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/f;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public task()Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/fs/b/f;->b:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/fs/impl/adb/c;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x2710

    new-instance v2, Lcom/estrongs/a/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const v4, 0x7f0b01b6

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/f;->setTaskResult(ILjava/lang/Object;)V

    :cond_0
    return v0
.end method
