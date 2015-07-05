.class Lcom/estrongs/fs/b/ac;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field b:J

.field final synthetic c:Lcom/estrongs/fs/b/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ab;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/fs/b/ac;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ac;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    invoke-static {v0}, Lcom/estrongs/fs/b/ab;->a(Lcom/estrongs/fs/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/b/ac;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v0, p0, Lcom/estrongs/fs/b/ac;->b:J

    iget-object v2, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    iget-object v2, v2, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->d:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/ac;->b:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ab;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/fs/b/ac;->c:Lcom/estrongs/fs/b/ab;

    iget-object v1, v1, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
