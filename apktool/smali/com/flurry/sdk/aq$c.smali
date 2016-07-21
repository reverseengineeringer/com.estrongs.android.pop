.class public Lcom/flurry/sdk/aq$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq;

.field private final b:Lcom/flurry/sdk/ai$a;

.field private final c:Ljava/io/OutputStream;

.field private final d:Ljava/util/zip/GZIPOutputStream;

.field private final e:Lcom/flurry/sdk/aq$a;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/ai$a;

    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/ai$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->c:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Editor outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_3

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->c:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/util/zip/GZIPOutputStream;

    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/flurry/sdk/aq$a;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aq$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    :goto_0
    return-void

    :cond_3
    iput-object v2, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Lcom/flurry/sdk/aq$a;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->c:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aq$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;ZLcom/flurry/sdk/aq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/aq$c;-><init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    return-object v0
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/flurry/sdk/aq$c;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/aq$c;->f:Z

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->c:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/ai$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    if-nez v1, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/ai$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ai$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/aq;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing editor for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq;

    invoke-static {v4}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/aq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Lcom/flurry/sdk/aq$a;

    invoke-static {v0}, Lcom/flurry/sdk/aq$a;->a(Lcom/flurry/sdk/aq$a;)Z

    move-result v0

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/ai$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ai$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/flurry/sdk/aq$c;->close()V

    return-void
.end method
