.class public Lcom/estrongs/android/ui/c/a/b;
.super Lcom/estrongs/android/ui/c/a/a;


# instance fields
.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/b;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->f:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/b;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/b;->f:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f020038

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->b:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/c/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/a/c;-><init>(Lcom/estrongs/android/ui/c/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
