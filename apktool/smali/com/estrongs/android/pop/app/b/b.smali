.class Lcom/estrongs/android/pop/app/b/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/b;->a:Lcom/estrongs/android/pop/app/b/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/b;->a:Lcom/estrongs/android/pop/app/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/a;->a()Lcom/estrongs/android/pop/app/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/a;->a(Z)Z

    :cond_0
    return-void
.end method
