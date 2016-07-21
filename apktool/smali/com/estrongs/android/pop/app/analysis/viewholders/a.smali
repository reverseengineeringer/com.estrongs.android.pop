.class public Lcom/estrongs/android/pop/app/analysis/viewholders/a;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/n;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_ad_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_ad_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/viewholders/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/a;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v1, "ad"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a/a;->a()Lcom/estrongs/android/pop/app/ad/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/viewholders/b;

    invoke-direct {v3, p0, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/b;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/a;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/flurry/android/ads/FlurryAdNative;Lcom/estrongs/android/pop/app/ad/a/e;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
