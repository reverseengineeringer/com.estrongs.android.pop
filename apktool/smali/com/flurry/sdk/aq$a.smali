.class Lcom/flurry/sdk/aq$a;
.super Ljava/io/BufferedOutputStream;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/aq$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/aq$a;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/aq$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/aq$a;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    throw v0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    throw v0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    throw v0
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    throw v0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    throw v0
.end method
