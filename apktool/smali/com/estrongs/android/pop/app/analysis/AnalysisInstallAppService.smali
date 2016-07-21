.class public Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;
.super Landroid/app/IntentService;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AnalysisInstallAppService"

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/p;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030140

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0e0563

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0e0564

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Lcom/estrongs/android/ui/notification/d;

    invoke-direct {v3, p0, v5}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;Z)V

    const v4, 0x7f0202ce

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/notification/d;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/notification/d;->b(Z)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/estrongs/android/ui/notification/d;->b(Landroid/content/Intent;Z)V

    invoke-virtual {v3}, Lcom/estrongs/android/ui/notification/d;->c()V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    const-string v1, "Notify_perim_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    const-string v1, "analysis"

    const-string v2, "Notify_perim_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act5"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act5"

    const-string v2, "sensitive_authority"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Lcom/estrongs/android/ui/notification/d;)V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Notify_perm_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "Notify_perm_show_uv"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "Notify_perm_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
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
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bh()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/p;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    :cond_4
    invoke-static {v2, v1}, Lcom/estrongs/android/pop/utils/w;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/a/l;->e()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    array-length v7, v4

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v4, v2

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/p;->b()V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sensitivePermission size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/analysis/p;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ai;->z()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ai;->A()I

    move-result v8

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_8

    sub-long v6, v4, v6

    const-wide/32 v10, 0x5265c00

    cmp-long v6, v6, v10

    if-lez v6, :cond_9

    :cond_8
    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/pop/ai;->g(J)V

    invoke-virtual {v2, v12}, Lcom/estrongs/android/pop/ai;->b(I)V

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x2

    if-ge v8, v4, :cond_a

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/ai;->b(I)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/p;->b()V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
