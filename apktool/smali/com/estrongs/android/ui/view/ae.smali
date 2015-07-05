.class Lcom/estrongs/android/ui/view/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/ai;

.field final synthetic b:Lcom/estrongs/android/ui/view/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ad;Lcom/estrongs/android/pop/app/a/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ae;->b:Lcom/estrongs/android/ui/view/ad;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ae;->b:Lcom/estrongs/android/ui/view/ad;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/android/ui/view/ac;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/ai;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ai;->c:Landroid/view/View;

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/af;

    iget-object v2, v0, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ae;->b:Lcom/estrongs/android/ui/view/ad;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/android/ui/view/ac;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/pop/app/a/ak;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ae;->a:Lcom/estrongs/android/pop/app/a/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    goto :goto_0
.end method
