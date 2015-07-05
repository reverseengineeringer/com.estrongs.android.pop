.class Lcom/estrongs/android/pop/app/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/db;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/db;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    return-void
.end method
