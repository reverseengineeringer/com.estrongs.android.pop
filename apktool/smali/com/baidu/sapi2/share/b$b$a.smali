.class Lcom/baidu/sapi2/share/b$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/share/a$b;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/b$b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/b$b$a;->a:Lcom/baidu/sapi2/share/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v1, Lcom/baidu/sapi2/share/ShareEvent;->INVALIDATE:Lcom/baidu/sapi2/share/ShareEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/baidu/sapi2/SapiAccount;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/sapi2/share/b$b$a;->a:Lcom/baidu/sapi2/share/b$b;

    iget-object v5, v5, Lcom/baidu/sapi2/share/b$b;->b:Lcom/baidu/sapi2/SapiAccount;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Lcom/baidu/sapi2/share/b$b$a$a;

    invoke-direct {v1, p0, p2}, Lcom/baidu/sapi2/share/b$b$a$a;-><init>(Lcom/baidu/sapi2/share/b$b$a;Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
