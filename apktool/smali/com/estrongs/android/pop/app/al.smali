.class Lcom/estrongs/android/pop/app/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aQ()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)Lcom/estrongs/android/pop/app/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/al;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)Lcom/estrongs/android/pop/app/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->notifyDataSetChanged()V

    return-void
.end method
