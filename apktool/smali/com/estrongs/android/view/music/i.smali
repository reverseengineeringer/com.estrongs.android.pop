.class Lcom/estrongs/android/view/music/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    iget v0, v0, Lcom/estrongs/android/view/music/f;->b:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    iget v0, v0, Lcom/estrongs/android/view/music/f;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    iget-object v1, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    iget v1, v1, Lcom/estrongs/android/view/music/f;->b:I

    iget-object v2, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    iget v2, v2, Lcom/estrongs/android/view/music/f;->a:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;II)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/android/view/music/f;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/i;->a:Lcom/estrongs/android/view/music/f;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/android/view/music/f;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
