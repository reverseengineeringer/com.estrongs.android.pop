.class Lcom/flurry/sdk/ew$6$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew$6;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$6$1;->a:Lcom/flurry/sdk/ew$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/sdk/ew$6$1;->a:Lcom/flurry/sdk/ew$6;

    iget-object v2, v2, Lcom/flurry/sdk/ew$6;->a:Lcom/flurry/sdk/ew;

    invoke-static {v2}, Lcom/flurry/sdk/ew;->e(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/kb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->b(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$6$1;->a:Lcom/flurry/sdk/ew$6;

    iget-object v0, v0, Lcom/flurry/sdk/ew$6;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ew;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$6$1;->a:Lcom/flurry/sdk/ew$6;

    iget-object v0, v0, Lcom/flurry/sdk/ew$6;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/hi;->a()V

    return-void
.end method
