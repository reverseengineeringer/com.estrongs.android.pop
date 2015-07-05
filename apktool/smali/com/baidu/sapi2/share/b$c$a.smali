.class Lcom/baidu/sapi2/share/b$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/share/a$b;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/b$c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/b$c$a;->a:Lcom/baidu/sapi2/share/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v1, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_REQ:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v0, v1}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Lcom/baidu/sapi2/share/b$c$a$a;

    invoke-direct {v1, p0, p2}, Lcom/baidu/sapi2/share/b$c$a$a;-><init>(Lcom/baidu/sapi2/share/b$c$a;Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
