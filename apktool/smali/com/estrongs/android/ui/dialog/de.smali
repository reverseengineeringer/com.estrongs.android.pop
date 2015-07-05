.class Lcom/estrongs/android/ui/dialog/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/dialog/dd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dd;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dd;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/de;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dd;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/dd;->a(Lcom/estrongs/android/ui/dialog/dd;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/o;

    iget-object v1, v0, Lcom/estrongs/android/util/o;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/estrongs/android/ui/dialog/de;->a:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dd;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/dd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v1, v0, Lcom/estrongs/android/util/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/ad;->d(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dd;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/dd;->a(Lcom/estrongs/android/ui/dialog/dd;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/util/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/estrongs/android/ui/dialog/df;->a(I)V

    :cond_1
    return-void
.end method
