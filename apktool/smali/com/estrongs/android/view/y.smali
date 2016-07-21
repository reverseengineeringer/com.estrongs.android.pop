.class public Lcom/estrongs/android/view/y;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/estrongs/android/view/y;

.field private static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/view/af;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/view/ViewGroup;

.field private f:Lcom/estrongs/android/view/af;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/view/y;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    new-instance v0, Lcom/estrongs/android/view/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ae;-><init>(Lcom/estrongs/android/view/y;)V

    iput-object v0, p0, Lcom/estrongs/android/view/y;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030071

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/y;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/y;->g:Landroid/view/View;

    const v2, 0x7f0e0287

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/view/y;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/view/y;->g:Landroid/view/View;

    const v2, 0x7f0e0288

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/y;->h:Landroid/view/View;

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/af;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/af;->a(Lcom/estrongs/android/view/y;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/view/y;->i()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/y;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/estrongs/android/view/y;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/y;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/y;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/y;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    invoke-virtual {v0}, Lcom/estrongs/android/view/y;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/y;->b:Lcom/estrongs/android/view/y;

    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method static synthetic h()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ac;-><init>(Lcom/estrongs/android/view/y;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Ljava/util/List;Z)Lcom/estrongs/android/view/af;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)",
            "Lcom/estrongs/android/view/af;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/android/view/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/af;-><init>(Lcom/estrongs/android/view/y;Ljava/util/List;Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/af;)V

    sget-object v1, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    invoke-direct {p0}, Lcom/estrongs/android/view/y;->i()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/view/z;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/z;-><init>(Lcom/estrongs/android/view/y;Lcom/estrongs/android/view/y;Ljava/util/List;ZLjava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/navigation/q;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/ui/navigation/q;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/af;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/af;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/af;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/y;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/ad;-><init>(Lcom/estrongs/android/view/y;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/ui/navigation/q;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    iget-object v0, p0, Lcom/estrongs/android/view/y;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/y;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/y;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b(Lcom/estrongs/android/view/af;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    :cond_1
    sget-object v1, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/view/y;->i()V

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/view/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/y;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    :cond_3
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->g:Landroid/view/View;

    return-object v0
.end method

.method public e()Lcom/estrongs/android/view/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->f:Lcom/estrongs/android/view/af;

    return-object v0
.end method

.method public g()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/y;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method
