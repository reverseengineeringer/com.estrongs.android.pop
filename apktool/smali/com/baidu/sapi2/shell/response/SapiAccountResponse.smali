.class public Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
.super Lcom/baidu/sapi2/shell/response/SapiResponse;


# instance fields
.field public authSid:Ljava/lang/String;

.field public bduss:Ljava/lang/String;

.field public displayname:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public newReg:Z

.field public ptoken:Ljava/lang/String;

.field public reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

.field public stoken:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    new-instance v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    return-void
.end method
