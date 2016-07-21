.class Lcom/flurry/sdk/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ln;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$1;->a:Lcom/flurry/sdk/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ln;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dq$1;->a(Lcom/flurry/sdk/ln;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ln;)V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/dq$a;->b:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq$1;->a:Lcom/flurry/sdk/dq;

    invoke-static {v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$1$1;-><init>(Lcom/flurry/sdk/dq$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/dq$a;->d:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq$1;->a:Lcom/flurry/sdk/dq;

    invoke-static {v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$1$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$1$2;-><init>(Lcom/flurry/sdk/dq$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq$1;->a:Lcom/flurry/sdk/dq;

    invoke-static {v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$1$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$1$3;-><init>(Lcom/flurry/sdk/dq$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/flurry/sdk/dq$a;->h:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq$1;->a:Lcom/flurry/sdk/dq;

    invoke-static {v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$1$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$1$4;-><init>(Lcom/flurry/sdk/dq$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
