.class public Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# static fields
.field private static final a:Ljava/text/DecimalFormat;

.field private static final b:Ljava/text/DecimalFormat;

.field private static final c:Ljava/text/DecimalFormat;


# instance fields
.field private A:J

.field private final d:I

.field private final e:I

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Lcom/estrongs/android/ui/a/b;

.field private h:Landroid/widget/Button;

.field private i:Lcom/estrongs/android/pop/app/cleaner/v;

.field private j:Landroid/os/Handler;

.field private k:Lcom/estrongs/android/cleaner/a;

.field private l:Lcom/estrongs/android/ui/view/ScanProgressView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:J

.field private r:Lcom/estrongs/android/pop/app/cleaner/a;

.field private t:Lcom/estrongs/android/b/a/e;

.field private u:Lcom/estrongs/android/j/c;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->a:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->b:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->d:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->v:Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->w:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->x:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->y:Z

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "cn-clean"

    :goto_0
    const-string v3, "default-clean"

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->t:Lcom/estrongs/android/b/a/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->t:Lcom/estrongs/android/b/a/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->t:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->t:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->t:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    const-string v5, "ad"

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "clean"

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->v:Z

    if-lez v1, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->w:Z

    if-eqz v0, :cond_4

    :cond_2
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(I)V

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private f()V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "CleanResultStayTime"

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->A:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->z:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    const-string v2, "Clean_rp_stay"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/support/v7/app/ActionBar;
    .locals 3

    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/v;-><init>(Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->i:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->i:Lcom/estrongs/android/pop/app/cleaner/v;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->r:Lcom/estrongs/android/pop/app/cleaner/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->i:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->i:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->c()V

    return-void
.end method

.method public finish()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->r:Lcom/estrongs/android/pop/app/cleaner/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->r:Lcom/estrongs/android/pop/app/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->k:Lcom/estrongs/android/cleaner/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->k:Lcom/estrongs/android/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f02011b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f0d0088

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->setContentView(I)V

    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ScanProgressView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->l:Lcom/estrongs/android/ui/view/ScanProgressView;

    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Lcom/estrongs/android/ui/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->g:Lcom/estrongs/android/ui/a/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->g:Lcom/estrongs/android/ui/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->p:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/cleaner/a;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->k:Lcom/estrongs/android/cleaner/a;

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->e()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->j()J

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x37216789

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->d()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_snackbar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->x:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    const-string v1, "Snackbar_clean"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "from_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->y:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->f()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->e()V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    const-string v1, "Notify_clean"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "from_analysis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    const-string v1, "Analysis_junk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/i;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->u:Lcom/estrongs/android/j/c;

    const-string v1, "Card_Ad_Show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->A:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->l:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->d()V

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStart()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    return-void
.end method
