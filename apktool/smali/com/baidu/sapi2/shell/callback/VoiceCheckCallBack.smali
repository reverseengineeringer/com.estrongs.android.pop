.class public abstract Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBdussInvalid()V
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public abstract onLoginMergeConfirm()V
.end method

.method public onNotEnabled()V
    .locals 0

    return-void
.end method

.method public abstract onUserForbidden()V
.end method

.method public abstract onUserNotNormalized()V
.end method

.method public abstract onUsernameNotExist()V
.end method
