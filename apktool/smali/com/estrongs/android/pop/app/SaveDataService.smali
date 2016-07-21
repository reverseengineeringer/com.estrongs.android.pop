.class public Lcom/estrongs/android/pop/app/SaveDataService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    const-wide/16 v4, 0xbb8

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/SaveDataService;->a:Landroid/os/Handler;

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/SaveDataService;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveDataService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/lf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lf;-><init>(Lcom/estrongs/android/pop/app/SaveDataService;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveDataService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/lf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lf;-><init>(Lcom/estrongs/android/pop/app/SaveDataService;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/SaveDataService;->a:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/app/lf;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/lf;-><init>(Lcom/estrongs/android/pop/app/SaveDataService;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/SaveDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x218

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    new-instance v2, Lcom/estrongs/android/pop/app/lg;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/pop/app/lg;-><init>(Lcom/estrongs/android/pop/app/SaveDataService;Landroid/content/Context;)V

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/j;->a()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/j;

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/estrongs/android/pop/app/ad/a;->a(Lcom/estrongs/android/pop/app/ad/j;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/SaveDataService;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/SaveDataService;->a()V

    const/4 v0, 0x2

    return v0
.end method
