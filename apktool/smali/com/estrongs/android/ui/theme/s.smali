.class Lcom/estrongs/android/ui/theme/s;
.super Lcom/estrongs/android/ui/theme/al;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/s;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/dialog/ip;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/dialog/ip;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ip;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/s;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "theme_pro"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
