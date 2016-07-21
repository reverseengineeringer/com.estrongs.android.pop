.class Lcom/estrongs/android/ui/e/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/do;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ah;->a:Lcom/estrongs/android/ui/e/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ah;->a:Lcom/estrongs/android/ui/e/ag;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ag;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->F(Ljava/lang/String;)V

    return-void
.end method
