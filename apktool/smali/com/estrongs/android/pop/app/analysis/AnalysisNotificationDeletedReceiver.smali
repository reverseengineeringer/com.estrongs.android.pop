.class public Lcom/estrongs/android/pop/app/analysis/AnalysisNotificationDeletedReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification canceled!"

    invoke-static {v1}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/p;->a(Ljava/lang/String;)V

    return-void
.end method
