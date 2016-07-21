.class Lcom/flurry/sdk/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/p;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/p;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/p$2;->a:Lcom/flurry/sdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/d;)V
    .locals 2

    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    iget-object v1, p0, Lcom/flurry/sdk/p$2;->a:Lcom/flurry/sdk/p;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/p$2;->a:Lcom/flurry/sdk/p;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/p;->a(Lcom/flurry/sdk/d;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/d;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/p$2;->a(Lcom/flurry/sdk/d;)V

    return-void
.end method
