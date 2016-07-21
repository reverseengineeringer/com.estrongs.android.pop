.class Lcom/estrongs/android/ui/dialog/ee;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field public h:Landroid/app/Dialog;

.field i:Z

.field j:Landroid/widget/ProgressBar;

.field k:Landroid/widget/Button;

.field l:Lcom/estrongs/android/pop/app/diskusage/a;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/estrongs/fs/b/ao;

.field private r:Lcom/estrongs/android/ui/theme/at;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/ee;->s:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->h:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->j:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->k:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->r:Lcom/estrongs/android/ui/theme/at;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->d:Ljava/lang/String;

    const v0, 0x7f08019e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->e:Ljava/lang/String;

    const v0, 0x7f0805cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->f:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ee;->s:Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ee;->i:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ee;->f()V

    const v0, 0x7f0e038a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ef;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ef;-><init>(Lcom/estrongs/android/ui/dialog/ee;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/ee;->i:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ee;->a([I[I)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/ee;->s:Z

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f0e0321
        0x7f0e038d
        0x7f0e038e
        0x7f0e0193
        0x7f0e0192
    .end array-data

    :array_1
    .array-data 4
        0x7f0805d2
        0x7f0805ce
        0x7f0805d4
        0x7f0805da
        0x7f0805d4
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ee;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/estrongs/fs/util/j;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ee;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ee;Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/ee;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/eg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/eg;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/eh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/eh;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/ee;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const v0, 0x7f0e0189

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0322

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0192

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->b:Landroid/widget/TextView;

    const v2, 0x7f0e038f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->o:Landroid/view/View;

    const v2, 0x7f0e0391

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->p:Landroid/widget/TextView;

    const v2, 0x7f0e038e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->c:Landroid/widget/TextView;

    const v2, 0x7f080429

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ee;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e02f6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0393

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->k:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ei;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ei;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    new-instance v0, Lcom/estrongs/fs/x;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->b(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "N/A"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e038a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\"ss\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ee;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</a>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ee;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ej;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ej;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0e0500

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ee;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->ag:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/em;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/em;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ee;->d()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ee;->g()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ee;->e()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/ee;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->p:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03012e

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->requestStop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    move v10, v2

    move-wide v2, v0

    move v1, v10

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sys"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sys/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-wide v10, v2

    move v2, v1

    move v3, v4

    move-wide v0, v10

    :goto_1
    move v4, v3

    move v10, v2

    move-wide v2, v0

    move v1, v10

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    move-wide v10, v2

    move v2, v1

    move v3, v4

    move-wide v0, v10

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ek;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/estrongs/android/ui/dialog/ek;-><init>(Lcom/estrongs/android/ui/dialog/ee;Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    new-instance v1, Lcom/estrongs/android/ui/dialog/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/el;-><init>(Lcom/estrongs/android/ui/dialog/ee;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    sget v1, Lcom/estrongs/fs/b/ao;->f:I

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->q:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->execute()V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/ee;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/ee;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ee;->a(Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ee;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
