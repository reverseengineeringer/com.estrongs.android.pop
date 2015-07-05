.class Lcom/estrongs/fs/b/ae;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field b:I

.field c:[J

.field d:J

.field final synthetic e:Lcom/estrongs/fs/b/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ad;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/fs/b/ae;->a:I

    const/16 v0, 0x7530

    iget v1, p0, Lcom/estrongs/fs/b/ae;->a:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/ae;->b:I

    iget v0, p0, Lcom/estrongs/fs/b/ae;->b:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/estrongs/fs/b/ae;->c:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ae;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-boolean v0, v0, Lcom/estrongs/fs/b/ad;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/estrongs/fs/b/ae;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/b/ae;->d:J

    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/b/ae;->a:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    invoke-static {v0}, Lcom/estrongs/fs/b/ad;->a(Lcom/estrongs/fs/b/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_2
    iget v2, p0, Lcom/estrongs/fs/b/ae;->b:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/b/ae;->c:[J

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/estrongs/fs/b/ae;->c:[J

    aget-wide v4, v4, v0

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/b/ae;->c:[J

    iget v3, p0, Lcom/estrongs/fs/b/ae;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v2, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v2, v2, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/fs/b/ad;->h:Ljava/lang/Long;

    move v0, v1

    move v2, v1

    :goto_3
    iget v3, p0, Lcom/estrongs/fs/b/ae;->b:I

    if-ge v0, v3, :cond_3

    int-to-long v2, v2

    iget-object v4, p0, Lcom/estrongs/fs/b/ae;->c:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    iput v1, v0, Lcom/estrongs/a/a/m;->b:I

    :goto_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ad;->getTaskStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v2, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v2, v2, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/ad;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ae;->e:Lcom/estrongs/fs/b/ad;

    iget-object v0, v0, Lcom/estrongs/fs/b/ad;->processData:Lcom/estrongs/a/a/m;

    int-to-float v2, v2

    float-to-double v4, v2

    iget-wide v2, p0, Lcom/estrongs/fs/b/ae;->d:J

    iget v6, p0, Lcom/estrongs/fs/b/ae;->b:I

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    iget-wide v2, p0, Lcom/estrongs/fs/b/ae;->d:J

    :goto_5
    iget v6, p0, Lcom/estrongs/fs/b/ae;->a:I

    int-to-long v6, v6

    mul-long/2addr v2, v6

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    div-double v2, v4, v2

    double-to-int v2, v2

    iput v2, v0, Lcom/estrongs/a/a/m;->b:I

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/estrongs/fs/b/ae;->b:I

    int-to-long v2, v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
