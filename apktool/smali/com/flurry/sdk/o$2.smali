.class Lcom/flurry/sdk/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/jg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/o;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/o$2;->a:Lcom/flurry/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jg;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/o$2;->a:Lcom/flurry/sdk/o;

    invoke-static {v0}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/o;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/jg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/o$2;->a(Lcom/flurry/sdk/jg;)V

    return-void
.end method
