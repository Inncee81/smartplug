.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;
.super Ljava/lang/Object;
.source "ForgetPasswordStep2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;)Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 80
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, "paramObject":Lorg/json/JSONObject;
    const-string v3, "telephone"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephone:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v3, "checkcode"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephoneEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$2(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "method"

    const-string v4, "checkcode"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JsonObject================="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$3(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "paramObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1388

    new-instance v8, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;)V

    invoke-static {v4, v5, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$4(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 98
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
