.class Lcom/flurry/sdk/ew$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$6;->a:Lcom/flurry/sdk/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ec;)V
    .locals 2

    iget v0, p1, Lcom/flurry/sdk/ec;->c:I

    iget-object v1, p0, Lcom/flurry/sdk/ew$6;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/ec$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ew$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ew$6$1;-><init>(Lcom/flurry/sdk/ew$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ec;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ew$6;->a(Lcom/flurry/sdk/ec;)V

    return-void
.end method
