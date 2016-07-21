.class Lcom/estrongs/android/pop/app/cleaner/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/cleaner/h;

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/w;Lcom/estrongs/android/cleaner/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/x;->a:Lcom/estrongs/android/cleaner/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/x;->a:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ak;->b(Lcom/estrongs/android/cleaner/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/x;->b:Lcom/estrongs/android/pop/app/cleaner/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->d()V

    goto :goto_0
.end method
