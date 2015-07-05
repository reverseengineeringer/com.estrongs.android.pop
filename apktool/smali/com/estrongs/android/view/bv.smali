.class public Lcom/estrongs/android/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/d;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/estrongs/android/view/aw;

.field private f:Lcom/estrongs/android/appinfo/o;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bv;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bv;->c:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/bw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bw;-><init>(Lcom/estrongs/android/view/bv;)V

    iput-object v0, p0, Lcom/estrongs/android/view/bv;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/view/bx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bx;-><init>(Lcom/estrongs/android/view/bv;)V

    iput-object v0, p0, Lcom/estrongs/android/view/bv;->f:Lcom/estrongs/android/appinfo/o;

    iput-object v2, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/view/bv;->i:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/view/View;)Lcom/estrongs/android/view/bt;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/bt;

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-direct {v1, v0}, Lcom/estrongs/android/view/bt;-><init>(Lcom/estrongs/android/view/aw;)V

    const v0, 0x7f0a001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/bt;->f:Landroid/widget/TextView;

    const v0, 0x7f0a011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/bt;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/bt;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v2, v2, Lcom/estrongs/android/view/aw;->ac:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, v1, Lcom/estrongs/android/view/bt;->d:Landroid/view/View;

    return-object v1
.end method

.method private d(Landroid/view/View;)Lcom/estrongs/android/view/bt;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/estrongs/android/view/bt;

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-direct {v3, v0}, Lcom/estrongs/android/view/bt;-><init>(Lcom/estrongs/android/view/aw;)V

    const v0, 0x7f0a001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bt;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/estrongs/android/view/bt;->f:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    iget-object v0, v3, Lcom/estrongs/android/view/bt;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->ac:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v3, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    iget-object v0, v3, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v3, Lcom/estrongs/android/view/bt;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v3, Lcom/estrongs/android/view/bt;->d:Landroid/view/View;

    const v0, 0x7f0a011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/estrongs/android/view/bt;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESTextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 7

    const v6, 0x7f0a001e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->c(Lcom/estrongs/android/view/aw;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->A()F

    move-result v3

    const-string v4, "abcwwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;F)F

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->c(Lcom/estrongs/android/view/aw;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006d

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->d(Lcom/estrongs/android/view/aw;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->A()F

    move-result v3

    const-string v4, "abcwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/android/view/aw;F)F

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->d(Lcom/estrongs/android/view/aw;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput v5, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006e

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->e(Lcom/estrongs/android/view/aw;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->A()F

    move-result v3

    const-string v4, "abcww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/aw;->c(Lcom/estrongs/android/view/aw;F)F

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v2}, Lcom/estrongs/android/view/aw;->e(Lcom/estrongs/android/view/aw;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006a

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iput v3, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006b

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iput v3, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006c

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/estrongs/android/view/bv;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030067

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030068

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030069

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f03006a

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/fs/h;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bv;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/bt;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v0, v0, Lcom/estrongs/android/view/aw;->k:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/bv;->c(Landroid/view/View;)Lcom/estrongs/android/view/bt;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->k:I

    iput v1, v0, Lcom/estrongs/android/view/bt;->b:I

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/view/bv;->d(Landroid/view/View;)Lcom/estrongs/android/view/bt;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/e;I)V
    .locals 12

    const/4 v11, 0x0

    const v10, 0x7f0b0564

    const v9, 0x7f020040

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/view/bt;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v2, v1, Lcom/estrongs/fs/impl/n/a;

    if-eqz v2, :cond_29

    check-cast v1, Lcom/estrongs/fs/impl/n/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/n/a;->a()Lcom/estrongs/fs/h;

    move-result-object v2

    :goto_1
    iget-object v1, v0, Lcom/estrongs/android/view/bt;->d:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/DragGrid;->a(Lcom/estrongs/fs/h;)V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v4, v4, Lcom/estrongs/android/view/aw;->ac:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->d()I

    move-result v1

    const/4 v4, 0x3

    if-ne v4, v1, :cond_b

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v4}, Lcom/estrongs/android/view/aw;->f(Lcom/estrongs/android/view/aw;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_3
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/d/f;->c(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v2, v8}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_4
    sget-boolean v1, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v4, v4, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    iget-object v5, p0, Lcom/estrongs/android/view/bv;->f:Lcom/estrongs/android/appinfo/o;

    invoke-virtual {v1, v4, v2, v5}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_4
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->c(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201a2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_5
    instance-of v1, v2, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/ui/pcs/w;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201a7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v1, v0, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    if-eqz v1, :cond_8

    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v1}, Lcom/estrongs/android/view/aw;->g(Lcom/estrongs/android/view/aw;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    sget-object v4, Lcom/estrongs/fs/m;->i:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/estrongs/fs/m;->j:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    const v4, 0x7f0b019f

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/aw;->l(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    :goto_6
    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v1}, Lcom/estrongs/android/view/aw;->g(Lcom/estrongs/android/view/aw;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :goto_7
    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v1}, Lcom/estrongs/android/view/aw;->g(Lcom/estrongs/android/view/aw;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_8
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_9
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->l:Z

    if-eqz v0, :cond_22

    move v0, v3

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->l:Z

    if-eqz v0, :cond_24

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/aw;->h(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    sget-boolean v0, Lcom/estrongs/android/pop/z;->v:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->l:Z

    if-eqz v0, :cond_9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/aw;->h(I)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_25

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->n:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/aw;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_28

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3, p2}, Lcom/estrongs/android/view/aw;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    new-instance v3, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v3}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Rect;Lcom/estrongs/android/ui/drag/j;Landroid/view/View;)V

    :cond_9
    :goto_d
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/widget/e;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x2

    if-ne v4, v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-static {v4}, Lcom/estrongs/android/view/aw;->f(Lcom/estrongs/android/view/aw;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v4

    const v5, 0x7f080024

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_c
    if-nez p2, :cond_d

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/estrongs/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "makeAndAddView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_e

    :cond_d
    if-lez p2, :cond_3

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/aw;->i(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    iget-object v4, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v2, v4}, Lcom/estrongs/android/d/k;->a(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    :cond_f
    invoke-interface {v2}, Lcom/estrongs/fs/h;->isLink()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_10
    sget-object v1, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020088

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->e:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_11
    sget-object v4, Lcom/estrongs/fs/m;->k:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/estrongs/fs/m;->l:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    const v4, 0x7f0b004f

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/aw;->l(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    sget-object v4, Lcom/estrongs/fs/m;->m:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcom/estrongs/fs/m;->n:Lcom/estrongs/fs/m;

    invoke-virtual {v4, v1}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    const v4, 0x7f0b01a6

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/aw;->l(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "flashair://flashair/"

    const-string v4, "flashair://"

    const-string v5, "http://"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_16
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_17
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "child_count"

    invoke-interface {v2, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child_count"

    invoke-interface {v2, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_18
    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    const v4, 0x7f0b0063

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/aw;->l(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_19
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_1a

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1a
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    instance-of v1, v2, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    const v4, 0x7f0b0082

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/aw;->l(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1b
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1c
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1d
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_1e

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1e
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1f
    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_20

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Lcom/estrongs/android/view/bv;->i:Ljava/lang/String;

    goto/16 :goto_8

    :cond_20
    sget-object v1, Lcom/estrongs/android/view/aw;->G:Ljava/text/DateFormat;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_21
    iget-object v0, v0, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_22
    const/16 v0, 0x8

    goto/16 :goto_a

    :cond_23
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_24
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->n:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/aw;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_26

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/aw;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_26
    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->n:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->e()V

    goto/16 :goto_d

    :cond_28
    move-object v1, v0

    goto/16 :goto_c

    :cond_29
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/estrongs/android/widget/e;)Z
    .locals 2

    if-eqz p1, :cond_0

    check-cast p1, Lcom/estrongs/android/view/bt;

    iget v0, p1, Lcom/estrongs/android/view/bt;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->k:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/widget/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/bv;->a(Landroid/view/View;)Lcom/estrongs/android/view/bt;

    move-result-object v0

    return-object v0
.end method
