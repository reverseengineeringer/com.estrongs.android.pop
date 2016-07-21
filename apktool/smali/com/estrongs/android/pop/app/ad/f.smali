.class Lcom/estrongs/android/pop/app/ad/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ad/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/f;->a:Lcom/estrongs/android/pop/app/ad/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/f;->a:Lcom/estrongs/android/pop/app/ad/a;

    if-eq v2, v1, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, v3, Lcom/estrongs/android/pop/app/ad/a;->b:Z

    :cond_2
    return-void
.end method
