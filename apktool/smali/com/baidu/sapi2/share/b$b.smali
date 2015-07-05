.class Lcom/baidu/sapi2/share/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccount;

.field final synthetic c:Lcom/baidu/sapi2/share/b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/b$b;->c:Lcom/baidu/sapi2/share/b;

    iput-object p2, p0, Lcom/baidu/sapi2/share/b$b;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/sapi2/share/b$b;->b:Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Lcom/baidu/sapi2/share/b$b$a;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/share/b$b$a;-><init>(Lcom/baidu/sapi2/share/b$b;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/share/a$b;Z)V

    return-void
.end method
