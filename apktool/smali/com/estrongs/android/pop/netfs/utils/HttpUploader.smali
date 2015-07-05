.class public Lcom/estrongs/android/pop/netfs/utils/HttpUploader;
.super Ljava/lang/Object;


# instance fields
.field private arg:Ljava/lang/Object;

.field public arg_1:Ljava/lang/Object;

.field public arg_2:Ljava/lang/Object;

.field private d_thread:Ljava/lang/Thread;

.field private exit:Z

.field private l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

.field private params:[Ljava/lang/Object;

.field private requestUrl:Ljava/lang/String;

.field private uploadEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg_1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg_2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->upload()V

    return-void
.end method

.method private isReponseSucc(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private upload()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v2, v4, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    if-eqz v3, :cond_3

    const-string v0, "Uploader"

    const-string v1, "upload failed, user cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->isReponseSucc(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v1, "HttpUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload failed, server ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public setHttpParams([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    return-void
.end method

.method public setNotifyListener(Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    return-void
.end method

.method public setPrivateArg(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    return-void
.end method

.method public setUploadEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public startUpload()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;-><init>(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopUpload()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
