.class public Lcom/estrongs/fs/impl/r/e;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Lde/aflx/sardine/Sardine;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/r/e;->f:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/estrongs/fs/impl/r/e;->a:Lde/aflx/sardine/Sardine;

    iput-object p3, p0, Lcom/estrongs/fs/impl/r/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/fs/impl/r/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/fs/impl/r/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v0}, Lde/aflx/sardine/Sardine;->destroy()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/e;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->abort()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/e;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->destroy()V

    throw v0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/e;->f:Z

    throw v0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/e;->f:Z

    throw v0
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/e;->f:Z

    throw v0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/e;->f:Z

    throw v0
.end method
