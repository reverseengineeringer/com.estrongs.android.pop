.class Lcom/estrongs/android/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/bl;

.field final synthetic c:Lcom/estrongs/android/view/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bj;Lcom/estrongs/fs/h;Lcom/estrongs/android/view/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iput-object p2, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/view/ak;->u()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/bb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bb;->c()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v1, v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/view/ak;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/ax;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ax;->d()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v2, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/fs/h;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a/d;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/compress/a/e;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->a()Lcom/estrongs/android/pop/utils/aa;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/utils/aa;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-boolean v0, v1, Lcom/estrongs/android/pop/app/compress/a/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/estrongs/android/pop/app/compress/a/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/estrongs/android/pop/app/compress/a/e;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/a/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/compress/a;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/compress/j;)V

    new-instance v2, Lcom/estrongs/android/pop/app/compress/bb;

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/app/compress/bb;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v3, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v3, v3, Lcom/estrongs/android/view/bl;->d:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v4, v4, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v5, v5, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v6, v6, Lcom/estrongs/android/view/bl;->g:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v7, v7, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bl;

    iget-object v8, v8, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    invoke-static/range {v1 .. v8}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->c:Lcom/estrongs/android/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v1}, Lcom/estrongs/android/view/ak;->e(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/br;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/compress/bb;->a(Lcom/estrongs/android/pop/app/compress/br;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/a;->a()V

    goto/16 :goto_0
.end method
