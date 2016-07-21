.class public Lcom/estrongs/fs/b/a;
.super Lcom/estrongs/a/a;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:Z

.field f:Lcom/estrongs/fs/b/e;

.field public final g:Lcom/estrongs/fs/h;

.field protected h:Z

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/lang/Long;

.field private m:Lcom/estrongs/android/ui/dialog/ci;

.field private n:[B

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/b/a;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    iput v2, p0, Lcom/estrongs/fs/b/a;->b:I

    iput v2, p0, Lcom/estrongs/fs/b/a;->c:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->d:Z

    iput-boolean v6, p0, Lcom/estrongs/fs/b/a;->e:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/a;->m:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v0, Lcom/estrongs/fs/b/e;

    invoke-direct {v0}, Lcom/estrongs/fs/b/e;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->f:Lcom/estrongs/fs/b/e;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->h:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/a;->n:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->j:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->o:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->k:Ljava/lang/Long;

    iput-object p2, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/a;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p3, p0, Lcom/estrongs/fs/b/a;->o:Z

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

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v3, :cond_4

    const-string v0, " , "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_4

    const-string v0, "..."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    iput-boolean v6, p0, Lcom/estrongs/fs/b/a;->canRestart:Z

    const/16 v0, 0x19

    iput v0, p0, Lcom/estrongs/fs/b/a;->task_type:I

    const-string v0, ""

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    if-ne v1, v5, :cond_5

    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/a;->a()V

    return-void

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
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

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-wide v2, p0, Lcom/estrongs/fs/b/a;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/b/a;->startTime:J

    :cond_0
    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/a;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/a;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "source"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    iget-object v1, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/a;->p:Z

    return v0
.end method

.method private b()V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->e:J

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->e:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/fs/b/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->hasProgressListener()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/fs/b/a;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->m:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/a;->m:Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method public canHide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    sget-object v0, Lcom/estrongs/fs/b/a;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####TASK_MSG_SINGLE_FILE_SIZE  processData.current_file_size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processData.current_file_copie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->g:J

    iget-object v2, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->m:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/d;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/d;-><init>(Lcom/estrongs/fs/b/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v4, v0, Lcom/estrongs/a/a/m;->o:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v4, v0, Lcom/estrongs/a/a/m;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_4
    iget v0, p0, Lcom/estrongs/fs/b/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/a;->c:I

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->f:Lcom/estrongs/fs/b/e;

    iput-boolean v6, v0, Lcom/estrongs/fs/b/e;->a:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_2
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public task()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/a;->p:Z

    invoke-direct {p0}, Lcom/estrongs/fs/b/a;->b()V

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->k:Ljava/lang/Long;

    new-instance v0, Lcom/estrongs/fs/b/b;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/b;-><init>(Lcom/estrongs/fs/b/a;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/b;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->i:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/m;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    const/4 v3, 0x2

    iput v3, v0, Lcom/estrongs/a/a/m;->i:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->m:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v3, Lcom/estrongs/fs/b/c;

    invoke-direct {v3, p0}, Lcom/estrongs/fs/b/c;-><init>(Lcom/estrongs/fs/b/a;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->taskStopped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    move v0, v1

    :goto_1
    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->j:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/a/a/m;->o:Z

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/a/a/m;->n:Z

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v3}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/estrongs/fs/b/a;->o:Z

    invoke-static {v3, v4, v5}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-eqz v3, :cond_5

    const-class v4, Lcom/estrongs/a/a/b;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/fs/b/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/a/d;->g:I

    if-ne v0, v7, :cond_4

    iget v0, p0, Lcom/estrongs/fs/b/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/a;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v3, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v0, 0x2710

    :try_start_3
    new-instance v3, Lcom/estrongs/a/q;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v5, 0x7f0800f9

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    move v0, v1

    goto/16 :goto_1

    :cond_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/fs/b/a;->g:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    throw v0

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->c:J

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->d:J

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->e:J

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->f:J

    :cond_8
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/m;)V

    const-class v0, Lcom/estrongs/a/a/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/estrongs/fs/b/a;->c:I

    iget v3, p0, Lcom/estrongs/fs/b/a;->b:I

    if-ne v0, v3, :cond_9

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->p:Z

    move v0, v2

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/estrongs/fs/b/a;->f:Lcom/estrongs/fs/b/e;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method
