.class Lcom/dianxinos/dxservice/stat/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/e;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/stat/e;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/h;->a:Lcom/dianxinos/dxservice/stat/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/dianxinos/dxservice/stat/i;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/h;->a:Lcom/dianxinos/dxservice/stat/e;

    invoke-direct {v0, v1, p2}, Lcom/dianxinos/dxservice/stat/i;-><init>(Lcom/dianxinos/dxservice/stat/e;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
