.class Lcom/estrongs/fs/impl/r/d;
.super Ljava/io/InputStream;


# instance fields
.field private a:Lde/aflx/sardine/Sardine;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/r/d;->f:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/estrongs/fs/impl/r/d;->a:Lde/aflx/sardine/Sardine;

    iput-object p3, p0, Lcom/estrongs/fs/impl/r/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/fs/impl/r/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/fs/impl/r/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/d;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v0}, Lde/aflx/sardine/Sardine;->destroy()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/d;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->destroy()V

    throw v0
.end method

.method public read()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/d;->f:Z

    throw v0
.end method

.method public read([B)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/d;->f:Z

    throw v0
.end method

.method public read([BII)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/r/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/fs/impl/r/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/r/d;->f:Z

    throw v0
.end method
