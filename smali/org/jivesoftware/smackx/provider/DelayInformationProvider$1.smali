.class Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;
.super Ljava/lang/Object;
.source "DelayInformationProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

.field final synthetic val$now:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/provider/DelayInformationProvider;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->this$0:Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    iput-object p2, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 191
    check-cast p1, Ljava/util/Calendar;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->compare(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6

    .prologue
    .line 194
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 195
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
