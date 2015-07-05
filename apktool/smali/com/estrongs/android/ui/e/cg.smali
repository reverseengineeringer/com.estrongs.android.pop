.class Lcom/estrongs/android/ui/e/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

.field final synthetic b:Lcom/estrongs/android/ui/e/cf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cf;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cg;->b:Lcom/estrongs/android/ui/e/cf;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cg;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cg;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c()V

    const/4 v0, 0x0

    return v0
.end method
