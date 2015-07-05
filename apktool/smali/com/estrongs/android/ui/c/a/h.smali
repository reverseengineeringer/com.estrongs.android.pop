.class public Lcom/estrongs/android/ui/c/a/h;
.super Lcom/estrongs/android/ui/c/a/a;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/h;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->i:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/c/a/h;->f:I

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/h;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/h;->i:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/h;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f020038

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->b:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->b:Landroid/view/View;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/estrongs/android/ui/c/a/h;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/h;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->i:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->b:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/c/a/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/a/i;-><init>(Lcom/estrongs/android/ui/c/a/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/h;->e:Ljava/lang/String;

    return-void
.end method
