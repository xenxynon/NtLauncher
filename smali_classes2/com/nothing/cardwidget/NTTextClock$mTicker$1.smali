.class public final Lcom/nothing/cardwidget/NTTextClock$mTicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTTextClock;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTTextClock;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTTextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTTextClock;->access$getMStopTicking$p(Lcom/nothing/cardwidget/NTTextClock;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTTextClock;->access$getMShouldRunTicker$p(Lcom/nothing/cardwidget/NTTextClock;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTTextClock;->access$onTimeChanged(Lcom/nothing/cardwidget/NTTextClock;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTTextClock;->access$getMTime$p(Lcom/nothing/cardwidget/NTTextClock;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mTime"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v3}, Lcom/nothing/cardwidget/NTTextClock;->access$getMTime$p(Lcom/nothing/cardwidget/NTTextClock;)Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {v2}, Lcom/nothing/cardwidget/NTTextClock;->access$getMHasSeconds$p(Lcom/nothing/cardwidget/NTTextClock;)Z

    move-result v2

    const-string v3, "{\n                now.at\u2026withNano(0)\n            }"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    if-eqz v2, :cond_3

    invoke-virtual {v1, v4, v5}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v4, v5}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v6}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const-wide/16 v0, 0x3e8

    :cond_4
    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-virtual {v2, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method
