.class Lcom/estrongs/android/pop/view/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
