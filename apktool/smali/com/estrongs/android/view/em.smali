.class public Lcom/estrongs/android/view/em;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cn;


# instance fields
.field a:I

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/estrongs/android/view/eb;

.field private d:Lcom/estrongs/android/appinfo/p;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/eb;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/em;->a:I

    new-instance v0, Lcom/estrongs/android/view/en;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/en;-><init>(Lcom/estrongs/android/view/em;)V

    iput-object v0, p0, Lcom/estrongs/android/view/em;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/view/eo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/eo;-><init>(Lcom/estrongs/android/view/em;)V

    iput-object v0, p0, Lcom/estrongs/android/view/em;->d:Lcom/estrongs/android/appinfo/p;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/eq;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/eq;

    invoke-direct {v1, p1}, Lcom/estrongs/android/view/eq;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/eq;->k:Landroid/widget/TextView;

    const v0, 0x7f0e0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/eq;->j:Landroid/widget/ImageView;

    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/eq;->l:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/eq;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/eq;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v1, Lcom/estrongs/android/view/eq;->i:Landroid/view/View;

    const v0, 0x7f0e010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    :cond_0
    return-object v1
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 9

    const/16 v4, 0x8

    const/4 v8, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v5}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aP(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    const-string v5, "MIDDLE"

    invoke-static {v5}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_2
    const v5, 0x7f020198

    instance-of v1, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v6}, Lcom/estrongs/android/view/eb;->N()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v6, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v6, p2}, Lcom/estrongs/android/view/eb;->h(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->v()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_4
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/estrongs/android/view/eq;

    iget-object v6, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->az(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v4, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    const v6, 0x7f0201fb

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_5
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/fs/h;Z)Lcom/estrongs/fs/h;

    move-result-object v1

    iget-object v3, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_10

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-static {v3, v4, v1, v5, v2}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    :goto_6
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    iget-object v2, v2, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/em;->d:Lcom/estrongs/android/appinfo/p;

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/eb;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v1, v3}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/eb;Z)V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/eb;)I

    move-result v1

    iget-object v5, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v5}, Lcom/estrongs/android/view/eb;->b(Lcom/estrongs/android/view/eb;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/estrongs/android/h/f;->b()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_7
    iget-object v5, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v1, v3

    :goto_8
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v4

    goto :goto_8

    :cond_8
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    const-string v5, "END"

    invoke-static {v5}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->R()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->v()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->aA(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v4, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    const v6, 0x7f020210

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->aB(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v4, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    const v6, 0x7f0201fa

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->aC(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->aD(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/estrongs/android/view/eq;->j:Landroid/widget/ImageView;

    invoke-static {v3, v6, v0, v5, v2}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    iget-object v0, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v4, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    const v6, 0x7f020213

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v1, v1, Lcom/estrongs/android/view/eq;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-static {v1, v3, v0, v5, v2}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    goto/16 :goto_6

    :cond_11
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-static {v1, v3, v0, v5, v2}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    goto/16 :goto_0
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/view/ci;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/em;->a(Landroid/view/View;)Lcom/estrongs/android/view/eq;

    move-result-object v0

    return-object v0
.end method
