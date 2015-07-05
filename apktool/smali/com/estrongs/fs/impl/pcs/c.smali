.class Lcom/estrongs/fs/impl/pcs/c;
.super Ljava/io/BufferedInputStream;


# instance fields
.field final synthetic a:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic b:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/pcs/PcsFileSystem;Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/pcs/c;->b:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iput-object p3, p0, Lcom/estrongs/fs/impl/pcs/c;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/c;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PcsFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when HttpGet.abort()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
