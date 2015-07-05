.class Lcom/estrongs/a/b/l;
.super Lcom/estrongs/android/ui/dialog/cg;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Lcom/estrongs/fs/b/bl;

.field b:Z

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/CheckBox;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lcom/estrongs/a/b/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/a/b/d;Landroid/content/Context;Lcom/estrongs/fs/b/bl;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/a/b/l;->b:Z

    iput-object p3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/a/b/l;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/a/b/l;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0010

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/a/b/l;->f:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/a/b/l;->g:Landroid/widget/TextView;

    const v0, 0x7f0a003d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/a/b/l;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0116

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/a/b/l;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/a/b/l;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v2, v2, Lcom/estrongs/fs/b/bl;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v0, v0, Lcom/estrongs/fs/b/bl;->c:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/l;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/a/b/l;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-wide v2, v2, Lcom/estrongs/fs/b/bl;->e:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v0, v0, Lcom/estrongs/fs/b/bl;->l:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v0, v0, Lcom/estrongs/fs/b/bl;->m:I

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v2, v2, Lcom/estrongs/fs/b/bl;->n:I

    mul-int/2addr v0, v2

    new-array v2, v0, [I

    move v0, v1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v1, v1, Lcom/estrongs/fs/b/bl;->l:[B

    mul-int/lit8 v3, v0, 0x4

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->l:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->l:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->l:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    or-int/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/a/b/l;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v2, v2, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v0, v0, Lcom/estrongs/fs/b/bl;->m:I

    iget-object v1, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v1, v1, Lcom/estrongs/fs/b/bl;->n:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/a/b/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/a/b/l;->d:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v0, v0, Lcom/estrongs/fs/b/bl;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/a/b/l;->c:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget v0, v0, Lcom/estrongs/fs/b/bl;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/a/b/l;->c:Landroid/widget/ImageView;

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/a/b/l;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v1, v1, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/a/b/l;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v1, v1, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x194

    const-string v3, "Not found"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v0, v0, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v0, v0, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v2, v2, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v2, v2, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v2, v2, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "oneshot"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "configchange"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v0, v0, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, v3, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/estrongs/a/b/l;->b:Z

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v1, v1, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v0, v0, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    iget-object v3, p0, Lcom/estrongs/a/b/l;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/estrongs/a/b/l;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, v2, Lcom/estrongs/fs/b/bl;->k:Z

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f020163

    iget-object v4, p0, Lcom/estrongs/a/b/l;->h:Lcom/estrongs/a/b/d;

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0015

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/fs/b/bl;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Landroid/app/Activity;ILjava/lang/String;Lcom/estrongs/fs/b/bl;)V

    iput-boolean v1, p0, Lcom/estrongs/a/b/l;->b:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
