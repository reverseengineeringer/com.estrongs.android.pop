.class public Lcom/estrongs/android/ui/pcs/an;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/android/ui/pcs/an;->d(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    invoke-static {p0, p1}, Lcom/estrongs/android/ui/pcs/an;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    invoke-static {p0, p1}, Lcom/estrongs/android/ui/pcs/an;->c(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ao;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0493

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/SapiWebView;->setNoNetworkView(Landroid/view/View;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/pcs/ap;

    invoke-direct {v2, p1, v0}, Lcom/estrongs/android/ui/pcs/ap;-><init>(Lcom/baidu/sapi2/SapiWebView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/SapiWebView;->setTimeoutView(Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/SapiWebView;->setProgressBar(Landroid/widget/ProgressBar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
