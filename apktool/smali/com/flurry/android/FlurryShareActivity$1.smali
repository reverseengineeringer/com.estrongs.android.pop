.class Lcom/flurry/android/FlurryShareActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/hi;


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryShareActivity;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryShareActivity;->finish()V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryShareActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
