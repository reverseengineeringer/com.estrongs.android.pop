.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

.field final synthetic val$aocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->val$aocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumDialog:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    new-instance v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->val$aocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v4}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v6, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumDialog:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumDialog:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->show()V

    return-void
.end method
