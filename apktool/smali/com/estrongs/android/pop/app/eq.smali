.class Lcom/estrongs/android/pop/app/eq;
.super Lcom/estrongs/android/ui/d/b;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/eq;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/d/b;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v0, Lcom/estrongs/android/pop/app/er;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/er;-><init>(Lcom/estrongs/android/pop/app/eq;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/eq;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eq;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/estrongs/android/pop/app/es;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/pop/app/es;-><init>(Lcom/estrongs/android/pop/app/eq;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/eq;->a(Lcom/estrongs/android/ui/d/d;)V

    new-instance v0, Lcom/estrongs/android/pop/app/et;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/pop/app/et;-><init>(Lcom/estrongs/android/pop/app/eq;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/eq;->a(Lcom/estrongs/android/ui/d/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/eq;->e(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/bc;

    invoke-interface {v0, p1}, Lcom/estrongs/android/widget/bc;->c(I)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
