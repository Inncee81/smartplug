.class Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;
.super Ljava/lang/Object;
.source "VideoGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoGridAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 80
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mLastNItems:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$2(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 82
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$3(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)V

    .line 83
    const-string v1, "VLC/VideoGridAnimator"

    const-string v2, "Rescheduling animation: list not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_0
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-static {v2, v13}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$4(Lorg/videolan/vlc/gui/video/VideoGridAnimator;Z)V

    .line 90
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 91
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 92
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    mul-int/lit8 v2, v10, 0x50

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 95
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->isListMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 98
    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 97
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 101
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    mul-int/lit8 v2, v10, 0x50

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 103
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 105
    :cond_2
    new-instance v2, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;-><init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-static {v2, v13}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$4(Lorg/videolan/vlc/gui/video/VideoGridAnimator;Z)V

    .line 123
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$1(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 124
    .local v11, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-virtual {v2, v12, v11}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->setAlpha(FLandroid/view/View;)V

    .line 125
    invoke-virtual {v11, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method
