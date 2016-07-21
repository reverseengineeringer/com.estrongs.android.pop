.class Lcom/estrongs/android/pop/app/f/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/b;->a:Lcom/estrongs/android/pop/app/f/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/b;->a:Lcom/estrongs/android/pop/app/f/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/f/a;->a()Lcom/estrongs/android/pop/app/f/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/f/a;->a(Z)Z

    :cond_0
    return-void
.end method
