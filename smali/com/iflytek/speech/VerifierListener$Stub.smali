.class public abstract Lcom/iflytek/speech/VerifierListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/VerifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/VerifierListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/VerifierListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.VerifierListener"

.field static final TRANSACTION_onBeginOfSpeech:I = 0x2

.field static final TRANSACTION_onCancel:I = 0x6

.field static final TRANSACTION_onEnd:I = 0x5

.field static final TRANSACTION_onEndOfSpeech:I = 0x3

.field static final TRANSACTION_onError:I = 0x7

.field static final TRANSACTION_onRegister:I = 0x4

.field static final TRANSACTION_onVolumeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/VerifierListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/VerifierListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/speech/VerifierListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iflytek/speech/VerifierListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/iflytek/speech/VerifierListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/VerifierListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/VerifierListener$Stub;->onVolumeChanged(I)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/VerifierListener$Stub;->onBeginOfSpeech()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/VerifierListener$Stub;->onEndOfSpeech()V

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v2, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/iflytek/speech/VerifierResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/VerifierResult;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iflytek/speech/VerifierListener$Stub;->onRegister(Lcom/iflytek/speech/VerifierResult;)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string v2, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/iflytek/speech/VerifierResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/VerifierResult;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/speech/VerifierListener$Stub;->onEnd(Lcom/iflytek/speech/VerifierResult;I)V

    move v0, v1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/VerifierListener$Stub;->onCancel()V

    move v0, v1

    goto :goto_0

    :sswitch_7
    const-string v0, "com.iflytek.speech.VerifierListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/VerifierListener$Stub;->onError(I)V

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
