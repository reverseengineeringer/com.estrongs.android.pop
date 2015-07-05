.class Lcom/estrongs/fs/impl/local/s;
.super Ljava/io/InputStream;


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/s;->a:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/s;->c:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/s;->a:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/fs/impl/local/s;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
