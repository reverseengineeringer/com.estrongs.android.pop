.class Lcom/estrongs/android/pop/app/imageviewer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->m()I

    move-result v2

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->l()I

    move-result v0

    :goto_0
    if-lez v2, :cond_0

    if-lez v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v6, 0x7f0b0568

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ks;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const-string v2, "image"

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ks;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ax;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ax;-><init>(Lcom/estrongs/android/pop/app/imageviewer/aw;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/kv;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ks;->show()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method
