.class public Lcom/estrongs/fs/b/bo;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/estrongs/fs/d;

.field c:Ljava/lang/Long;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/net/InetAddress;

.field private g:Lcom/estrongs/a/a/p;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/fs/b/bo;->f:Ljava/net/InetAddress;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/bo;->c:Ljava/lang/Long;

    new-instance v1, Lcom/estrongs/fs/b/bq;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/bq;-><init>(Lcom/estrongs/fs/b/bo;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/bo;->g:Lcom/estrongs/a/a/p;

    iput-object p1, p0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/bo;->b:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/fs/b/bo;->canRestart:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/b/bo;->canPause:Z

    const/16 v1, 0x15

    iput v1, p0, Lcom/estrongs/fs/b/bo;->task_type:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v5, "displayname"

    invoke-interface {v0, v5}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v1, "displayname"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-eq v0, v4, :cond_1

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v2, v0, :cond_1

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/fs/b/bo;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const v2, 0x7f0806e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/bo;->setDescription(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/bo;->f:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Z)Lcom/estrongs/fs/b/bo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/estrongs/fs/b/bo;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/b/bo;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/fs/b/bo;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/b/bp;

    invoke-direct {v1}, Lcom/estrongs/fs/b/bp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/bo;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    if-eqz p3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "task_title"

    const v3, 0x7f0805c5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task_id"

    invoke-virtual {v0}, Lcom/estrongs/fs/b/bo;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "creatreNotification"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/bo;->execute()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/estrongs/fs/b/bo;->g:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/bo;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/bo;->execute()V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v2, ""

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v3, v4

    :goto_0
    const/4 v1, 0x3

    if-ge v3, v1, :cond_0

    if-ne v3, v5, :cond_2

    :cond_0
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "title"

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_ori_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/bo;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/bo;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "target"

    iget-object v2, p0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-wide v0, p0, Lcom/estrongs/fs/b/bo;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/bo;->startTime:J

    :cond_1
    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/bo;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    const-string v6, "displayname"

    invoke-interface {v1, v6}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    const-string v6, "displayname"

    invoke-interface {v1, v6}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->f:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/p;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/bo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/bo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    return-object v0
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
    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    invoke-virtual {p0}, Lcom/estrongs/fs/b/bo;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-object v2, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->f:J

    long-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/estrongs/a/a/m;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/bo;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public task()Z
    .locals 28

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/estrongs/a/a/m;->c:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/estrongs/a/a/m;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const v8, 0x7f08072b

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/bo;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v20

    new-instance v7, Lcom/estrongs/a/b/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-direct {v7, v4}, Lcom/estrongs/a/b/c;-><init>(Ljava/util/List;)V

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    invoke-virtual {v7}, Lcom/estrongs/a/b/c;->a()Lcom/estrongs/fs/h;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v5

    sget-object v8, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    if-ne v5, v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-wide v8, v5, Lcom/estrongs/a/a/m;->c:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/estrongs/a/a/m;->c:J

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    add-long/2addr v4, v12

    :goto_2
    move-wide v12, v4

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iput-wide v12, v4, Lcom/estrongs/a/a/m;->e:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/fs/h;

    const-string v5, "displayname"

    invoke-interface {v4, v5}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/fs/h;

    const-string v7, "displayname"

    invoke-interface {v4, v7}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-object v7, v5, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/bo;->onProgress(Lcom/estrongs/a/a/m;)V

    const-string v4, "size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/fs/b/bo;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    new-instance v17, Ljava/net/Socket;

    invoke-direct/range {v17 .. v17}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    new-instance v6, Ljava/net/InetSocketAddress;

    sget v7, Lcom/estrongs/a/b/d;->a:I

    invoke-direct {v6, v5, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x2710

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "connect timeout!"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v4

    move-object/from16 v5, v17

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v6, 0x2710

    new-instance v7, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const v9, 0x7f08022b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/estrongs/fs/b/bo;->setTaskResult(ILjava/lang/Object;)V

    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    :try_start_3
    new-instance v21, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v22, Ljava/io/DataOutputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v6, "Content-Type: application/file\r\n"

    const/16 v16, 0x0

    const-string v5, "displayname"

    invoke-interface {v4, v5}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "displayname"

    invoke-interface {v4, v5}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_7

    const-string v4, "Content-Type: application/files\r\n"

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MYPOST /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HTTP/1.1\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Connection: Keep-Alive\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Files-Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Items-Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v5, Lcom/estrongs/a/a/m;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User-Agent: Dalvik\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Host: localhost\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    if-eqz v16, :cond_5

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-nez v4, :cond_b

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    goto/16 :goto_6

    :cond_7
    invoke-static {v4}, Lcom/estrongs/android/util/bg;->b(Lcom/estrongs/fs/h;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-eqz v5, :cond_a

    :try_start_4
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v8, 0x40

    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v5, v7

    div-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-boolean v5, Lcom/estrongs/android/pop/z;->x:Z

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_8
    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v5, 0x1

    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    div-int/lit8 v5, v7, 0x40

    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: application/file\r\nAppend-Data: Thumbnail-Image\r\nImage-Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Image-Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v6, 0x0

    :goto_9
    :try_start_5
    array-length v7, v5

    if-ge v6, v7, :cond_9

    mul-int/lit8 v7, v6, 0x4

    aget v8, v5, v6

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    aget v8, v5, v6

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x2

    aget v8, v5, v6

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v8, v5, v6

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v4, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v4, v18

    goto/16 :goto_7

    :catch_1
    move-exception v4

    move-object/from16 v4, v16

    :goto_a
    :try_start_6
    const-string v5, "Content-Type: application/file\r\n"

    move-object/from16 v16, v4

    move-object v4, v5

    goto/16 :goto_7

    :cond_a
    invoke-interface {v4}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/fs/w;->a()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "Content-Type: application/folder\r\n"

    goto/16 :goto_7

    :cond_b
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    const-string v4, ""

    :cond_c
    :goto_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    const-string v4, "content-length"

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [B

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "OK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/16 v4, 0x2710

    new-instance v5, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const v7, 0x7f0805ef

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/fs/b/bo;->setTaskResult(ILjava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\r\n\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_c

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/estrongs/fs/b/bo;->c:Ljava/lang/Long;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v7, v4

    move-wide v8, v14

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/bo;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/estrongs/fs/h;

    new-instance v16, Lcom/estrongs/a/b/c;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/estrongs/a/b/c;-><init>(Lcom/estrongs/fs/h;)V

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v18, v4, v10

    :cond_f
    :goto_d
    const/4 v10, 0x0

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/estrongs/a/b/c;->a()Lcom/estrongs/fs/h;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v19

    if-nez v19, :cond_12

    :goto_e
    if-eqz v6, :cond_17

    move v4, v6

    :goto_f
    if-nez v4, :cond_10

    :try_start_8
    const-string v5, "OVER\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V

    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_10
    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const/16 v5, 0x2710

    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const v8, 0x7f0806e0

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/fs/b/bo;->setTaskResult(ILjava/lang/Object;)V

    :cond_11
    if-nez v4, :cond_18

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_12
    :try_start_9
    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v24

    const-string v4, "displayname"

    invoke-interface {v5, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v4

    sget-object v11, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    if-ne v4, v11, :cond_13

    const-string v4, "displayname"

    invoke-interface {v5, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write([B)V

    move-object v11, v4

    :goto_11
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v4

    sget-object v14, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v4, v14, :cond_14

    const-string v4, "folder\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V

    goto/16 :goto_d

    :catch_2
    move-exception v4

    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_13
    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write([B)V

    move-object v11, v4

    goto :goto_11

    :cond_14
    const-string v4, "file\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\r\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    const-wide/16 v14, 0x0

    const/16 v4, 0x4000

    new-array v0, v4, [B

    move-object/from16 v21, v0

    move-object v4, v10

    :goto_12
    if-eqz v20, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v6, 0x2

    :goto_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/b/bo;->processData:Lcom/estrongs/a/a/m;

    iget-wide v14, v10, Lcom/estrongs/a/a/m;->d:J

    const-wide/16 v24, 0x1

    add-long v14, v14, v24

    iput-wide v14, v10, Lcom/estrongs/a/a/m;->d:J

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :goto_14
    if-eqz v6, :cond_f

    goto/16 :goto_e

    :cond_15
    cmp-long v10, v14, v24

    if-ltz v10, :cond_16

    :try_start_b
    const-string v10, "File end\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_13

    :catch_3
    move-exception v6

    :goto_15
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x1

    goto :goto_13

    :cond_16
    if-nez v4, :cond_1a

    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/b/bo;->b:Lcom/estrongs/fs/d;

    invoke-interface/range {v19 .. v19}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v10

    :goto_16
    :try_start_d
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v14, v14, v26

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v8, v8, v26

    const/16 v4, 0x9

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v23, v26

    const/16 v26, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v23, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v23, v26

    const/16 v26, 0x1

    aput-object v11, v23, v26

    const/16 v26, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v23, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v4, v10

    goto/16 :goto_12

    :cond_17
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_c

    :catch_4
    move-exception v4

    const/4 v4, 0x1

    goto/16 :goto_10

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_5
    move-exception v4

    goto/16 :goto_5

    :catch_6
    move-exception v4

    goto/16 :goto_14

    :catch_7
    move-exception v4

    move-object v6, v4

    move-object v4, v10

    goto/16 :goto_15

    :catch_8
    move-exception v4

    move-object v5, v6

    goto/16 :goto_4

    :catch_9
    move-exception v5

    goto/16 :goto_a

    :cond_19
    move v4, v6

    goto/16 :goto_f

    :cond_1a
    move-object v10, v4

    goto/16 :goto_16

    :cond_1b
    move-object v4, v6

    goto/16 :goto_7

    :cond_1c
    move-wide v4, v12

    goto/16 :goto_2
.end method
