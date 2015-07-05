.class Lcom/estrongs/android/ui/dialog/jg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/je;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/je;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/je;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/je;->c:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/je;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/je;->c:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
