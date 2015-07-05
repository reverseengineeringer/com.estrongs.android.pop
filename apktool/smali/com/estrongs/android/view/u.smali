.class public Lcom/estrongs/android/view/u;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/estrongs/android/view/u;

.field private static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/view/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/view/ViewGroup;

.field private f:Lcom/estrongs/android/view/ac;

.field private g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/view/u;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    iput-object p1, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/u;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/u;->g:Landroid/view/View;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/view/u;->d:Landroid/view/ViewGroup;

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ac;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/ac;->a(Lcom/estrongs/android/view/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/view/u;->h()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/u;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/estrongs/android/view/u;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/u;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/u;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    invoke-virtual {v0}, Lcom/estrongs/android/view/u;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/u;->b:Lcom/estrongs/android/view/u;

    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method static synthetic g()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/aa;-><init>(Lcom/estrongs/android/view/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Ljava/util/List;Z)Lcom/estrongs/android/view/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)",
            "Lcom/estrongs/android/view/ac;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/android/view/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/ac;-><init>(Lcom/estrongs/android/view/u;Ljava/util/List;Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/u;->a(Lcom/estrongs/android/view/ac;)V

    sget-object v1, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    invoke-direct {p0}, Lcom/estrongs/android/view/u;->h()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/view/x;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/x;-><init>(Lcom/estrongs/android/view/u;Lcom/estrongs/android/view/u;Ljava/util/List;ZLjava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/navigation/r;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/ac;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ac;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ac;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

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

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/u;->a(Ljava/util/List;Ljava/util/List;)V

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

    new-instance v0, Lcom/estrongs/android/view/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/ab;-><init>(Lcom/estrongs/android/view/u;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/u;->a(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method

.method public a(ZLandroid/widget/LinearLayout;)V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/estrongs/android/ui/e/jk;

    iget-object v1, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->b(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0b0031

    const v2, 0x7f02029c

    new-instance v3, Lcom/estrongs/android/view/v;

    invoke-direct {v3, p0}, Lcom/estrongs/android/view/v;-><init>(Lcom/estrongs/android/view/u;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b001a

    const v2, 0x7f0202c7

    new-instance v3, Lcom/estrongs/android/view/w;

    invoke-direct {v3, p0}, Lcom/estrongs/android/view/w;-><init>(Lcom/estrongs/android/view/u;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    iget-object v0, p0, Lcom/estrongs/android/view/u;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/u;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/android/view/ac;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    :cond_0
    sget-object v3, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/view/u;->h()V

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/u;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2

    const-string v3, "paste_mode"

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/by;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    const-string v3, "normal_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/u;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->g:Landroid/view/View;

    return-object v0
.end method

.method public e()Lcom/estrongs/android/view/ac;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->f:Lcom/estrongs/android/view/ac;

    return-object v0
.end method
