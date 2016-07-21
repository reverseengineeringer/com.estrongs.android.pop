.class public Lcom/estrongs/android/pop/app/analysis/viewholders/i;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ProgressBar;

.field private o:J

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;-><init>(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6

    const/16 v5, 0x21

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    :cond_1
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v2, v0, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->l:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->itemView:Landroid/view/View;

    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->n:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->m:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/j;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->p:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->o:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->o:J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->o:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->r:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->t:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->u:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const v0, 0x7f02022e

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0d001c

    aput v2, v1, v3

    const v2, 0x7f0d001b

    aput v2, v1, v4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->l:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->p:Ljava/util/List;

    invoke-virtual {v2, v1, v3, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->setColorAndData([ILjava/util/List;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0d0024

    aput v0, v1, v3

    const v0, 0x7f0d0023

    aput v0, v1, v4

    const v0, 0x7f02023d

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0d002f

    aput v0, v1, v3

    const v0, 0x7f0d002e

    aput v0, v1, v4

    const v0, 0x7f020243

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f0d0021

    aput v0, v1, v3

    const v0, 0x7f0d0020

    aput v0, v1, v4

    const v0, 0x7f020235

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    const v0, 0x7f0d002a

    aput v0, v1, v3

    const v0, 0x7f0d0029

    aput v0, v1, v4

    const v0, 0x7f02023a

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x4

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "size"

    invoke-virtual {p1, v2}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "0B"

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->r:Ljava/lang/String;

    :goto_1
    const-string v2, "number"

    invoke-virtual {p1, v2}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "0"

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->s:Ljava/lang/String;

    :goto_2
    const-string v2, "cache"

    invoke-virtual {p1, v2}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "0B"

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->t:Ljava/lang/String;

    :goto_3
    const-string v2, "memory"

    invoke-virtual {p1, v2}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "0B"

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->u:Ljava/lang/String;

    :goto_4
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->p:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->p:Ljava/util/List;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->e(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->r:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->s:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->e(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->t:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->e(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/i;->u:Ljava/lang/String;

    goto :goto_4
.end method
