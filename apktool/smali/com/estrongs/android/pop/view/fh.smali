.class public Lcom/estrongs/android/pop/view/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/j/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Lcom/estrongs/android/view/aw;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/fh;)Lcom/estrongs/android/view/aw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fh;->b:Lcom/estrongs/android/view/aw;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/fh;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fh;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fh;->b:Lcom/estrongs/android/view/aw;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/fh;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    const/16 v0, 0x7941

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7946

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/fi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fi;-><init>(Lcom/estrongs/android/pop/view/fh;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
