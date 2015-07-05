.class Lcom/estrongs/android/pop/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/g;->b:Lcom/estrongs/android/pop/app/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/g;->b:Lcom/estrongs/android/pop/app/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ad;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/g;->b:Lcom/estrongs/android/pop/app/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Lcom/estrongs/android/pop/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/g;->b:Lcom/estrongs/android/pop/app/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Lcom/estrongs/android/pop/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f;->notifyDataSetChanged()V

    return-void
.end method
