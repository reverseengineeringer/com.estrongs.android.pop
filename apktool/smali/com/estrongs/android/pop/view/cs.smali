.class Lcom/estrongs/android/pop/view/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cr;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method
