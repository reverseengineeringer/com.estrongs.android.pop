.class Lcom/flurry/sdk/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/n;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/x$2;->a(Lcom/flurry/sdk/n;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/n;)V
    .locals 3

    iget v0, p1, Lcom/flurry/sdk/n;->b:I

    iget-object v1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v1}, Lcom/flurry/sdk/x;->e()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/x;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    iget-object v1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->h(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method
