.class Lcom/estrongs/android/pop/app/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dy;->b:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/dy;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method
