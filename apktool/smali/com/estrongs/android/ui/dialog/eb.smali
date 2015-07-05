.class Lcom/estrongs/android/ui/dialog/eb;
.super Lcom/estrongs/android/view/ea;


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

.field private q:Lcom/estrongs/fs/b/am;

.field private r:Lcom/estrongs/android/ui/theme/al;

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

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/eb;->s:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->h:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->j:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->k:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->r:Lcom/estrongs/android/ui/theme/al;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/eb;->g:Ljava/lang/String;

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->d:Ljava/lang/String;

    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->e:Ljava/lang/String;

    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->f:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/eb;->s:Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/eb;->i:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/eb;->f()V

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ec;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ec;-><init>(Lcom/estrongs/android/ui/dialog/eb;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/eb;->i:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/eb;->a([I[I)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/eb;->s:Z

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f0a017c
        0x7f0a01cd
        0x7f0a01ce
        0x7f0a0030
        0x7f0a002f
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00fb
        0x7f0b00fd
        0x7f0b0564
        0x7f0b00fc
        0x7f0b0564
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/eb;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/eb;)Lcom/estrongs/fs/b/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eb;->f:Ljava/lang/String;

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

.method static synthetic a(Lcom/estrongs/android/ui/dialog/eb;Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/eb;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/eb;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/eb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ed;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ed;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/eb;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ee;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ee;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/eb;->g()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->b:Landroid/widget/TextView;

    const v2, 0x7f0a01cf

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->o:Landroid/view/View;

    const v2, 0x7f0a01d1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->p:Landroid/widget/TextView;

    const v2, 0x7f0a01ce

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0232

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/eb;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->k:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ef;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ef;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    new-instance v0, Lcom/estrongs/fs/n;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->b(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "N/A"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\"ss\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/eb;->m:Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/eb;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/eg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/eg;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a02af

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eb;->k(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/eb;->e()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/eb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ej;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ej;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030098

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->requestStop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/eb;->a:Ljava/util/List;

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

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/m;->a()Z

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
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/dialog/eh;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/estrongs/android/ui/dialog/eh;-><init>(Lcom/estrongs/android/ui/dialog/eb;Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ei;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ei;-><init>(Lcom/estrongs/android/ui/dialog/eb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/am;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    sget v1, Lcom/estrongs/fs/b/am;->f:I

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/am;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->q:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->execute()V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/eb;->d:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/eb;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/eb;->a(Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eb;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
