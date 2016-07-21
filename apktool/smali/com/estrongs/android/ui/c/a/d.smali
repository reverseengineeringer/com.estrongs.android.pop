.class public Lcom/estrongs/android/ui/c/a/d;
.super Lcom/estrongs/android/ui/c/a/a;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Landroid/view/View$OnClickListener;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/a/d;->m:Z

    iput v0, p0, Lcom/estrongs/android/ui/c/a/d;->n:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    iput-wide p3, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->i:Ljava/lang/String;

    return-void
.end method

.method public b(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    iput-wide p3, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(JJ)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0e022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->setProgressColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0e022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0e0230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0e022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(JJ)V

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->setProgressColor(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Lcom/estrongs/android/ui/view/HomeSdcardProgressView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/d;->j:J

    iget-wide v4, p0, Lcom/estrongs/android/ui/c/a/d;->k:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(JJ)V

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    return-void
.end method
