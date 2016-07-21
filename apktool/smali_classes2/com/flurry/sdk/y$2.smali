.class Lcom/flurry/sdk/y$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/bd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/y$2;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/bd;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/y$2;->a:Lcom/flurry/sdk/y;

    iget-object v1, p1, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/be;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/be;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/bd;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/y$2;->a(Lcom/flurry/sdk/bd;)V

    return-void
.end method
