.class Lcom/dianxinos/lockscreen/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/j;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/k;->a:Lcom/dianxinos/lockscreen/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/k;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;)V

    :cond_0
    return-void
.end method
