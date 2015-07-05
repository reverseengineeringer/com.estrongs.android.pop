.class public Lcom/estrongs/android/view/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/d;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/view/cd;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/cn;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    iget-object v0, v0, Lcom/estrongs/android/view/cd;->ag:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->an()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    iget-object v0, v0, Lcom/estrongs/android/view/cd;->ag:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->ao()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/cp;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/cp;

    invoke-direct {v1}, Lcom/estrongs/android/view/cp;-><init>()V

    const v0, 0x7f0a001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/cp;->f:Landroid/widget/TextView;

    const v0, 0x7f0a011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/cp;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/cp;->g:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/cp;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/cp;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v1, Lcom/estrongs/android/view/cp;->d:Landroid/view/View;

    const v0, 0x7f0a0232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    :cond_0
    return-object v1
.end method

.method public a(Lcom/estrongs/android/widget/e;I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aF(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    const-string v2, "MIDDLE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    instance-of v1, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cd;->z()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/cd;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->am()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->al()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/estrongs/android/view/cp;

    iget-object v2, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_4
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0, v6}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/fs/h;Z)Lcom/estrongs/fs/h;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    const v2, -0x5a5a5b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {v1, v6}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    const-string v2, "END"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->D()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->am()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->al()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200ec

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->at(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/estrongs/android/view/cp;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v1, v1, Lcom/estrongs/android/view/cp;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    if-nez p2, :cond_d

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/estrongs/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "makeAndAddView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_e

    :cond_d
    if-lez p2, :cond_0

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cd;->i(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->Y()Lcom/estrongs/android/d/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/cn;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->Y()Lcom/estrongs/android/d/k;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v0, v2}, Lcom/estrongs/android/d/k;->a(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/e;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/widget/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cn;->a(Landroid/view/View;)Lcom/estrongs/android/view/cp;

    move-result-object v0

    return-object v0
.end method
