.class Lcom/flurry/sdk/ey$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ey$5;->b:Lcom/flurry/sdk/ey;

    iput-object p2, p0, Lcom/flurry/sdk/ey$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ey$5;->b:Lcom/flurry/sdk/ey;

    invoke-static {v0}, Lcom/flurry/sdk/ey;->g(Lcom/flurry/sdk/ey;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flurry/sdk/ey$5;->b:Lcom/flurry/sdk/ey;

    iget-object v1, p0, Lcom/flurry/sdk/ey$5;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/ey$5;->b:Lcom/flurry/sdk/ey;

    invoke-static {v2}, Lcom/flurry/sdk/ey;->g(Lcom/flurry/sdk/ey;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method
