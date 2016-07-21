.class Lcom/estrongs/android/ui/theme/n;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/n;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/n;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a(Lcom/estrongs/android/ui/theme/ThemeActivity;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/n;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->b(Lcom/estrongs/android/ui/theme/ThemeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/n;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a(Lcom/estrongs/android/ui/theme/ThemeActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
