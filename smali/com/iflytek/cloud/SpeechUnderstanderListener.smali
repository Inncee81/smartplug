.class public interface abstract Lcom/iflytek/cloud/SpeechUnderstanderListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBeginOfSpeech()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(Lcom/iflytek/cloud/SpeechError;)V
.end method

.method public abstract onEvent(IIILandroid/os/Bundle;)V
.end method

.method public abstract onResult(Lcom/iflytek/cloud/UnderstanderResult;)V
.end method

.method public abstract onVolumeChanged(I)V
.end method
