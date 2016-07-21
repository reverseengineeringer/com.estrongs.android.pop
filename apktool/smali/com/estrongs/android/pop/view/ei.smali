.class public Lcom/estrongs/android/pop/view/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/o/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Lcom/estrongs/android/view/cr;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ei;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ei;)Lcom/estrongs/android/view/cr;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ei;->b:Lcom/estrongs/android/view/cr;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/ei;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ei;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ei;->b:Lcom/estrongs/android/view/cr;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ei;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ei;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    const/16 v0, 0x7941

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7946

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ei;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/ej;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ej;-><init>(Lcom/estrongs/android/pop/view/ei;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
