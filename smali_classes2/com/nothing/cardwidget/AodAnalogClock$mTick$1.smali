.class public final Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/AodAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/AodAnalogClock;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/AodAnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v0}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getMVisible$p(Lcom/nothing/cardwidget/AodAnalogClock;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/AodAnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v1}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getMClock$p(Lcom/nothing/cardwidget/AodAnalogClock;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    iget-object v3, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v3}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getMSecondHand$p(Lcom/nothing/cardwidget/AodAnalogClock;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v3}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getMSecondsHandFps$p(Lcom/nothing/cardwidget/AodAnalogClock;)I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    const/16 v1, 0x3e8

    int-to-double v8, v1

    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v1}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getMSecondsHandFps$p(Lcom/nothing/cardwidget/AodAnalogClock;)I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    long-to-double v6, v6

    rem-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gtz v1, :cond_4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gtz v1, :cond_3

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    move-wide v6, v8

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-static {v1}, Lcom/nothing/cardwidget/AodAnalogClock;->access$getAlarmTimeOut$p(Lcom/nothing/cardwidget/AodAnalogClock;)Ll2/a;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v1, v6, v7, v3}, Ll2/a;->b(JI)Z

    :cond_5
    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    const-string v3, "localTime"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/nothing/cardwidget/AodAnalogClock;->access$onTimeChanged(Lcom/nothing/cardwidget/AodAnalogClock;Ljava/time/LocalTime;J)V

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
