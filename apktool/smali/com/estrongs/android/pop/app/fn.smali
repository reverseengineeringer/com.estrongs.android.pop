.class Lcom/estrongs/android/pop/app/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fn;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fn;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v1, Lcom/estrongs/android/pop/app/fo;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/fn;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/fn;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/pop/app/fo;-><init>(Lcom/estrongs/android/pop/app/fn;Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/ui/e/ka;)Lcom/estrongs/android/ui/e/ka;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fn;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ka;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0
.end method
