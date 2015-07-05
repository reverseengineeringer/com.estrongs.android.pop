.class Lcom/estrongs/android/pop/app/compress/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0053

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;I)I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0056

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/estrongs/android/util/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->i(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/e;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/e;-><init>(Lcom/estrongs/android/pop/app/compress/d;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/c;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0052

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->k(Lcom/estrongs/android/pop/app/compress/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;I)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0051

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->k(Lcom/estrongs/android/pop/app/compress/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/a;->k(Lcom/estrongs/android/pop/app/compress/a;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;I)I

    goto/16 :goto_0
.end method
