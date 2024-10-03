.class public final Lcom/nothing/cardwidget/AodAnalogClock;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;,
        Lcom/nothing/cardwidget/AodAnalogClock$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/AodAnalogClock$Companion;

.field private static final TAG:Ljava/lang/String; = "AodAnalogClock"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private alarmTimeOut:Ll2/a;

.field private mChanged:Z

.field private mClock:Ljava/time/Clock;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private final mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private final mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

.field private mMinutes:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private final mSecondHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

.field private mSeconds:F

.field private final mSecondsHandFps:I

.field private final mTick:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/time/ZoneId;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/AodAnalogClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/AodAnalogClock$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/AodAnalogClock;->Companion:Lcom/nothing/cardwidget/AodAnalogClock$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/AodAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/AodAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondsHandFps:I

    new-instance v1, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;-><init>(Lcom/nothing/cardwidget/AodAnalogClock;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    new-instance v1, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;-><init>(Lcom/nothing/cardwidget/AodAnalogClock;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    new-instance v1, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;-><init>(Lcom/nothing/cardwidget/AodAnalogClock;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    new-instance v1, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;-><init>(Lcom/nothing/cardwidget/AodAnalogClock;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    new-instance v1, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/AodAnalogClock$mTick$1;-><init>(Lcom/nothing/cardwidget/AodAnalogClock;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTick:Ljava/lang/Runnable;

    sget-object v4, Lcom/nothing/cardwidget/R$styleable;->AodAnalogClock:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v1, "context.obtainStyledAttr\u2026    defStyleRes\n        )"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget-object p3, Lk2/a;->a:Lk2/a$a;

    const/4 p4, 0x4

    new-array p4, p4, [Ln5/k;

    const-string v1, "aod_dial"

    invoke-virtual {p3, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_dial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p4, v2

    const-string v1, "aod_hand_hour"

    invoke-virtual {p3, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_hand_hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p4, v2

    const-string v1, "aod_hand_minute"

    invoke-virtual {p3, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_hand_minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p4, v2

    const-string v1, "aod_timeZone"

    invoke-virtual {p3, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_timeZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p4, v2

    invoke-static {p4}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_dial:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v1, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    sget-object p4, Lo2/a;->a:Lo2/a$a;

    const-string v1, "clock_dial"

    invoke-virtual {p4, v1}, Lo2/a$a;->a(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_hand_hour:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v1, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    sget-object p4, Lo2/a;->a:Lo2/a$a;

    const-string v1, "clock_hand_hour"

    invoke-virtual {p4, v1}, Lo2/a$a;->a(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_hand_minute:I

    if-ne v1, v2, :cond_3

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v1, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    sget-object p4, Lo2/a;->a:Lo2/a$a;

    const-string v1, "clock_hand_minute"

    invoke-virtual {p4, v1}, Lo2/a$a;->a(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_3
    sget v2, Lcom/nothing/cardwidget/R$attr;->aod_timeZone:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/nothing/cardwidget/AodAnalogClock;->Companion:Lcom/nothing/cardwidget/AodAnalogClock$Companion;

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v2, p1, p2, p4}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/nothing/cardwidget/AodAnalogClock$Companion;->access$toZoneId(Lcom/nothing/cardwidget/AodAnalogClock$Companion;Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTimeZone:Ljava/time/ZoneId;

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->createClock()V

    iget-object p2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, v0

    :goto_1
    iput p2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialWidth:I

    iget-object p2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_6
    iput v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/app/AlarmManager;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/app/AlarmManager;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->alarmManager:Landroid/app/AlarmManager;

    if-eqz p1, :cond_8

    new-instance p1, Ll2/a;

    iget-object p2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {p2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p3

    const-string p4, "AodAnalogClock"

    invoke-direct {p1, p2, p0, p4, p3}, Ll2/a;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->alarmTimeOut:Ll2/a;

    :cond_8
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/AodAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getAlarmTimeOut$p(Lcom/nothing/cardwidget/AodAnalogClock;)Ll2/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->alarmTimeOut:Ll2/a;

    return-object p0
.end method

.method public static final synthetic access$getMClock$p(Lcom/nothing/cardwidget/AodAnalogClock;)Ljava/time/Clock;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method public static final synthetic access$getMSecondHand$p(Lcom/nothing/cardwidget/AodAnalogClock;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getMSecondsHandFps$p(Lcom/nothing/cardwidget/AodAnalogClock;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondsHandFps:I

    return p0
.end method

.method public static final synthetic access$getMVisible$p(Lcom/nothing/cardwidget/AodAnalogClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mVisible:Z

    return p0
.end method

.method public static final synthetic access$onTimeChanged(Lcom/nothing/cardwidget/AodAnalogClock;Ljava/time/LocalTime;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/AodAnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method private final createClock()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mClock:Ljava/time/Clock;

    return-void
.end method

.method private final onInvisible()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->alarmTimeOut:Ll2/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll2/a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mVisible:Z

    :cond_1
    return-void
.end method

.method private final onTimeChanged(Ljava/time/LocalTime;J)V
    .locals 5

    iget v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHour:F

    iget v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondsHandFps:I

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondsHandFps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_0
    iput v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSeconds:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSeconds:F

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinutes:F

    div-float v3, v2, v4

    add-float/2addr p1, v3

    iput p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    float-to-int v0, v0

    float-to-int p1, p1

    if-ne v0, p1, :cond_1

    float-to-int p1, v1

    float-to-int v0, v2

    if-eq p1, v0, :cond_2

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/nothing/cardwidget/AodAnalogClock;->updateContentDescription(J)V

    :cond_2
    return-void
.end method

.method private final onVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->onVisible()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->onInvisible()V

    :goto_0
    return-void
.end method

.method private final onVisible()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mVisible:Z

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private final updateContentDescription(J)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x81

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "formatDateRange(\n       \u2026)\n            .toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getDialTintBlendMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method public final getDialTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final getHourHandTintBlendMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method public final getHourHandTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method public final getMinuteHandTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected final now()Ljava/time/Instant;
    .locals 1

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mClock:Ljava/time/Clock;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object p0

    const-string v0, "mClock!!.instant()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onAlarm()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call onAlarm, time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodAnalogClock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodAnalogClock;->onVisibilityChanged(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodAnalogClock;->onVisibilityChanged(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lt v2, v7, :cond_1

    if-ge v3, v8, :cond_2

    :cond_1
    const/4 v1, 0x1

    int-to-float v2, v2

    int-to-float v9, v7

    div-float/2addr v2, v9

    int-to-float v3, v3

    int-to-float v9, v8

    div-float/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v4

    int-to-float v9, v5

    invoke-virtual {p1, v2, v2, v3, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v0, :cond_3

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v4, v7

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v5, v8

    add-int/2addr v7, v4

    add-int/2addr v8, v5

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHour:F

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v8, v8, 0x2

    sub-int v10, v4, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v11, v5, v9

    add-int/2addr v8, v4

    add-int/2addr v9, v5

    invoke-virtual {v2, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinutes:F

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v2, v8

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v9, v9, 0x2

    sub-int v11, v4, v9

    div-int/lit8 v10, v10, 0x2

    sub-int v12, v5, v10

    add-int/2addr v9, v4

    add-int/2addr v10, v5

    invoke-virtual {v2, v11, v12, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget v9, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSecondsHandFps:I

    if-lez v9, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mSeconds:F

    div-float/2addr p0, v8

    mul-float/2addr p0, v3

    invoke-virtual {p1, p0, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 p0, p0, 0x2

    sub-int v3, v4, p0

    div-int/lit8 v0, v0, 0x2

    sub-int v6, v5, v0

    add-int/2addr v4, p0

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialWidth:I

    if-ge v1, v0, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialHeight:I

    if-ge v3, v0, :cond_1

    int-to-float v2, v3

    int-to-float v0, v0

    div-float v4, v2, v0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    return-void
.end method

.method protected final onTimeChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mClock:Ljava/time/Clock;

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    const-string v2, "now.atZone(mClock!!.zone).toLocalTime()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nothing/cardwidget/AodAnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->createClock()V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->onTimeChanged()V

    :cond_0
    return-void
.end method

.method public final setDial(Landroid/graphics/drawable/Icon;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialHeight:I

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintList()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintBlendMode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final setDialTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintBlendMode(Landroid/graphics/BlendMode;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintBlendMode(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDialTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintList(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDialTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setHourHand(Landroid/graphics/drawable/Icon;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintList()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintBlendMode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setHourHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintBlendMode(Landroid/graphics/BlendMode;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintBlendMode(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setHourHandTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintList(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setMinuteHand(Landroid/graphics/drawable/Icon;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintList()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->getMHasTintBlendMode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMinuteHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintBlendMode(Landroid/graphics/BlendMode;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintBlendMode(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setMinuteHandTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->setMHasTintList(Z)V

    iget-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHandTintInfo:Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;

    iget-object v0, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "timeZone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/cardwidget/AodAnalogClock;->Companion:Lcom/nothing/cardwidget/AodAnalogClock$Companion;

    invoke-static {v0, p1}, Lcom/nothing/cardwidget/AodAnalogClock$Companion;->access$toZoneId(Lcom/nothing/cardwidget/AodAnalogClock$Companion;Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock;->mTimeZone:Ljava/time/ZoneId;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->createClock()V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/AodAnalogClock;->onTimeChanged()V

    return-void
.end method
