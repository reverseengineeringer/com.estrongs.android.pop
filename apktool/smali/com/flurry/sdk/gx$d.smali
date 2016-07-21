.class final Lcom/flurry/sdk/gx$d;
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
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$d;->b(Lcom/flurry/sdk/cn;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$d;->c(Lcom/flurry/sdk/cn;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
