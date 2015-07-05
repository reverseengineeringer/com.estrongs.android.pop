.class final Lcom/estrongs/fs/impl/r/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

.field final synthetic b:J

.field final synthetic c:Lde/aflx/sardine/Sardine;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;JLde/aflx/sardine/Sardine;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/c;->a:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    iput-wide p2, p0, Lcom/estrongs/fs/impl/r/c;->b:J

    iput-object p4, p0, Lcom/estrongs/fs/impl/r/c;->c:Lde/aflx/sardine/Sardine;

    iput-object p5, p0, Lcom/estrongs/fs/impl/r/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/fs/impl/r/c;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/c;->a:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    iget-wide v2, p0, Lcom/estrongs/fs/impl/r/c;->b:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/c;->c:Lde/aflx/sardine/Sardine;

    iget-object v2, p0, Lcom/estrongs/fs/impl/r/c;->d:Ljava/lang/String;

    const-string v3, "application/octet-stream"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lde/aflx/sardine/Sardine;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/c;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/r/c;->c:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->abort()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/r/c;->c:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->destroy()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/c;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/c;->a:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
