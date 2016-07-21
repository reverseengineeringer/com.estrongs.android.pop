.class Lcom/flurry/sdk/m$5;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/x;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/m$5;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    iput-object p3, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/m;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdCacheNative: Attempting to play video from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v3}, Lcom/flurry/sdk/x;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gf;

    iget-object v1, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v1}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/gf;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iget-object v1, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    iget-object v2, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/ge;Ljava/lang/String;)V

    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v2}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v1, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
