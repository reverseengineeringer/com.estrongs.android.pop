.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$5;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$5;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->dismiss(Z)V

    return-void
.end method
