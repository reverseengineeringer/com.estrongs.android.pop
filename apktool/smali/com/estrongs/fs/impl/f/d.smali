.class Lcom/estrongs/fs/impl/f/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/apache/http/client/HttpClient;

.field final synthetic b:Lorg/apache/http/client/methods/HttpPost;

.field final synthetic c:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

.field final synthetic d:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

.field final synthetic e:Lcom/estrongs/fs/impl/f/c;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/f/c;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/f/d;->e:Lcom/estrongs/fs/impl/f/c;

    iput-object p2, p0, Lcom/estrongs/fs/impl/f/d;->a:Lorg/apache/http/client/HttpClient;

    iput-object p3, p0, Lcom/estrongs/fs/impl/f/d;->b:Lorg/apache/http/client/methods/HttpPost;

    iput-object p4, p0, Lcom/estrongs/fs/impl/f/d;->c:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    iput-object p5, p0, Lcom/estrongs/fs/impl/f/d;->d:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/estrongs/fs/impl/f/d;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/fs/impl/f/d;->c:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->d:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/fs/impl/f/d;->c:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->c:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->d:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/estrongs/fs/impl/f/d;->d:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method
