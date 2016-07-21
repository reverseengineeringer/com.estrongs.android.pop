.class Lcom/duapps/ad/inmobi/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duapps/ad/inmobi/i;


# direct methods
.method constructor <init>(Lcom/duapps/ad/inmobi/i;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    new-instance v1, Lcom/duapps/ad/inmobi/n;

    iget-object v2, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    invoke-static {v2}, Lcom/duapps/ad/inmobi/i;->a(Lcom/duapps/ad/inmobi/i;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duapps/ad/inmobi/n;-><init>(Landroid/content/Context;)V

    add-int/lit8 v2, v0, -0x1

    iput v2, v1, Lcom/duapps/ad/inmobi/n;->b:I

    iget-object v2, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    invoke-static {v2}, Lcom/duapps/ad/inmobi/i;->b(Lcom/duapps/ad/inmobi/i;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    invoke-static {v0}, Lcom/duapps/ad/inmobi/i;->c(Lcom/duapps/ad/inmobi/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    iget-object v0, p0, Lcom/duapps/ad/inmobi/j;->a:Lcom/duapps/ad/inmobi/i;

    invoke-static {v0}, Lcom/duapps/ad/inmobi/i;->b(Lcom/duapps/ad/inmobi/i;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/n;

    invoke-static {v1, v0}, Lcom/duapps/ad/inmobi/i;->a(Lcom/duapps/ad/inmobi/i;Lcom/duapps/ad/inmobi/n;)V

    :cond_1
    return-void
.end method
