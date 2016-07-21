.class Lcom/flurry/sdk/gf$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    iget-object v0, v0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->b(Lcom/flurry/sdk/gf;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->c(Lcom/flurry/sdk/gf;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->d(Lcom/flurry/sdk/gf;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->o()V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->e(Lcom/flurry/sdk/gf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    iget-object v1, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v1}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gf;->b(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0, v2}, Lcom/flurry/sdk/gf;->a(Lcom/flurry/sdk/gf;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gf;->b(Lcom/flurry/sdk/gf;Z)Z

    iget-object v0, p0, Lcom/flurry/sdk/gf$2;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->b()V

    goto :goto_0
.end method
