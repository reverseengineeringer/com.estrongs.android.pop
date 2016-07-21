.class Lcom/flurry/sdk/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/jk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/o;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/o$3;->a:Lcom/flurry/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jk;)V
    .locals 1

    iget-boolean v0, p1, Lcom/flurry/sdk/jk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/o$3;->a:Lcom/flurry/sdk/o;

    invoke-static {v0}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/o;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/jk;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/o$3;->a(Lcom/flurry/sdk/jk;)V

    return-void
.end method
