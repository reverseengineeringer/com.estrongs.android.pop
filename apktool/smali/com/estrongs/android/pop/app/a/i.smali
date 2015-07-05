.class Lcom/estrongs/android/pop/app/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    new-instance v1, Lcom/estrongs/android/pop/app/a/ac;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/a/ac;-><init>(Lcom/estrongs/android/pop/app/a/e;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/e;->b:Lcom/estrongs/android/pop/app/a/ac;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/e;->b:Lcom/estrongs/android/pop/app/a/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ac;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/i;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->d()V

    const/4 v0, 0x1

    return v0
.end method
