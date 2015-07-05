.class Lcom/estrongs/fs/b/t;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final b:I

.field c:[J

.field d:I

.field e:I

.field f:J

.field final synthetic g:Lcom/estrongs/fs/b/r;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/r;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/fs/b/t;->a:I

    const/16 v0, 0x7530

    iget v1, p0, Lcom/estrongs/fs/b/t;->a:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/t;->b:I

    iget v0, p0, Lcom/estrongs/fs/b/t;->b:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->c:[J

    iput v2, p0, Lcom/estrongs/fs/b/t;->d:I

    iput v2, p0, Lcom/estrongs/fs/b/t;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/t;->f:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->c:[J

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->fill([JJ)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    invoke-static {v0}, Lcom/estrongs/fs/b/r;->b(Lcom/estrongs/fs/b/r;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/b/t;->a:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/estrongs/fs/b/t;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/t;->d:I

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    invoke-static {v0}, Lcom/estrongs/fs/b/r;->c(Lcom/estrongs/fs/b/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/estrongs/fs/b/t;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/estrongs/fs/b/t;->c:[J

    iget v7, p0, Lcom/estrongs/fs/b/t;->e:I

    aget-wide v6, v6, v7

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/b/t;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->c:[J

    iget v3, p0, Lcom/estrongs/fs/b/t;->e:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_5

    iget v0, p0, Lcom/estrongs/fs/b/t;->d:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/estrongs/fs/b/t;->e:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/estrongs/fs/b/t;->b:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/fs/b/t;->b:I

    rem-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->c:[J

    aget-wide v2, v2, v0

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/estrongs/fs/b/t;->b:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/estrongs/fs/b/t;->b:I

    rem-int/2addr v0, v4

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->c:[J

    aget-wide v4, v4, v0

    add-int/lit8 v0, v0, -0x1

    iget v6, p0, Lcom/estrongs/fs/b/t;->b:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/estrongs/fs/b/t;->b:I

    rem-int/2addr v0, v6

    iget-object v6, p0, Lcom/estrongs/fs/b/t;->c:[J

    aget-wide v6, v6, v0

    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->f:J

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v4, v4, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v4, Lcom/estrongs/a/a/m;->e:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput v1, v0, Lcom/estrongs/a/a/m;->b:I

    :goto_3
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/r;->onProgress(Lcom/estrongs/a/a/m;)V

    :cond_1
    iget v0, p0, Lcom/estrongs/fs/b/t;->d:I

    iget v2, p0, Lcom/estrongs/fs/b/t;->b:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/estrongs/fs/b/t;->e:I

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->g:Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, p0, Lcom/estrongs/fs/b/t;->f:J

    long-to-float v2, v2

    float-to-double v2, v2

    iget v4, p0, Lcom/estrongs/fs/b/t;->d:I

    iget v5, p0, Lcom/estrongs/fs/b/t;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/estrongs/fs/b/t;->a:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Lcom/estrongs/a/a/m;->b:I

    goto :goto_3

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
