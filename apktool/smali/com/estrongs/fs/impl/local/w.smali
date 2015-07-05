.class public Lcom/estrongs/fs/impl/local/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/fs/impl/local/w;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/text/NumberFormat;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/w;->b:Landroid/content/Context;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/w;->c:Ljava/text/NumberFormat;

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/w;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/w;->c:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/w;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/local/w;->a:Lcom/estrongs/fs/impl/local/w;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/local/w;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/local/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/fs/impl/local/w;->a:Lcom/estrongs/fs/impl/local/w;

    :cond_0
    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/local/w;->a:Lcom/estrongs/fs/impl/local/w;

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/local/w;->a:Lcom/estrongs/fs/impl/local/w;

    iput-object p0, v0, Lcom/estrongs/fs/impl/local/w;->b:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/fs/impl/local/w;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->h()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/estrongs/fs/impl/local/y;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/estrongs/fs/impl/local/y;-><init>(Lcom/estrongs/fs/impl/local/w;Lcom/estrongs/fs/impl/local/x;)V

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/estrongs/fs/impl/local/y;->a:Ljava/lang/String;

    :goto_2
    iput-object v3, v1, Lcom/estrongs/fs/impl/local/y;->b:Ljava/util/Map;

    iput-boolean v2, v1, Lcom/estrongs/fs/impl/local/y;->c:Z

    iput-boolean v4, v1, Lcom/estrongs/fs/impl/local/y;->d:Z

    iput-object v5, v1, Lcom/estrongs/fs/impl/local/y;->e:Ljava/util/Map;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/fs/impl/local/y;->f:Z

    iput-object v0, v1, Lcom/estrongs/fs/impl/local/y;->h:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object p1, v1, Lcom/estrongs/fs/impl/local/y;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3
.end method

.method public a(Lcom/estrongs/fs/c;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    check-cast p2, Lcom/estrongs/fs/impl/local/y;

    iget-boolean v0, p2, Lcom/estrongs/fs/impl/local/y;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/estrongs/fs/impl/local/y;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v0, p1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/estrongs/fs/impl/local/y;->i:Z

    if-eqz v0, :cond_2

    iput-boolean v5, p2, Lcom/estrongs/fs/impl/local/y;->i:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/estrongs/fs/impl/local/y;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    :cond_3
    new-instance v0, Lcom/estrongs/fs/impl/local/v;

    iget-object v1, p1, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/estrongs/fs/c;->n:Z

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/local/v;-><init>(Ljava/lang/String;Z)V

    iget-wide v2, p1, Lcom/estrongs/fs/c;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/local/v;->a(J)V

    iget-object v1, p1, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/local/v;->setName(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/local/v;->setFileType(Lcom/estrongs/fs/m;)V

    :goto_1
    iget-wide v2, p1, Lcom/estrongs/fs/c;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/local/v;->b(J)V

    iget-object v1, p1, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/local/v;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0xb

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p2, Lcom/estrongs/fs/impl/local/y;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/local/v;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p7

    check-cast v0, Lcom/estrongs/fs/impl/local/y;

    new-instance v2, Lcom/estrongs/fs/c;

    const-string v1, ""

    invoke-direct {v2, v1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    iput-object p6, v2, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x64

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v1, v2, Lcom/estrongs/fs/c;->d:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    :goto_1
    iget-boolean v0, v2, Lcom/estrongs/fs/c;->d:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/estrongs/fs/c;->e:J

    :goto_2
    int-to-long v0, p4

    iput-wide v0, v2, Lcom/estrongs/fs/c;->j:J

    iget-wide v0, v2, Lcom/estrongs/fs/c;->j:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/fs/c;->j:J

    iput p5, v2, Lcom/estrongs/fs/c;->q:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/fs/c;->n:Z

    :cond_2
    invoke-virtual {p0, v2, p7}, Lcom/estrongs/fs/impl/local/w;->a(Lcom/estrongs/fs/c;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-wide p2, v2, Lcom/estrongs/fs/c;->e:J

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/l;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
