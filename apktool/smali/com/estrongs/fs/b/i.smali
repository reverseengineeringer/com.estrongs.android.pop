.class public Lcom/estrongs/fs/b/i;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Landroid/content/pm/PackageManager;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field protected e:Z

.field f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/b/d;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->b:Landroid/content/pm/PackageManager;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->e:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->f:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/i;->b:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    iput-boolean p5, p0, Lcom/estrongs/fs/b/i;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->canRestart:Z

    const/16 v0, 0xb

    iput v0, p0, Lcom/estrongs/fs/b/i;->task_type:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v4, :cond_3

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_3

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    const-string v0, ""

    move v1, v2

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    if-ne v1, v4, :cond_4

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/i;->a()V

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->getName()Ljava/lang/String;

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
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/estrongs/fs/b/i;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/i;->startTime:J

    :cond_2
    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/i;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/i;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "file_type"

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_selected_count"

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    return-void
.end method

.method public task()Z
    .locals 15

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    int-to-long v2, v9

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->c:J

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    int-to-long v2, v9

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/m;)V

    move v7, v6

    move-object v1, v0

    :goto_1
    if-ge v7, v9, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->c:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->b:Landroid/content/pm/PackageManager;

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/i;->b:Landroid/content/pm/PackageManager;

    invoke-static {v4, v2}, Lcom/estrongs/android/pop/utils/w;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    iput-object v3, v8, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v8}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->getPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lcom/estrongs/fs/b/r;->isAppBackupOverwriteApplyAllByUser:Z

    :goto_2
    iget-object v10, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v10, v8}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "item_paste_name"

    invoke-virtual {v0, v10, v5}, Lcom/estrongs/fs/impl/b/d;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "/system/"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".odex"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "apkpath"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v8, v5}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v8

    const-string v11, "item_paste_name"

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "odexpath"

    invoke-virtual {v10, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/estrongs/fs/b/r;

    iget-object v11, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    new-instance v12, Lcom/estrongs/fs/impl/local/f;

    new-instance v13, Ljava/io/File;

    iget-object v14, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v11, v5, v12}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    iput-boolean v1, v8, Lcom/estrongs/fs/b/r;->isAppBackupOverwriteApplyAllByUser:Z

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/b/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v1, v11}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;Z)Z

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_3

    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v10, v5, v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->getTaskDecisionListener()Lcom/estrongs/a/a/a;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/estrongs/fs/b/r;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    invoke-virtual {v8, p0}, Lcom/estrongs/fs/b/r;->setParentTask(Lcom/estrongs/a/a;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/estrongs/fs/b/r;->execute(Z)V

    invoke-virtual {v8}, Lcom/estrongs/fs/b/r;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-eqz v1, :cond_6

    move v0, v6

    goto/16 :goto_0

    :cond_4
    new-instance v8, Lcom/estrongs/fs/b/r;

    iget-object v5, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    new-instance v11, Lcom/estrongs/fs/impl/local/f;

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v5, v0, v11}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    iput-boolean v1, v8, Lcom/estrongs/fs/b/r;->isAppBackupOverwriteApplyAllByUser:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v2, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :cond_5
    :try_start_3
    new-instance v8, Lcom/estrongs/fs/b/r;

    iget-object v5, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    new-instance v10, Lcom/estrongs/fs/impl/local/f;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v5, v0, v10}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    iput-boolean v1, v8, Lcom/estrongs/fs/b/r;->isAppBackupOverwriteApplyAllByUser:Z

    goto :goto_4

    :cond_6
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/b/d;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->g:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_9

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_5
    :try_start_6
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "compress_level"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/fs/b/j;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/j;-><init>(Lcom/estrongs/fs/b/i;Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/j;->a(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->taskStopped()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    add-int/lit8 v1, v7, 0x1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    add-int/lit8 v1, v7, 0x1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/m;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v1, v8

    goto/16 :goto_1

    :cond_b
    move v0, v6

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :cond_d
    move v1, v6

    goto/16 :goto_2
.end method
