.class Lcom/estrongs/android/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/be;

.field final synthetic b:Lcom/estrongs/android/view/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/j;Lcom/estrongs/android/pop/app/compress/be;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/j;

    iput-object p2, p0, Lcom/estrongs/android/view/l;->a:Lcom/estrongs/android/pop/app/compress/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/l;->a:Lcom/estrongs/android/pop/app/compress/be;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/j;

    iget-object v1, v1, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/view/aw;)V

    return-void
.end method
