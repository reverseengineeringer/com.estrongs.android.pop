.class public Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.super Landroid/os/Handler;


# static fields
.field protected static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field protected mDefaultCharset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->mDefaultCharset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onStart()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFinish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleSuccessMessage(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSuccessMessage(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void
.end method

.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onFinish()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendFinishMessage()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->mDefaultCharset:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendSuccessMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected sendStartMessage()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
