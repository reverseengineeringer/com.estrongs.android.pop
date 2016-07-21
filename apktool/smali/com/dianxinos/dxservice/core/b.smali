.class Lcom/dianxinos/dxservice/core/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/core/DXCoreService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/core/DXCoreService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/dianxinos/dxservice/stat/t;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/t;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v1}, Lcom/dianxinos/dxservice/core/DXCoreService;->a(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/x;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dianxinos/dxservice/stat/x;->a(Lcom/dianxinos/dxservice/stat/t;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/DXCoreService;->b(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/e;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/DXCoreService;->a(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/x;->c()Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/DXCoreService;->a(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/x;->c()Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/DXCoreService;->a(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/x;->c()Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/b;->a:Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/DXCoreService;->c(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/an;->a()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
