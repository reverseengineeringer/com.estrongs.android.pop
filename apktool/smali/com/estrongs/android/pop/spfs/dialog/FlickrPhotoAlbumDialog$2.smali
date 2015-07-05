.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

.field final synthetic val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;->cancelAllRadio()V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
