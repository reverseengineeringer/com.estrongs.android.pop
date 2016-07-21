.class Lcom/dianxinos/lockscreen/ui/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v3}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;I)I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->c(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v3}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->d(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;I)I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->e(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->c(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/k;->a:Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->d(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/dianxinos/lockscreen/ui/k;->removeMessages(I)V

    :cond_0
    return-void
.end method
