.class Lcom/estrongs/android/pop/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/an;->a:Lcom/estrongs/android/pop/view/am;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/am;->a:Lcom/estrongs/android/pop/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    return-void
.end method
