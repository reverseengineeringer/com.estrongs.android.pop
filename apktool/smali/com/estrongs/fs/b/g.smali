.class public Lcom/estrongs/fs/b/g;
.super Lcom/estrongs/a/a;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Z

.field d:Lcom/estrongs/fs/b/h;

.field protected e:Z

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Long;

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/b/g;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput v2, p0, Lcom/estrongs/fs/b/g;->a:I

    iput v2, p0, Lcom/estrongs/fs/b/g;->b:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/g;->c:Z

    new-instance v0, Lcom/estrongs/fs/b/h;

    invoke-direct {v0}, Lcom/estrongs/fs/b/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/g;->d:Lcom/estrongs/fs/b/h;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/g;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/g;->i:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/g;->g:Ljava/lang/Long;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/g;->a:I

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v3, :cond_5

    const-string v0, " , "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_5

    const-string v0, "..."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v6, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->o:Z

    :cond_2
    iput-boolean v6, p0, Lcom/estrongs/fs/b/g;->canRestart:Z

    const/16 v0, 0x1a

    iput v0, p0, Lcom/estrongs/fs/b/g;->task_type:I

    const-string v0, ""

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    if-ne v1, v5, :cond_6

    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/g;->a()V

    return-void

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-wide v2, p0, Lcom/estrongs/fs/b/g;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/b/g;->startTime:J

    :cond_0
    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/g;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/g;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/g;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "source"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/g;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

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

    const-wide/16 v2, 0x64

    const/4 v6, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/g;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/estrongs/fs/b/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/g;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->d:Lcom/estrongs/fs/b/h;

    iput-boolean v6, v0, Lcom/estrongs/fs/b/h;->a:Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->g:J

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->h:J

    iget-object v1, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/g;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method public task()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/g;->g:Ljava/lang/Long;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/g;->onProgress(Lcom/estrongs/a/a/m;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    const/4 v2, 0x3

    iput v2, v0, Lcom/estrongs/a/a/m;->i:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/fs/b/g;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v2, v0, Lcom/estrongs/fs/impl/adb/a;

    if-nez v2, :cond_2

    sget-object v0, Lcom/estrongs/fs/b/g;->h:Ljava/lang/String;

    const-string v2, "task error invalid  AdbAppFileObject"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/g;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/g;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_2
    check-cast v0, Lcom/estrongs/fs/impl/adb/a;

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x1

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->g:J

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x64

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->h:J

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/b/g;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->c:J

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/g;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/g;->onProgress(Lcom/estrongs/a/a/m;)V

    const-class v0, Lcom/estrongs/a/a/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/g;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/estrongs/fs/b/g;->b:I

    iget v2, p0, Lcom/estrongs/fs/b/g;->a:I

    if-ne v0, v2, :cond_6

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/g;->setTaskResult(ILjava/lang/Object;)V

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/b/g;->d:Lcom/estrongs/fs/b/h;

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/g;->setTaskResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
