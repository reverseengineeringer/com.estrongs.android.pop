.class Lcom/estrongs/android/pop/app/imageviewer/cg;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private e:Lcom/estrongs/android/f/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ed

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e044d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    const v0, 0x7f0e044e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->b:Landroid/view/View;

    const v0, 0x7f0e044f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->c:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/f/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->e:Lcom/estrongs/android/f/a;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->e:Lcom/estrongs/android/f/a;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-progress::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->c:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->b:Landroid/view/View;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-progress::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/an;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-sucess::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->b:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->c:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0, p2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-sucess::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-error::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->b:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cg;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Landroid/view/View;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load-error::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
