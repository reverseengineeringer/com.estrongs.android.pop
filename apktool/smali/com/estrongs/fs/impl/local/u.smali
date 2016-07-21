.class Lcom/estrongs/fs/impl/local/u;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/u;->a:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/u;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/u;->a:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/estrongs/fs/impl/local/u;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/u;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
