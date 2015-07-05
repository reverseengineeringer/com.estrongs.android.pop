.class Lcom/estrongs/android/pop/app/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/k;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/k;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/k;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->b(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/ui/e/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    const/4 v0, 0x1

    return v0
.end method
