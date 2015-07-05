.class public Lcom/estrongs/android/ui/c/a/d;
.super Lcom/estrongs/android/ui/c/a/a;


# static fields
.field public static c:I


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Landroid/view/View$OnClickListener;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/ui/c/a/d;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/c/a/d;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/a/d;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/c/a/d;->i:I

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->j:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 3

    iput p1, p0, Lcom/estrongs/android/ui/c/a/d;->k:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/view/View;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/estrongs/android/ui/c/a/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/estrongs/android/ui/c/a/d;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/d;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a/d;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->d:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    new-instance v1, Lcom/estrongs/android/ui/c/a/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/a/e;-><init>(Lcom/estrongs/android/ui/c/a/d;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Lcom/estrongs/android/pop/esclasses/d;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/d;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/c/a/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/d;->h:Ljava/lang/String;

    return-void
.end method
