.class Lcom/kankunit/smartplugcronus/view/MiControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "MiControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MiControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/MiControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MiControlActivity;->startOperate(Ljava/lang/String;)V

    .line 437
    return-void
.end method
