.class Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;
.super Ljava/lang/Object;
.source "AudioPlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field private final synthetic val$itemView:Landroid/view/View;

.field private final synthetic val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    iput-object p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iput-object p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$itemView:Landroid/view/View;

    iput p4, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$pos:I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$itemView:Landroid/view/View;

    iget v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;->val$pos:I

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->performItemLongClick(Landroid/view/View;IJ)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
