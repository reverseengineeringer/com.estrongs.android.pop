.class Lcom/estrongs/android/view/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/view/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bb;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bb;

    iput-object p2, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bb;

    iget-object v1, v1, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/view/cr;)V

    return-void
.end method
