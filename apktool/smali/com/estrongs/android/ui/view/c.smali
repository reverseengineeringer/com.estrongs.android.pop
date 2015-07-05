.class Lcom/estrongs/android/ui/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/estrongs/android/ui/view/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "/sdcard"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/view/d;-><init>(Lcom/estrongs/android/ui/view/c;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    const v2, 0x7f0b002a

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/ui/view/e;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/view/e;-><init>(Lcom/estrongs/android/ui/view/c;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/view/cc;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    const v2, 0x7f0b0030

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/b;->b(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/view/f;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/f;-><init>(Lcom/estrongs/android/ui/view/c;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    const v2, 0x7f0b000c

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/b;->c(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/view/g;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/g;-><init>(Lcom/estrongs/android/ui/view/c;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->j()V

    return-void
.end method
