.class public abstract Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
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
.method public abstract onInvalidBduss()V
.end method

.method public abstract onUserHaveUsername()V
.end method

.method public abstract onUsernameAlreadyExist()V
.end method

.method public abstract onUsernameFormatError()V
.end method
