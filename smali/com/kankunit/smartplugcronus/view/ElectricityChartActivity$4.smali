.class Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$4;
.super Ljava/util/TimerTask;
.source "ElectricityChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->initDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    .line 203
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 207
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x143

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$3(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method
