.class public Lorg/apache/log4j/helpers/RelativeTimeDateFormat;
.super Ljava/text/DateFormat;


# static fields
.field private static final serialVersionUID:J = 0x61eb10b423babbd0L


# instance fields
.field protected final startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;->startTime:J

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;->startTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
