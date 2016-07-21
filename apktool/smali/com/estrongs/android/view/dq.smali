.class public Lcom/estrongs/android/view/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cn;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/estrongs/android/view/cr;

.field private f:Lcom/estrongs/android/appinfo/p;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/dq;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v1, 0x7f08025e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/dq;->c:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/dr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dr;-><init>(Lcom/estrongs/android/view/dq;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dq;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/view/ds;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ds;-><init>(Lcom/estrongs/android/view/dq;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dq;->f:Lcom/estrongs/android/appinfo/p;

    iput-object v2, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/view/View;)Lcom/estrongs/android/view/do;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/do;

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-direct {v1, v0, p1}, Lcom/estrongs/android/view/do;-><init>(Lcom/estrongs/android/view/cr;Landroid/view/View;)V

    const v0, 0x7f0e0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/do;->k:Landroid/widget/TextView;

    const v0, 0x7f0e0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/do;->j:Landroid/widget/ImageView;

    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/do;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v2, v2, Lcom/estrongs/android/view/cr;->af:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, v1, Lcom/estrongs/android/view/do;->i:Landroid/view/View;

    return-object v1
.end method

.method private d(Landroid/view/View;)Lcom/estrongs/android/view/do;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/estrongs/android/view/do;

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-direct {v3, v0, p1}, Lcom/estrongs/android/view/do;-><init>(Lcom/estrongs/android/view/cr;Landroid/view/View;)V

    const v0, 0x7f0e0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/do;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

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

    iget-object v0, v3, Lcom/estrongs/android/view/do;->k:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    iget-object v0, v3, Lcom/estrongs/android/view/do;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v1, v1, Lcom/estrongs/android/view/cr;->af:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v3, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    iget-object v0, v3, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v3, Lcom/estrongs/android/view/do;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v3, Lcom/estrongs/android/view/do;->i:Landroid/view/View;

    const v0, 0x7f0e0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/estrongs/android/view/do;->j:Landroid/widget/ImageView;

    const v0, 0x7f0e0401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESTextView;

    iput-object v0, v3, Lcom/estrongs/android/view/do;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 7

    const v6, 0x7f0e0108

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/android/view/cr;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->O()F

    move-result v3

    const-string v4, "abcwwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;F)F

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/android/view/cr;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d8

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->d(Lcom/estrongs/android/view/cr;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->O()F

    move-result v3

    const-string v4, "abcwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/android/view/cr;F)F

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->d(Lcom/estrongs/android/view/cr;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput v5, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->e(Lcom/estrongs/android/view/cr;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->O()F

    move-result v3

    const-string v4, "abcww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/android/view/cr;F)F

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v2}, Lcom/estrongs/android/view/cr;->e(Lcom/estrongs/android/view/cr;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iput v3, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d6

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iput v3, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d7

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/estrongs/android/view/dq;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d3

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/do;
    .locals 4

    const v3, 0x7f0e0285

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/dq;->c(Landroid/view/View;)Lcom/estrongs/android/view/do;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/do;->n:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v0, v0, Lcom/estrongs/android/view/cr;->p:I

    iput v0, v1, Lcom/estrongs/android/view/do;->b:I

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/view/dq;->d(Landroid/view/View;)Lcom/estrongs/android/view/do;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 12

    const/16 v11, 0x8

    const v10, 0x7f0805d4

    const/4 v9, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/view/do;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v2, v1, Lcom/estrongs/fs/impl/s/a;

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/estrongs/fs/impl/s/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/s/a;->a()Lcom/estrongs/fs/h;

    move-result-object v2

    :goto_1
    iget-object v1, v0, Lcom/estrongs/android/view/do;->i:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/DragGrid;->setFileObject(Lcom/estrongs/fs/h;)V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget v3, v3, Lcom/estrongs/android/view/cr;->af:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    instance-of v1, v2, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/d;->i()I

    move-result v1

    const/4 v3, 0x3

    if-ne v3, v1, :cond_d

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v3}, Lcom/estrongs/android/view/cr;->f(Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_3
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/h/f;->g(Lcom/estrongs/fs/h;)I

    move-result v1

    invoke-static {v2}, Lcom/estrongs/android/h/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-static {v3, v4, v2, v1, v9}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    :goto_4
    sget-boolean v1, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v1, :cond_3

    instance-of v1, v2, Lcom/estrongs/fs/impl/c/b;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, v3, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/dq;->f:Lcom/estrongs/android/appinfo/p;

    invoke-virtual {v1, v3, v2, v4}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_3
    instance-of v1, v2, Lcom/estrongs/fs/impl/c/d;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v4, v1, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/c/d;

    iget-object v1, v1, Lcom/estrongs/fs/impl/c/d;->b:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    iget-object v5, p0, Lcom/estrongs/android/view/dq;->f:Lcom/estrongs/android/appinfo/p;

    invoke-virtual {v3, v4, v1, v5}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_4
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v4, v4, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v5, p0, Lcom/estrongs/android/view/dq;->f:Lcom/estrongs/android/appinfo/p;

    invoke-virtual {v3, v4, v1, v5}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3, v6}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_5
    iget-object v1, v0, Lcom/estrongs/android/view/do;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    if-eqz v1, :cond_8

    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v1}, Lcom/estrongs/android/view/cr;->g(Lcom/estrongs/android/view/cr;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    sget-object v3, Lcom/estrongs/fs/w;->i:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/estrongs/fs/w;->j:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    const v3, 0x7f08016b

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    :goto_5
    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v1}, Lcom/estrongs/android/view/cr;->g(Lcom/estrongs/android/view/cr;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_7
    :goto_6
    const-string v1, ""

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v1}, Lcom/estrongs/android/view/cr;->g(Lcom/estrongs/android/view/cr;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :goto_7
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, v0, Lcom/estrongs/android/view/do;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    iget-object v0, p1, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-boolean v1, v1, Lcom/estrongs/android/view/cr;->q:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    instance-of v1, v1, Lcom/estrongs/android/view/fv;

    if-eqz v1, :cond_23

    :cond_9
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_9
    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-boolean v1, v1, Lcom/estrongs/android/view/cr;->q:Z

    if-eqz v1, :cond_25

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cr;->h(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02027f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->v:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-boolean v0, v0, Lcom/estrongs/android/view/cr;->q:Z

    if-eqz v0, :cond_b

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/cr;->h(I)Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p2, :cond_26

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cr;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_29

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->s:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3, p2}, Lcom/estrongs/android/view/cr;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    new-instance v3, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v3}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Rect;Lcom/estrongs/android/ui/drag/j;Landroid/view/View;)V

    :cond_b
    :goto_c
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/ci;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/android/view/ci;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x2

    if-ne v3, v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-static {v3}, Lcom/estrongs/android/view/cr;->f(Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    const v4, 0x7f0d003a

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v3, p1, Lcom/estrongs/android/view/ci;->j:Landroid/widget/ImageView;

    invoke-static {v1, v3, v2}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto/16 :goto_4

    :cond_f
    sget-object v3, Lcom/estrongs/fs/w;->k:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcom/estrongs/fs/w;->l:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    const v3, 0x7f0803ac

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_11
    sget-object v3, Lcom/estrongs/fs/w;->m:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/estrongs/fs/w;->n:Lcom/estrongs/fs/w;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    const v3, 0x7f080172

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_13
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "flashair://flashair/"

    const-string v3, "flashair://"

    const-string v4, "http://"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_14
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_15
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "child_count"

    invoke-interface {v2, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "child_count"

    invoke-interface {v2, v3}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_16
    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    const v3, 0x7f08019d

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_17
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_18

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_18
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_19

    instance-of v1, v2, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    const v3, 0x7f0805b3

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_19
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1a
    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1b
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_1c

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1c
    instance-of v1, v2, Lcom/estrongs/fs/impl/c/b;

    if-eqz v1, :cond_1d

    instance-of v1, v2, Lcom/estrongs/fs/impl/c/d;

    if-nez v1, :cond_7

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1d
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1e
    instance-of v1, v2, Lcom/estrongs/fs/impl/c/b;

    if-eqz v1, :cond_20

    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1f

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1f
    sget-object v1, Lcom/estrongs/android/view/cr;->N:Ljava/text/DateFormat;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_20
    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_21

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    goto/16 :goto_7

    :cond_21
    sget-object v1, Lcom/estrongs/android/view/cr;->N:Ljava/text/DateFormat;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_22
    iget-object v0, v0, Lcom/estrongs/android/view/do;->a:Lcom/estrongs/android/pop/esclasses/ESTextView;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/view/dq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_23
    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_24
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_a

    :cond_25
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_a

    :cond_26
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cr;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-nez v0, :cond_27

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

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

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->s:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/cr;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_27
    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->e()V

    goto/16 :goto_c

    :cond_29
    move-object v1, v0

    goto/16 :goto_b

    :cond_2a
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/view/ci;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/dq;->a(Landroid/view/View;)Lcom/estrongs/android/view/do;

    move-result-object v0

    return-object v0
.end method
