.class Lcom/flurry/sdk/dq$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$6;->a:Lcom/flurry/sdk/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ds;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/dq$6;->a:Lcom/flurry/sdk/dq;

    invoke-static {v0}, Lcom/flurry/sdk/dq;->f(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dr;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$6$1;-><init>(Lcom/flurry/sdk/dq$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dq$6;->a:Lcom/flurry/sdk/dq;

    invoke-static {v0}, Lcom/flurry/sdk/dq;->h(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dr;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$6$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dq$6$2;-><init>(Lcom/flurry/sdk/dq$6;Lcom/flurry/sdk/ds;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ds;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dq$6;->a(Lcom/flurry/sdk/ds;)V

    return-void
.end method
