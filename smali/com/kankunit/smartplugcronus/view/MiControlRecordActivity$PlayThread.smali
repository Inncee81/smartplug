.class Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;
.super Ljava/lang/Thread;
.source "MiControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 333
    const-wide/16 v8, 0x0

    .line 334
    .local v8, "time":J
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 357
    :goto_1
    return-void

    .line 334
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 335
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "buttonName":Ljava/lang/String;
    const-string v10, "buttonId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 337
    .local v1, "buttonId":I
    const-string v10, "time"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 338
    .local v6, "t":J
    const-string v10, "begin"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 339
    move-wide v8, v6

    .line 342
    :cond_1
    sub-long v12, v6, v8

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 349
    .local v5, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "buttonName"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v10, "buttonId"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 353
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    move-wide v8, v6

    goto :goto_0

    .line 343
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "message":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 345
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
