.class Lcom/flurry/sdk/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$5;->a:Lcom/flurry/sdk/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ae;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$5$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dq$5$1;-><init>(Lcom/flurry/sdk/dq$5;Lcom/flurry/sdk/ae;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ae;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dq$5;->a(Lcom/flurry/sdk/ae;)V

    return-void
.end method
