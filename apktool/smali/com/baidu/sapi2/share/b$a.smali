.class Lcom/baidu/sapi2/share/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccount;

.field final synthetic c:Z

.field final synthetic d:Lcom/baidu/sapi2/share/b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/b$a;->d:Lcom/baidu/sapi2/share/b;

    iput-object p2, p0, Lcom/baidu/sapi2/share/b$a;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/sapi2/share/b$a;->b:Lcom/baidu/sapi2/SapiAccount;

    iput-boolean p4, p0, Lcom/baidu/sapi2/share/b$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v2, Lcom/baidu/sapi2/share/b$a$a;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/share/b$a$a;-><init>(Lcom/baidu/sapi2/share/b$a;)V

    iget-boolean v0, p0, Lcom/baidu/sapi2/share/b$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/share/a$b;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
