.class Lcom/estrongs/android/pop/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Lcom/estrongs/android/pop/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Lcom/estrongs/android/pop/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f;->notifyDataSetChanged()V

    return-void
.end method
