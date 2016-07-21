.class Lcom/estrongs/android/pop/app/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/cv;

.field final synthetic b:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;Lcom/estrongs/android/ui/dialog/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ec;->b:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ec;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ec;->b:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ec;->a:Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
