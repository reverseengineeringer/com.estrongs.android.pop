.class Lcom/dianxinos/lockscreen/fragment/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/fragment/b;->b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/fragment/b;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/b;->b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/b;->b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    iget v1, v1, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c(I)Lcom/dianxinos/lockscreen/fragment/TabInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/b;->b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/fragment/b;->b:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    iget v2, v2, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    iput v2, v1, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/b;->a:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/b;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
