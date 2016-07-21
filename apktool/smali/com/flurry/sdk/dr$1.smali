.class Lcom/flurry/sdk/dr$1;
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
.field final synthetic a:Lcom/flurry/sdk/dr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dr$1;->a:Lcom/flurry/sdk/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jg;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr$1;->a:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/jg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dr$1;->a(Lcom/flurry/sdk/jg;)V

    return-void
.end method
