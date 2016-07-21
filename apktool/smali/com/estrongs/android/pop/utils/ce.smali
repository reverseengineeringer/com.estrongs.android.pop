.class Lcom/estrongs/android/pop/utils/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/cd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ce;->a:Lcom/estrongs/android/pop/utils/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ce;->a:Lcom/estrongs/android/pop/utils/cd;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cd;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ce;->a:Lcom/estrongs/android/pop/utils/cd;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/cd;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ce;->a:Lcom/estrongs/android/pop/utils/cd;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cd;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
