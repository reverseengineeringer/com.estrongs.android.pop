.class public Lcom/estrongs/android/ui/drag/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/drag/DragLayer;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/drag/DragWindowView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/estrongs/android/ui/drag/d;

.field private d:Z

.field private e:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/drag/DragLayer;Lcom/estrongs/android/ui/drag/d;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    iput-object p3, p0, Lcom/estrongs/android/ui/drag/p;->c:Lcom/estrongs/android/ui/drag/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/p;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/p;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/p;->d:Z

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lcom/estrongs/android/ui/drag/DragWindowView;->setPosition(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 7

    const v6, 0x7f0e02c4

    const v3, 0x7f0e02c3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/p;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    const v3, 0x7f0e02c8

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    const v4, 0x7f0e0330

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c5

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c6

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v2, v5, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->a:Lcom/estrongs/android/ui/drag/DragLayer;

    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c5

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c6

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02cd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e0331

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e0332

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    mul-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/drag/p;->a(Lcom/estrongs/android/ui/drag/DragWindowView;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/p;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/drag/DragWindowView;->setActivity(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/p;->b()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragWindowView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a()V

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/p;->c:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/s;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragWindowView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/drag/DragWindowView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b()Lcom/estrongs/android/ui/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/p;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method
