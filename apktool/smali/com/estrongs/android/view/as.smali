.class Lcom/estrongs/android/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ax;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/as;->c:Lcom/estrongs/android/view/ak;

    iput-object p2, p0, Lcom/estrongs/android/view/as;->a:Lcom/estrongs/android/pop/app/compress/ax;

    iput-object p3, p0, Lcom/estrongs/android/view/as;->b:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/as;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ax;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->c:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->b:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/as;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/ax;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/as;->c:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->c:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
