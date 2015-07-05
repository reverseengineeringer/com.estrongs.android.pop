.class Lcom/estrongs/android/view/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->f(Lcom/estrongs/android/view/WebViewWrapper;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v4, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v4, v4, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/WebViewWrapper;->l(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    const v6, 0x7f0b003c

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/WebViewWrapper;->l(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    const v7, 0x7f0b0231

    invoke-virtual {v6, v7}, Lcom/estrongs/android/view/WebViewWrapper;->l(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, -0x1

    new-instance v6, Lcom/estrongs/android/view/eh;

    invoke-direct {v6, p0, v2}, Lcom/estrongs/android/view/eh;-><init>(Lcom/estrongs/android/view/eg;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
