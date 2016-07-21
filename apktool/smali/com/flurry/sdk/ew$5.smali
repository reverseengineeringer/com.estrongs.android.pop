.class Lcom/flurry/sdk/ew$5;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    iput-object p2, p0, Lcom/flurry/sdk/ew$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/flurry/sdk/ew$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ew;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    iget-object v1, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->d(Lcom/flurry/sdk/ew;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Landroid/os/Bundle;)Lcom/flurry/sdk/et;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/flurry/sdk/ey;

    iget-object v2, p0, Lcom/flurry/sdk/ew$5;->a:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/ey;-><init>(Lcom/flurry/sdk/et;Ljava/util/List;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$5;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    invoke-static {v2}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;Lcom/flurry/sdk/hi;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ew$5;->c:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    goto :goto_0
.end method
