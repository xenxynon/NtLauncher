.class public final Lcom/nothing/cardwidget/battery/timer/TimerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;,
        Lcom/nothing/cardwidget/battery/timer/TimerFactory$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

.field private static final allTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nothing/cardwidget/battery/timer/ITimerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(\n        mutableMapOf()\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->allTimers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final start(Ljava/lang/String;Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)Lcom/nothing/cardwidget/battery/timer/ITimerTask;
    .locals 1

    sget-object p0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->allTimers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/timer/ITimerTask;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/nothing/cardwidget/battery/timer/AlarmTimer;

    invoke-direct {p2, p1}, Lcom/nothing/cardwidget/battery/timer/AlarmTimer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0

    :cond_1
    new-instance p2, Lcom/nothing/cardwidget/battery/timer/HandleTimer;

    invoke-direct {p2, p1}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, p2

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p3, p4, p5}, Lcom/nothing/cardwidget/battery/timer/ITimerTask;->start(JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V

    return-object v0
.end method


# virtual methods
.method public final startAlarmTimer(Ljava/lang/String;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V
    .locals 7

    const-string v0, "timerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;->ALARM:Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->start(Ljava/lang/String;Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)Lcom/nothing/cardwidget/battery/timer/ITimerTask;

    return-void
.end method

.method public final startHandleTimer(Ljava/lang/String;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V
    .locals 7

    const-string v0, "timerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;->HANDLE:Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->start(Ljava/lang/String;Lcom/nothing/cardwidget/battery/timer/TimerFactory$TimerType;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)Lcom/nothing/cardwidget/battery/timer/ITimerTask;

    return-void
.end method

.method public final stopTimer(Ljava/lang/String;)V
    .locals 0

    const-string p0, "timerId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->allTimers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/battery/timer/ITimerTask;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardwidget/battery/timer/ITimerTask;->cancel()V

    :cond_0
    return-void
.end method
