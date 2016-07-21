.class public Lcom/estrongs/android/ui/controller/bm;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/bm;->c:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/bm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/theme/at;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/bm;->c:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v1, v5, [I

    const v3, 0x7f0d00ca

    invoke-virtual {p2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    aput v3, v1, v6

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v3, v5, [I

    const v4, 0x7f0d00cc

    invoke-virtual {p2, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v1, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setNormalColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setWarnColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setWarnPercent(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setTextSize(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setNeedRotateWhenWarn(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(IF)V

    new-instance v0, Lcom/estrongs/android/ui/controller/bn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bn;-><init>(Lcom/estrongs/android/ui/controller/bm;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/bn;->start()V

    iput-boolean v5, p0, Lcom/estrongs/android/ui/controller/bm;->c:Z

    :goto_1
    return-void

    :cond_0
    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v1, v5, [I

    const v3, 0x7f0d00cb

    invoke-virtual {p2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    aput v3, v1, v6

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v3, v5, [I

    const v4, 0x7f0d00cd

    invoke-virtual {p2, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v1, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bm;->b:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d()V

    goto :goto_1
.end method
