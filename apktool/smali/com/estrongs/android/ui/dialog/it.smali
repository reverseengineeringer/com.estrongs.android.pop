.class Lcom/estrongs/android/ui/dialog/it;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ir;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ir;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/ir;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/it;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/it;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->e()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/ir;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ir;->a:Lcom/estrongs/android/ui/dialog/ip;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open_folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ip;->a(Lcom/estrongs/android/ui/dialog/ip;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/ir;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ir;->a:Lcom/estrongs/android/ui/dialog/ip;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ip;->c()V

    return-void
.end method
