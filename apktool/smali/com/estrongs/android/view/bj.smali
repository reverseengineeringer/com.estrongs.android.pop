.class public Lcom/estrongs/android/view/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cn;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/view/ak;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/ak;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/bj;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/bl;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/bl;

    invoke-direct {v0, p1}, Lcom/estrongs/android/view/bl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 11

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/ak;->e(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/estrongs/fs/h;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->q:Z

    if-eqz v0, :cond_2

    invoke-static {v10}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    check-cast p1, Lcom/estrongs/android/view/bl;

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->a:Landroid/widget/TextView;

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    const v2, 0x7f08019d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->e:Ljava/text/SimpleDateFormat;

    invoke-interface {v10}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/estrongs/android/h/f;->g(Lcom/estrongs/fs/h;)I

    move-result v0

    invoke-static {v10}, Lcom/estrongs/android/h/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/estrongs/android/view/bl;->j:Landroid/widget/ImageView;

    invoke-static {v2, v3, v10, v0, v1}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    :goto_5
    invoke-static {}, Lcom/estrongs/android/view/ak;->u()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/compress/bb;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->e(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/br;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/compress/bb;->a(Lcom/estrongs/android/pop/app/compress/br;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->d:Landroid/widget/ProgressBar;

    iget-object v3, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/estrongs/android/view/bl;->g:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    iget-object v7, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    :cond_4
    invoke-static {}, Lcom/estrongs/android/view/ak;->w()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/view/ak;->w()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/estrongs/android/pop/app/compress/bb;

    iget-object v2, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v2, v2, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/app/compress/bb;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v2}, Lcom/estrongs/android/view/ak;->e(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/br;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/app/compress/bb;->a(Lcom/estrongs/android/pop/app/compress/br;)V

    iget-object v2, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v4, p1, Lcom/estrongs/android/view/bl;->d:Landroid/widget/ProgressBar;

    iget-object v5, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/estrongs/android/view/bl;->g:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    iget-object v9, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    invoke-static/range {v2 .. v9}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/compress/bb;->a(Lcom/estrongs/android/pop/app/compress/ba;)V

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/compress/bb;->b()V

    invoke-static {}, Lcom/estrongs/android/view/ak;->w()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/estrongs/android/view/ak;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/ax;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->a(Landroid/widget/ProgressBar;)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->b(Landroid/widget/TextView;)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->c(Landroid/widget/TextView;)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->d(Landroid/widget/TextView;)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->a(Landroid/widget/ImageView;)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/ax;->a(Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ax;->b()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ax;->c()V

    :cond_6
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->d:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    const v3, 0x7f020417

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    const v4, 0x7f0802e5

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a/d;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/compress/a/e;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-boolean v3, v2, Lcom/estrongs/android/pop/app/compress/a/e;->d:Z

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/estrongs/android/pop/app/compress/a/e;->c:Ljava/lang/String;

    if-eqz v3, :cond_f

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/a/e;->c:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    const v1, 0x7f02042e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->a()Lcom/estrongs/android/pop/utils/aa;

    move-result-object v1

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/utils/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getLeftCornorImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_e

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->invalidate()V

    :cond_8
    :goto_7
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/view/bk;

    invoke-direct {v1, p0, v10, p1}, Lcom/estrongs/android/view/bk;-><init>(Lcom/estrongs/android/view/bj;Lcom/estrongs/fs/h;Lcom/estrongs/android/view/bl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/estrongs/android/view/bl;->l:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->q:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v2, p1, Lcom/estrongs/android/view/bl;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->q:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->q:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/ak;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->v:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->q:Z

    if-eqz v0, :cond_a

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/ak;->h(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ak;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_17

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->s:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v3, p2}, Lcom/estrongs/android/view/ak;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    new-instance v3, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v3}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Rect;Lcom/estrongs/android/ui/drag/j;Landroid/view/View;)V

    :cond_a
    :goto_c
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/ak;->b(Lcom/estrongs/android/view/ci;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->e:Landroid/widget/TextView;

    invoke-interface {v10}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p1, Lcom/estrongs/android/view/bl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f0805d4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    iget-object v1, p1, Lcom/estrongs/android/view/bl;->j:Landroid/widget/ImageView;

    invoke-static {v0, v1, v10}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto/16 :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_f
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->b:Landroid/widget/ImageView;

    const v1, 0x7f020417

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    const v2, 0x7f0802e5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_10
    const/16 v0, 0x8

    goto/16 :goto_8

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_a

    :cond_13
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_a

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ak;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_15

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->s:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/ak;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_15
    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v1, p1, Lcom/estrongs/android/view/bl;->i:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ak;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->e()V

    goto/16 :goto_c

    :cond_17
    move-object v1, v0

    goto/16 :goto_b
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/view/ci;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/bj;->a(Landroid/view/View;)Lcom/estrongs/android/view/bl;

    move-result-object v0

    return-object v0
.end method
