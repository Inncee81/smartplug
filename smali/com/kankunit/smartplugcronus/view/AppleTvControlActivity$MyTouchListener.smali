.class public Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;
.super Ljava/lang/Object;
.source "AppleTvControlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 508
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageButton;

    .line 509
    .local v2, "iv":Landroid/widget/ImageButton;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 510
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;Landroid/graphics/Bitmap;)V

    .line 512
    :cond_0
    const/4 v3, 0x0

    .line 514
    .local v3, "mCount":I
    :try_start_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 518
    if-nez v3, :cond_4

    .line 521
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->leftButton:Landroid/widget/ImageButton;

    if-eq v2, v6, :cond_1

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->rightButton:Landroid/widget/ImageButton;

    if-ne v2, v6, :cond_2

    .line 524
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 525
    .local v1, "height":I
    const/4 v5, 0x0

    .line 526
    .local v5, "view":Landroid/view/View;
    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 527
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v5, v6, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->upButton:Landroid/widget/ImageButton;

    .line 531
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 532
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 533
    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    .line 534
    move-object v4, v5

    .line 535
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener$1;

    invoke-direct {v8, p0, v4}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener$1;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;Landroid/view/View;)V

    .line 540
    const-wide/16 v9, 0xc8

    .line 535
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "height":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    move v6, v7

    .line 545
    :goto_1
    return v6

    .line 515
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move v6, v8

    .line 516
    goto :goto_1

    .line 529
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v1    # "height":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v5, v6, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->downButton:Landroid/widget/ImageButton;

    goto :goto_0

    .end local v1    # "height":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    move v6, v8

    .line 545
    goto :goto_1
.end method
