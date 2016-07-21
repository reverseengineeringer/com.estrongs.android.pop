.class final Lcom/flurry/sdk/gx$a;
.super Lcom/flurry/sdk/gx$c;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gx$c;-><init>(Lcom/flurry/sdk/gx$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/cn;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/gx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$a;->b(Lcom/flurry/sdk/cn;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$a;->c(Lcom/flurry/sdk/cn;)I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method
