.class final Lcom/estrongs/android/pop/app/analysis/t;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/p;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/analysis/p;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/t;->a:Lcom/estrongs/android/pop/app/analysis/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/t;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/t;->c:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/analysis/AnalysisInstallAppService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/t;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
