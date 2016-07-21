.class public Lcom/estrongs/android/pop/app/analysis/b/q;
.super Lcom/estrongs/android/pop/app/analysis/b/v;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/n;


# instance fields
.field private C:J

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Z

.field private I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

.field private J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

.field private K:Landroid/view/View;

.field private L:Landroid/os/Handler;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/lang/String;

.field protected r:Z

.field private s:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:J

.field private v:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->H:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->L:Landroid/os/Handler;

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    return-void
.end method

.method private A()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->t()V

    goto :goto_0
.end method

.method private B()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->H:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->H:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->D:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080286

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->t:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08028e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->u:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08027e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->C:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->G:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08019b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08019d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private C()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->L:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/s;-><init>(Lcom/estrongs/android/pop/app/analysis/b/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->a:Lcom/estrongs/android/a/b/g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    iget v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->b:I

    iget v0, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->c:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private E()[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    aput v2, v0, v3

    aput v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    aput v3, v0, v3

    aput v3, v0, v4

    goto :goto_0
.end method

.method private a(I[I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v1, p1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Lcom/estrongs/android/pop/app/analysis/b/u;[IZ)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/a/b/g;[I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/u;-><init>(Lcom/estrongs/android/pop/app/analysis/b/q;Lcom/estrongs/android/pop/app/analysis/b/r;)V

    iput-object p1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->a:Lcom/estrongs/android/a/b/g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->b:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Lcom/estrongs/android/pop/app/analysis/b/u;[IZ)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/q;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(I[I)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/analysis/b/u;[IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    aget v1, p2, v1

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->b:I

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->c:I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->t()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/q;)[I
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->E()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/b/q;)Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0e05c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    const v0, 0x7f0e0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    new-instance v0, Lcom/estrongs/android/ui/addressbar/b;

    invoke-direct {v0}, Lcom/estrongs/android/ui/addressbar/b;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->b:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d015a

    iput v1, v0, Lcom/estrongs/android/ui/addressbar/b;->c:I

    iput-boolean v3, v0, Lcom/estrongs/android/ui/addressbar/b;->d:Z

    iput v3, v0, Lcom/estrongs/android/ui/addressbar/b;->e:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->f:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0e0454

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDrawableRes(Lcom/estrongs/android/ui/addressbar/b;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsBroadMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->I:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/r;-><init>(Lcom/estrongs/android/pop/app/analysis/b/q;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarClickListener(Lcom/estrongs/android/ui/addressbar/f;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->C()V

    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->M:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    move v0, v1

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x2

    aget-object v4, v3, v0

    aput-object v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/b/t;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/analysis/b/t;-><init>(Lcom/estrongs/android/pop/app/analysis/b/q;)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/android/pop/app/analysis/b/t;->a:Z

    iput-object v0, v3, Lcom/estrongs/android/pop/app/analysis/b/t;->b:Lcom/estrongs/fs/h;

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->t:J

    iput-wide v4, v3, Lcom/estrongs/android/pop/app/analysis/b/t;->d:J

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->x:Ljava/util/List;

    goto :goto_1
.end method

.method private x()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->x:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->y:Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->M:Ljava/util/List;

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->t:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->u:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->v:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->C:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->t:J

    aget-wide v4, v0, v9

    aget-wide v6, v0, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->t:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->u:J

    aget-wide v4, v0, v9

    aget-wide v6, v0, v10

    sub-long/2addr v4, v6

    aget-wide v6, v0, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->u:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->v:J

    aget-wide v4, v0, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->v:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->C:J

    aget-wide v4, v0, v10

    aget-wide v6, v0, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->C:J

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->M:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/q;->c(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03002e

    return v0
.end method

.method protected a(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->p:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p2, p1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;I)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Landroid/view/View;)V

    const v0, 0x7f0e0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->K:Landroid/view/View;

    const v0, 0x7f0e0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->D:Landroid/widget/TextView;

    const v0, 0x7f0e0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->E:Landroid/widget/TextView;

    const v0, 0x7f0e0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->F:Landroid/widget/TextView;

    const v0, 0x7f0e0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->G:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/estrongs/android/a/b/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/estrongs/android/a/b/g;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->E()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Lcom/estrongs/android/a/b/g;[I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    goto :goto_0
.end method

.method protected j()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->j()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/a/n;)V

    return-void
.end method

.method protected n()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/u;-><init>(Lcom/estrongs/android/pop/app/analysis/b/q;Lcom/estrongs/android/pop/app/analysis/b/r;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->a:Lcom/estrongs/android/a/b/g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->b:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->N:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->t()V

    return-void
.end method

.method protected r()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/u;->a:Lcom/estrongs/android/a/b/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->x()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/q;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected s()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->B()V

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->s()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->C()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->D()V

    return-void
.end method

.method public u()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/q;->A()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->u()Z

    move-result v0

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->v()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->J:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/q;->a(Landroid/view/View;I)V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/q;->r:Z

    return v0
.end method
