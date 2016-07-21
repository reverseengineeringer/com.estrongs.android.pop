.class public Lcom/estrongs/android/pop/app/analysis/viewholders/o;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/n;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a:Landroid/widget/TextView;

    const v0, 0x7f0e00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->b:Landroid/widget/TextView;

    const v0, 0x7f0e00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->c:Landroid/widget/ImageView;

    const v0, 0x7f0e00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->d:Landroid/widget/ImageView;

    const v0, 0x7f0e00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->e:Landroid/widget/TextView;

    const v0, 0x7f0e00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->f:Landroid/widget/TextView;

    const v0, 0x7f0e0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->g:Landroid/widget/TextView;

    const v0, 0x7f0e0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->h:Landroid/widget/TextView;

    const v0, 0x7f0e00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    const v0, 0x7f0e0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->j:Landroid/widget/TextView;

    const v0, 0x7f0e00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->m:Landroid/widget/TextView;

    const v0, 0x7f0e00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->n:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Lcom/estrongs/android/b/a/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->c:Landroid/widget/ImageView;

    iget v1, p1, Lcom/estrongs/android/b/a/a/a;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget v0, p1, Lcom/estrongs/android/b/a/a/a;->v:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->d:Landroid/widget/ImageView;

    iget v1, p1, Lcom/estrongs/android/b/a/a/a;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/b/a/a/a;Landroid/content/Context;)V
    .locals 5

    const v3, 0x7f08025d

    const/16 v4, 0x8

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appcatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->b(Lcom/estrongs/android/b/a/a/a;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v1

    const-string v2, "child_count"

    invoke-interface {v1, v2}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v1

    const-string v2, "child_count"

    invoke-interface {v1, v2}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/estrongs/android/b/a/a/a;->y:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->j:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/estrongs/android/b/a/a/a;->z:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Lcom/estrongs/android/b/a/a/a;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    const-string v2, "appfolder://"

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/p;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/o;Lcom/estrongs/android/b/a/a/a;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/appinfo/r;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/estrongs/android/b/a/a/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/estrongs/android/b/a/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sensitive_permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/android/b/a/a/a;Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->m:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->n:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0800e0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/estrongs/android/b/a/a/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p1, Lcom/estrongs/android/b/a/a/a;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/android/b/a/a/a;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->m:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->n:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
