.class public final Lcom/nothing/cardwidget/FlashTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/FlashTextView$FlashHandler;,
        Lcom/nothing/cardwidget/FlashTextView$Companion;
    }
.end annotation


# static fields
.field private static final CORRECT_DELTA:I = 0x1f4

.field public static final Companion:Lcom/nothing/cardwidget/FlashTextView$Companion;

.field private static final NEXT_FLASH:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "FlashTextView"


# instance fields
.field private darkAlpha:Ljava/lang/Float;

.field private flashHandler:Landroid/os/Handler;

.field private isShowing:Z

.field private originalAlpha:Ljava/lang/Float;

.field private final timeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/FlashTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/FlashTextView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/FlashTextView;->Companion:Lcom/nothing/cardwidget/FlashTextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/FlashTextView;->isShowing:Z

    new-instance p1, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;-><init>(Lcom/nothing/cardwidget/FlashTextView;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/FlashTextView;->timeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/FlashTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/FlashTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/FlashTextView;->isShowing:Z

    new-instance p1, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;-><init>(Lcom/nothing/cardwidget/FlashTextView;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/FlashTextView;->timeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/FlashTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$calcNextFlashDelay(Lcom/nothing/cardwidget/FlashTextView;)J
    .locals 2

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->calcNextFlashDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$changeAlpha(Lcom/nothing/cardwidget/FlashTextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/FlashTextView;->changeAlpha(Z)V

    return-void
.end method

.method public static final synthetic access$getFlashHandler$p(Lcom/nothing/cardwidget/FlashTextView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/FlashTextView;->flashHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$isShowing$p(Lcom/nothing/cardwidget/FlashTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/FlashTextView;->isShowing:Z

    return p0
.end method

.method public static final synthetic access$startFlash(Lcom/nothing/cardwidget/FlashTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->startFlash()V

    return-void
.end method

.method private final calcFlashStartUpDelay()J
    .locals 7

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->getInstantCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type java.util.Calendar"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {v2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v3

    const/4 v5, 0x2

    int-to-long v5, v5

    rem-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    :goto_0
    invoke-virtual {v2, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    const/16 p0, 0x1f4

    int-to-long v4, p0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcFlashStartUpDelay error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlashTextView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final calcNextFlashDelay()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p0, 0x3e8

    int-to-long v2, p0

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    const/16 p0, 0x1f4

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private final changeAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/FlashTextView;->isShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/FlashTextView;->originalAlpha:Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/FlashTextView;->darkAlpha:Ljava/lang/Float;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private final getInstantCalendar()Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-string v0, "getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final init()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/FlashTextView;->originalAlpha:Ljava/lang/Float;

    new-instance v0, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;-><init>(Lcom/nothing/cardwidget/FlashTextView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/FlashTextView;->flashHandler:Landroid/os/Handler;

    return-void
.end method

.method private final registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/nothing/cardwidget/FlashTextView;->timeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlashTextView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final startFlash()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/cardwidget/FlashTextView;->flashHandler:Landroid/os/Handler;

    const-string v1, "flashHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x3e9

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/nothing/cardwidget/FlashTextView;->flashHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->calcFlashStartUpDelay()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final stopFlash()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/FlashTextView;->flashHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "flashHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/FlashTextView;->originalAlpha:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/FlashTextView;->changeAlpha(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->startFlash()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->registerReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->stopFlash()V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/FlashTextView;->timeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterReceiver error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlashTextView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->startFlash()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView;->stopFlash()V

    :goto_1
    return-void
.end method

.method public final setFlashDarkAlpha(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/FlashTextView;->darkAlpha:Ljava/lang/Float;

    return-void
.end method
