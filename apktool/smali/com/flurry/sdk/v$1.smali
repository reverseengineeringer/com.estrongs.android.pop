.class Lcom/flurry/sdk/v$1;
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
.field final synthetic a:Lcom/flurry/sdk/v;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ln;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/v$1;->a(Lcom/flurry/sdk/ln;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ln;)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    invoke-virtual {v0}, Lcom/flurry/sdk/v;->t()V

    iget-object v0, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/v;->a(Lcom/flurry/sdk/v;J)J

    return-void
.end method
