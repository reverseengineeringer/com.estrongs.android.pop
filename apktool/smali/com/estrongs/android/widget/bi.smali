.class public Lcom/estrongs/android/widget/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bk;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/widget/bi;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V
    .locals 3

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/widget/bi;->b:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/bi;->b:I

    int-to-long v0, v0

    div-long v0, p3, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/bi;->a:I

    iget v0, p0, Lcom/estrongs/android/widget/bi;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/widget/bi;->b:I

    int-to-long v0, v0

    div-long v0, p3, v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
