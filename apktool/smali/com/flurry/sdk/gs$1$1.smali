.class Lcom/flurry/sdk/gs$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gu;

.field final synthetic b:Lcom/flurry/sdk/gs$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs$1;Lcom/flurry/sdk/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iput-object p2, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    iget-object v0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    sget-object v1, Lcom/flurry/sdk/gs$8;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/gu$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iget-object v0, v0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gu;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iget-object v0, v0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iget-object v0, v0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iget-object v0, v0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->b(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/flurry/sdk/gs$1$1;->b:Lcom/flurry/sdk/gs$1;

    iget-object v0, v0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$1$1;->a:Lcom/flurry/sdk/gu;

    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
