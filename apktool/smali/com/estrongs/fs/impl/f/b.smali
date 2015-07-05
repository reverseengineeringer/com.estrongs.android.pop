.class public Lcom/estrongs/fs/impl/f/b;
.super Lcom/estrongs/fs/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/f/a;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flashair://flashair"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/estrongs/fs/impl/f/a;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/fs/impl/f/a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/fs/impl/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/f/b;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/fs/impl/f/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/fs/impl/f/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/a;->size:J

    iget-object v0, p1, Lcom/estrongs/fs/impl/f/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/estrongs/fs/a;->lastModified:J

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/m;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/estrongs/fs/impl/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/m;

    goto :goto_1
.end method
