.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;
.super Ljava/lang/Object;
.source "AirControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 345
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "wind"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addRecordButton(Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    if-nez v3, :cond_1

    .line 362
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "x"

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    .local v0, "b":Z
    if-eqz v0, :cond_2

    .line 354
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 355
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 357
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$7(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    const/4 v3, 0x4

    if-le v4, v3, :cond_3

    .line 358
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$7(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 361
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto :goto_0
.end method
