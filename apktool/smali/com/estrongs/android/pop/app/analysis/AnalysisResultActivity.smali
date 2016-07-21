.class public Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/analysis/a/a;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/PopupWindow;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Lcom/estrongs/android/j/c;

.field private m:J

.field private n:J

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->k:Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/v;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/v;-><init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->finish()V

    :cond_0
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->h:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bj()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/u;-><init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->c()V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v1, ""

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0800d4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_a
    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Lcom/estrongs/android/j/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "Analysis_show_pv"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "Analysis_show_uv"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "A_Photos_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "analysis"

    const-string v2, "A_Photos_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "A_Music_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "analysis"

    const-string v2, "A_Music_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "A_Video_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "analysis"

    const-string v2, "A_Video_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "A_Document_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v1, "analysis"

    const-string v2, "A_Document_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/z;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/a/z;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    const/16 v3, 0x31

    const/4 v4, 0x0

    aget v1, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/w;-><init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/x;-><init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private e()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->n:J

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "AnalysisResultStayTime"

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->n:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->m:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->l:Lcom/estrongs/android/j/c;

    const-string v2, "Analysis_rp_stay"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->d()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1027

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "analysis_result_card_key"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "analysis_result_card_path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "analysis_result_cleaned_size"

    invoke-virtual {p3, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "analysis_result_cleaned_memory_size"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cardKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , cardPath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " , size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " , memory = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->m:J

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->a()V

    :cond_0
    return-void
.end method
