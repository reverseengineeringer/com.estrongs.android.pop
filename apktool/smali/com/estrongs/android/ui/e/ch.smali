.class Lcom/estrongs/android/ui/e/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

.field final synthetic b:Lcom/estrongs/android/ui/e/cf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cf;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ch;->b:Lcom/estrongs/android/ui/e/cf;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ch;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ch;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e()V

    goto :goto_0
.end method
