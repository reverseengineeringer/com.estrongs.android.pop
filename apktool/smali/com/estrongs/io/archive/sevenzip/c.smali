.class public Lcom/estrongs/io/archive/sevenzip/c;
.super Lcom/estrongs/io/archive/sevenzip/a;


# instance fields
.field d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/archive/sevenzip/e;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/io/archive/sevenzip/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/estrongs/io/archive/sevenzip/q;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/io/archive/sevenzip/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    iput v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->k:Z

    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->l:Z

    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->m:Z

    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->n:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/estrongs/io/archive/sevenzip/c;->e:Lcom/estrongs/io/archive/sevenzip/e;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/q;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/io/archive/sevenzip/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/p7za l -detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v1, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "######detect string:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "######detect string:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, " "

    goto :goto_0

    :cond_2
    const-string v1, "Wrong password?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/c;->b()V

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    const-string v4, "AUTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/sevenzip/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/c;->b()V

    :cond_1
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v6, ".7z"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, " -7za "

    move-object v4, v3

    :goto_2
    if-eqz p1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -p"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v6, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/p7za l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -charset "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v4, v4, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v3, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v3, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v4, "exit\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v3, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    :cond_2
    :goto_5
    iget-boolean v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->a:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v3, v3, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v4, "------------------- ----- ------------ ------------  ------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_3
    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v6, ".zip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v3, " -zipf "

    move-object v4, v3

    goto/16 :goto_2

    :cond_5
    const-string v3, " "

    goto/16 :goto_3

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/p7za l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_7
    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_5

    :cond_8
    const-string v4, "Wrong password?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-ne v0, v1, :cond_b

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/bc;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lcom/estrongs/io/archive/sevenzip/d;

    invoke-direct {v4}, Lcom/estrongs/io/archive/sevenzip/d;-><init>()V

    const/16 v6, 0x35

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/estrongs/io/archive/sevenzip/d;->d:Ljava/lang/String;

    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->c:J

    const-string v3, ""

    iput-object v3, v4, Lcom/estrongs/io/archive/sevenzip/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_a
    new-instance v4, Lcom/estrongs/io/archive/sevenzip/d;

    invoke-direct {v4}, Lcom/estrongs/io/archive/sevenzip/d;-><init>()V

    const/16 v6, 0x35

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->d:Ljava/lang/String;

    const/16 v6, 0x1a

    const/16 v7, 0x27

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->c:J

    const/16 v6, 0x14

    const/16 v7, 0x1a

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->b:Ljava/lang/String;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-mm-dd HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->a:J

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/estrongs/io/archive/sevenzip/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_b
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x1a

    const/16 v4, 0x27

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/estrongs/io/archive/sevenzip/c;->f:J

    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_5

    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_e
    move-object v4, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/estrongs/io/archive/sevenzip/q;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->i:I

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->i:I

    const/4 v6, 0x0

    const-string v14, "Error"

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/estrongs/io/archive/sevenzip/c;->e(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/io/archive/sevenzip/c;->b()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v4, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v9, ".7z"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v4, " -7za "

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/p7za x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " -charset "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/io/archive/sevenzip/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz p3, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-o"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -p"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -y "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz p2, :cond_7

    const/4 v5, 0x0

    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v7

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v4, " -zipf "

    goto/16 :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/p7za x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-o"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -y "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v5, v5, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v4, v4, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v4, v4, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v5, "exit\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v4, v4, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v16, v4

    move v15, v6

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->a:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->c:Lcom/estrongs/fs/impl/local/r;

    iget-object v4, v4, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v4, "Extracting  "

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "Extracting  "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_9

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/estrongs/io/archive/sevenzip/c;->a(I)Z

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/io/archive/sevenzip/c;->e:Lcom/estrongs/io/archive/sevenzip/e;

    move-object/from16 v0, p0

    invoke-interface {v6, v0, v4}, Lcom/estrongs/io/archive/sevenzip/e;->a(Lcom/estrongs/io/archive/sevenzip/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/io/archive/sevenzip/d;

    if-eqz v4, :cond_a

    iget-wide v8, v4, Lcom/estrongs/io/archive/sevenzip/d;->c:J

    :cond_a
    const-string v4, "Wrong password?"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0239

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_7
    move-wide/from16 v16, v10

    move-object v14, v4

    goto :goto_5

    :cond_b
    const-string v4, "&&&&&&"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->e:Lcom/estrongs/io/archive/sevenzip/e;

    sub-long v6, v10, v16

    const/4 v12, 0x1

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v13}, Lcom/estrongs/io/archive/sevenzip/e;->a(Lcom/estrongs/io/archive/sevenzip/a;JJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/io/archive/sevenzip/c;->a:Z

    if-eqz v5, :cond_d

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_1
    const-string v4, "Everything is Ok"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move v15, v4

    goto/16 :goto_5

    :cond_d
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/io/archive/sevenzip/c;->a:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    move-object v4, v14

    goto/16 :goto_7
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/io/archive/sevenzip/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/sevenzip/q;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/sevenzip/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/q;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->e()Lcom/estrongs/fs/impl/local/r;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -p"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/p7za l -y "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v2, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    move v2, v0

    :goto_2
    iget-object v4, v3, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-ge v2, v5, :cond_3

    const-string v5, "Wrong password?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_3
    :try_start_1
    iget-object v1, v3, Lcom/estrongs/fs/impl/local/r;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_2
    const-string v2, " "
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public d()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/q;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->l:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->k:Z

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->e()Lcom/estrongs/fs/impl/local/r;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/p7za t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v2, "abcdefghijkn\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v2, "exit\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v1, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    const-string v3, "Enter password (will not be echoed) :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->l:Z

    :cond_2
    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->l:Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public e()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->j:Lcom/estrongs/io/archive/sevenzip/q;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/q;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->n:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/estrongs/io/archive/sevenzip/c;->m:Z

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->e()Lcom/estrongs/fs/impl/local/r;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/p7za l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v2, "abcdefghijkn\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    const-string v2, "exit\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v1, Lcom/estrongs/fs/impl/local/r;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    const-string v3, "Enter password (will not be echoed) :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->n:Z

    :cond_2
    iget-object v0, v1, Lcom/estrongs/fs/impl/local/r;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/c;->n:Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
