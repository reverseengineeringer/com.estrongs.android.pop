.class Lcom/flurry/sdk/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/lg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/p;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/p;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/p$3;->a:Lcom/flurry/sdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/lg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/p$3;->a(Lcom/flurry/sdk/lg;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/lg;)V
    .locals 2

    iget-object v0, p1, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lf;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/p$4;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/lg$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/p$3;->a:Lcom/flurry/sdk/p;

    invoke-virtual {v0}, Lcom/flurry/sdk/p;->v()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/p$3;->a:Lcom/flurry/sdk/p;

    invoke-virtual {v0}, Lcom/flurry/sdk/p;->w()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
