.class Lcom/estrongs/android/pop/app/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/a/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/t;-><init>(Lcom/estrongs/android/pop/app/a/s;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-static {v0, v2, v4, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->d()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-static {v0, v2, v4, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;)Z

    goto :goto_0
.end method
