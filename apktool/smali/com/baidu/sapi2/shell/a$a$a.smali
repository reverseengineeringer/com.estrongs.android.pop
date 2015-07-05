.class Lcom/baidu/sapi2/shell/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/SapiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/a$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFailed()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$a;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$a;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$a;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$a;->d:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/shell/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/shell/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$a$a;->a:Lcom/baidu/sapi2/shell/a$a;

    iget-object v3, v3, Lcom/baidu/sapi2/shell/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSystemError(I)V
    .locals 0

    return-void
.end method
