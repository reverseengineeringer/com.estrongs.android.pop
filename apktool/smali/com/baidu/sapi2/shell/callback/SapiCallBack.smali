.class public interface abstract Lcom/baidu/sapi2/shell/callback/SapiCallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/baidu/sapi2/shell/response/SapiResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onNetworkFailed()V
.end method

.method public abstract onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onSystemError(I)V
.end method
