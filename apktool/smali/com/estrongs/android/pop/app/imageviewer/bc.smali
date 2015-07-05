.class Lcom/estrongs/android/pop/app/imageviewer/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ba;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/q;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/q;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/imageviewer/gallery/f;)V

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/q;)Lcom/estrongs/android/pop/app/imageviewer/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/q;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/q;->a(Lcom/estrongs/android/pop/app/imageviewer/p;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x42a80000    # 84.0f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/imageviewer/q;->b(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chromecast"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/r;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->b:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->show()V

    goto/16 :goto_0
.end method
