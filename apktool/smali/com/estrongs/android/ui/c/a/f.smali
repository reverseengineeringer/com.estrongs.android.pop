.class public Lcom/estrongs/android/ui/c/a/f;
.super Lcom/estrongs/android/ui/c/a/a;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Landroid/view/View$OnClickListener;

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/c/a/f;->p:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/f;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/c/a/f;->p:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/f;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/c/a/f;->p:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/a/f;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/c/a/f;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    iput p1, p0, Lcom/estrongs/android/ui/c/a/f;->j:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iput-boolean p2, p0, Lcom/estrongs/android/ui/c/a/f;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a/f;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    iput-wide p3, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/f;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/f;->k:Ljava/lang/String;

    return-void
.end method

.method public b(JJ)V
    .locals 7

    const-wide/16 v4, 0x2710

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    iput-wide p3, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    div-long v0, p1, v4

    long-to-int v0, v0

    div-long v2, p3, v4

    long-to-int v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    long-to-int v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 12

    const-wide/32 v10, 0x7fffffff

    const-wide/16 v8, 0x2710

    const-wide/16 v6, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/estrongs/android/ui/c/a/f;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a/f;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->c:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    new-instance v1, Lcom/estrongs/android/ui/c/a/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/a/g;-><init>(Lcom/estrongs/android/ui/c/a/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Lcom/estrongs/android/pop/esclasses/d;)V

    :cond_3
    return-void

    :cond_4
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->f:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->g:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    div-long/2addr v0, v8

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    div-long/2addr v2, v8

    long-to-int v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->m:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/f;->e:Landroid/widget/ProgressBar;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a/f;->l:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/f;->i:Ljava/lang/String;

    return-void
.end method
