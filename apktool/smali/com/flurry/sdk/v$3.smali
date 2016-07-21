.class Lcom/flurry/sdk/v$3;
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
.field final synthetic a:Lcom/flurry/sdk/v;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/d;)V
    .locals 4

    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    iget-object v1, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/v;->a(Lcom/flurry/sdk/d;)V

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    invoke-interface {v1}, Lcom/flurry/sdk/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/v$3$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/flurry/sdk/v$3$1;-><init>(Lcom/flurry/sdk/v$3;Lcom/flurry/sdk/d;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/d;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/v$3;->a(Lcom/flurry/sdk/d;)V

    return-void
.end method
