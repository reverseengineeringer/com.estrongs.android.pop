.class public Lcom/flurry/sdk/aq$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq;

.field private final b:Lcom/flurry/sdk/ai$c;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/util/zip/GZIPInputStream;

.field private final e:Ljava/io/BufferedInputStream;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$c;Z)V
    .locals 2

    iput-object p1, p0, Lcom/flurry/sdk/aq$b;->a:Lcom/flurry/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Snapshot cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/aq$b;->b:Lcom/flurry/sdk/ai$c;

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->b:Lcom/flurry/sdk/ai$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai$c;->a(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aq$b;->c:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->c:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Snapshot inputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aq$b;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$b;->d:Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->d:Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip inputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aq$b;->d:Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$b;->e:Ljava/io/BufferedInputStream;

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/aq$b;->d:Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aq$b;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$b;->e:Ljava/io/BufferedInputStream;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$c;ZLcom/flurry/sdk/aq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/aq$b;-><init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$c;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->e:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/aq$b;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/aq$b;->f:Z

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->e:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->d:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/flurry/sdk/aq$b;->b:Lcom/flurry/sdk/ai$c;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/flurry/sdk/aq$b;->close()V

    return-void
.end method
