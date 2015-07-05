.class public Lcom/estrongs/fs/b/ad;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/u;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lcom/estrongs/fs/b/af;

.field public e:Ljava/lang/String;

.field public f:Z

.field g:Ljava/lang/Long;

.field h:Ljava/lang/Long;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    new-instance v0, Lcom/estrongs/fs/b/af;

    invoke-direct {v0}, Lcom/estrongs/fs/b/af;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->d:Lcom/estrongs/fs/b/af;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->k:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->l:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->f:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->g:Ljava/lang/Long;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->h:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/b/ad;->d()V

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x4

    invoke-direct {p0, p2}, Lcom/estrongs/a/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    new-instance v0, Lcom/estrongs/fs/b/af;

    invoke-direct {v0}, Lcom/estrongs/fs/b/af;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->d:Lcom/estrongs/fs/b/af;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->k:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->l:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->f:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->g:Ljava/lang/Long;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->h:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    const-string v0, "source"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    const-string v0, "target"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    :cond_0
    const-string v0, "mime_type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const-string v1, "size"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/a/a/m;->i:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->setTaskStatus(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/b/ad;->setTaskStatus(I)V

    goto :goto_1

    :cond_4
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/b/ad;->setTaskStatus(I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->setTaskStatus(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p2, v0

    :cond_0
    return-object p2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ad;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->hasProgressListener()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/estrongs/fs/b/ad;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ad;->startTime:J

    :cond_0
    const-string v0, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/ad;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task_type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "file_type"

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mime_type"

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 14

    const/4 v12, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget v0, v0, Lcom/estrongs/a/a/m;->i:I

    if-ne v0, v12, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x4

    iput v1, v0, Lcom/estrongs/a/a/m;->i:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    new-instance v8, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v8}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    move v3, v6

    move v4, v6

    move-object v1, v5

    move-object v2, v5

    :goto_0
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    if-le v3, v0, :cond_3

    :cond_2
    :goto_1
    return v6

    :cond_3
    if-eqz v4, :cond_6

    :try_start_0
    const-class v0, Lcom/estrongs/a/a/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    aput-object v10, v2, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->getTaskId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/ad;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, v0, Lcom/estrongs/a/a/c;->d:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/c;->d:Z

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->requestStop()V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_2
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unauthorized"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    if-eqz v1, :cond_4

    iput-boolean v6, v1, Lcom/estrongs/a/a/c;->e:Z

    :cond_4
    move v3, v0

    move v4, v7

    move-object v2, v5

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v1, "NEW_USERNAME"

    iget-object v2, v0, Lcom/estrongs/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v1, "NEW_PASSWORD"

    iget-object v2, v0, Lcom/estrongs/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    new-instance v1, Lcom/estrongs/fs/impl/h/b;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/h/b;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lcom/estrongs/fs/impl/h/b;->b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/h;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :goto_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_6
    :try_start_3
    new-instance v0, Lcom/estrongs/fs/impl/h/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/h/b;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/lang/String;)Lcom/estrongs/fs/h;
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x1

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    const/16 v1, 0x3a

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v12, :cond_d

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/estrongs/android/util/bc;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-direct {p0, v0, v3}, Lcom/estrongs/fs/b/ad;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->n:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/estrongs/android/util/bc;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".mp4"

    invoke-direct {p0, v0, v3}, Lcom/estrongs/fs/b/ad;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/fs/b/u;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v4, Lcom/estrongs/a/a/m;->f:J

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/b/u;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;JZ)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ad;->l:Z

    iput-boolean v7, p0, Lcom/estrongs/fs/b/ad;->canRestart:Z

    const/4 v1, 0x6

    iput v1, p0, Lcom/estrongs/fs/b/ad;->task_type:I

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "target"

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "file_type"

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_selected_count"

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v1, Lcom/estrongs/a/a/m;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "size"

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;)V

    move v6, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_f
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected executeHelper()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/a/a;->executeHelper()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/p;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_0
    return-void
.end method

.method public varargs getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/estrongs/a/a/d;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/estrongs/a/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_1

    :pswitch_4
    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "RBT"

    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reset"

    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->h:Ljava/lang/Long;

    :goto_2
    iget-object v1, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->f:J

    goto :goto_2

    :pswitch_5
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->d:Lcom/estrongs/fs/b/af;

    iput-boolean v6, v0, Lcom/estrongs/fs/b/af;->a:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected postTask()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-super {p0}, Lcom/estrongs/a/a;->reset()V

    iget-boolean v2, p0, Lcom/estrongs/fs/b/ad;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->f:J

    :cond_0
    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->c:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ad;->l:Z

    return-void
.end method

.method public task()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    const-string v3, "http://t.cn/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Z)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12c

    if-le v4, v5, :cond_0

    const/16 v5, 0x190

    if-ge v4, v5, :cond_0

    const-string v4, "Location"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    const-string v3, "http://dwz.cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    :goto_1
    const-string v0, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v0, "http://dwz.cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_2
    iput-object v0, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->d:Lcom/estrongs/fs/b/af;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/estrongs/fs/b/af;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ad;->l:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "Error"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/ad;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v1

    :goto_3
    return v0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get FileObject for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/fs/b/ad;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/ad;->setTaskResult(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const/4 v3, -0x1

    iput v3, v0, Lcom/estrongs/a/a/m;->i:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v1

    goto :goto_3

    :cond_3
    :try_start_4
    new-instance v0, Lcom/estrongs/fs/b/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/ae;-><init>(Lcom/estrongs/fs/b/ad;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ae;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->onProgress(Lcom/estrongs/a/a/m;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    const/4 v3, 0x2

    iput v3, v0, Lcom/estrongs/a/a/m;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "need_reload"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->taskStopped()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v1

    goto :goto_3

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/b/u;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v1

    goto/16 :goto_3

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->m:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "target"

    invoke-virtual {p0, v4, v3}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    const-string v3, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    const/16 v3, 0x2710

    :try_start_7
    new-instance v4, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/ad;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v1

    goto/16 :goto_3

    :cond_8
    :try_start_8
    const-string v3, "title"

    iget-object v4, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "target"

    iget-object v4, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/ad;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/fs/b/ad;->o:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    throw v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->c:J

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->d:J

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->e:J

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->f:J

    :cond_b
    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ad;->onProgress(Lcom/estrongs/a/a/m;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/fs/b/ad;->d:Lcom/estrongs/fs/b/af;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/ad;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ad;->c:Z

    move v0, v2

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    :cond_d
    move-object v3, v0

    goto/16 :goto_1
.end method
