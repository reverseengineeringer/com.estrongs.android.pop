.class Lcom/estrongs/android/ui/dialog/di;
.super Landroid/text/InputFilter$LengthFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dg;

.field private b:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dg;I)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/di;->a:Lcom/estrongs/android/ui/dialog/dg;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/di;->b:J

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p4, p6, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    rsub-int/lit8 v2, v1, 0x14

    if-gtz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/di;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/di;->a:Lcom/estrongs/android/ui/dialog/dg;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/dg;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/di;->a:Lcom/estrongs/android/ui/dialog/dg;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/dg;->a:Landroid/app/Activity;

    const v4, 0x7f0b0475

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/di;->b:J

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    rsub-int/lit8 v2, v1, 0x14

    if-lt v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-gt p3, p2, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    :cond_4
    add-int/2addr v0, v1

    const/16 v2, 0x14

    if-le v0, v2, :cond_5

    add-int/lit8 p3, p3, -0x1

    if-gt p3, p2, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
