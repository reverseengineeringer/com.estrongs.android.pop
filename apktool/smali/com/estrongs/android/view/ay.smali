.class Lcom/estrongs/android/view/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/ak;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const v1, 0x7f0e0282

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setLeftCornerImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->invalidate()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->E:Lcom/estrongs/android/view/dx;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/view/ak;->u()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/compress/bb;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/view/ak;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->E:Lcom/estrongs/android/view/dx;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/dx;->a(Lcom/estrongs/fs/h;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->ah:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "compress_lb"

    const-string v2, "lp_open"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
