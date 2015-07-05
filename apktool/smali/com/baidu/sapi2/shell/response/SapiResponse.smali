.class public Lcom/baidu/sapi2/shell/response/SapiResponse;
.super Ljava/lang/Object;


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    iput-object p2, p0, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method
