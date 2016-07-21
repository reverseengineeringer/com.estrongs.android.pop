.class Lcom/flurry/sdk/gf$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gf$3;->a:Lcom/flurry/sdk/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/flurry/sdk/gf$3;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gf;->c(Lcom/flurry/sdk/gf;Z)Z

    iget-object v0, p0, Lcom/flurry/sdk/gf$3;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->w()V

    iget-object v0, p0, Lcom/flurry/sdk/gf$3;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->f(Lcom/flurry/sdk/gf;)Lcom/flurry/sdk/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->c(Z)V

    return-void
.end method
