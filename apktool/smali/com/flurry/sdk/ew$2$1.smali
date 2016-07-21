.class Lcom/flurry/sdk/ew$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/ex$b;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew$2;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    iget-object v0, v0, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    iget-object v2, v2, Lcom/flurry/sdk/ew$2;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/flurry/sdk/hi;->a(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    iget-object v0, v0, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    iget-object v1, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    iget-object v1, v1, Lcom/flurry/sdk/ew$2;->c:Lcom/flurry/sdk/eg;

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/eg;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ed;->i:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ew$2$1;->a:Lcom/flurry/sdk/ew$2;

    iget-object v1, v1, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)I

    move-result v1

    const-string v2, "Login failed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    goto :goto_0
.end method
