.class Lcom/estrongs/android/ui/dialog/e;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/a;Landroid/app/Activity;)V
    .locals 7

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/e;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/e;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e0189

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/e;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e018e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/e;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0193

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/e;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e0195

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/e;->b(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-static {v5, v0, v6}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/adb/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/adb/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/adb/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030042

    return v0
.end method
