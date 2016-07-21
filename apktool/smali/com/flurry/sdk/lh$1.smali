.class Lcom/flurry/sdk/lh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/lj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lh;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lh$1;->a:Lcom/flurry/sdk/lh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/lj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lh$1;->a(Lcom/flurry/sdk/lj;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/lj;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/lh$1;->a:Lcom/flurry/sdk/lh;

    invoke-static {v0}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/lh;)V

    return-void
.end method
