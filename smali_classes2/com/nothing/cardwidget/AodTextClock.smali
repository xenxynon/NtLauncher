.class public final Lcom/nothing/cardwidget/AodTextClock;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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
        Lcom/nothing/cardwidget/AodTextClock$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/AodTextClock$Companion;

.field private static final TAG:Ljava/lang/String; = "AodTextClock"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private alarmTimeOut:Ll2/a;

.field private autoLocaleEnable:Z

.field private format:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/String;

.field private mDescFormat24:Ljava/lang/String;

.field private mFormat12:Ljava/lang/String;

.field private mFormat24:Ljava/lang/String;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mRegistered:Z

.field private mShouldRunTicker:Z

.field private mShowCurrentUserTime:Z

.field private mStopTicking:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/AodTextClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/AodTextClock$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/AodTextClock;->Companion:Lcom/nothing/cardwidget/AodTextClock$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/nothing/cardwidget/AodTextClock$mTicker$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/AodTextClock$mTicker$1;-><init>(Lcom/nothing/cardwidget/AodTextClock;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->init()V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/AodTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/AodTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Lcom/nothing/cardwidget/AodTextClock$mTicker$1;

    invoke-direct {p3, p0}, Lcom/nothing/cardwidget/AodTextClock$mTicker$1;-><init>(Lcom/nothing/cardwidget/AodTextClock;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/AodTextClock;->mTicker:Ljava/lang/Runnable;

    sget-object p3, Lk2/a;->a:Lk2/a$a;

    const/4 p4, 0x3

    new-array p4, p4, [Ln5/k;

    const-string v0, "clockFormat12Hour"

    invoke-virtual {p3, p1, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/nothing/cardwidget/R$attr;->clockFormat12Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-string v0, "clockFormat24Hour"

    invoke-virtual {p3, p1, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/nothing/cardwidget/R$attr;->clockFormat24Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p4, v1

    const-string v0, "clockTimeZone"

    invoke-virtual {p3, p1, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/nothing/cardwidget/R$attr;->clockTimeZone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p4, v1

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

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget v1, Lcom/nothing/cardwidget/R$attr;->clockFormat12Hour:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v1, Lcom/nothing/cardwidget/R$attr;->clockFormat24Hour:I

    if-ne v0, v1, :cond_2

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v1, Lcom/nothing/cardwidget/R$attr;->clockTimeZone:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardwidget/AodTextClock;->mTimeZone:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->init()V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/AodTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getAlarmTimeOut$p(Lcom/nothing/cardwidget/AodTextClock;)Ll2/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->alarmTimeOut:Ll2/a;

    return-object p0
.end method

.method public static final synthetic access$getMHasSeconds$p(Lcom/nothing/cardwidget/AodTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mHasSeconds:Z

    return p0
.end method

.method public static final synthetic access$getMShouldRunTicker$p(Lcom/nothing/cardwidget/AodTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mShouldRunTicker:Z

    return p0
.end method

.method public static final synthetic access$getMStopTicking$p(Lcom/nothing/cardwidget/AodTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mStopTicking:Z

    return p0
.end method

.method public static final synthetic access$getMTime$p(Lcom/nothing/cardwidget/AodTextClock;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method public static final synthetic access$onTimeChanged(Lcom/nothing/cardwidget/AodTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method private final chooseFormat()V
    .locals 4

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nothing/cardwidget/AodTextClock;->Companion:Lcom/nothing/cardwidget/AodTextClock$Companion;

    iget-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    iget-object v2, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Lcom/nothing/cardwidget/AodTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nothing/cardwidget/AodTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/AodTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->format:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat24:Ljava/lang/String;

    iget-object v3, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat12:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nothing/cardwidget/AodTextClock;->Companion:Lcom/nothing/cardwidget/AodTextClock$Companion;

    iget-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    iget-object v2, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Lcom/nothing/cardwidget/AodTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nothing/cardwidget/AodTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/AodTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->format:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat12:Ljava/lang/String;

    iget-object v3, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat24:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/nothing/cardwidget/AodTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/AodTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat:Ljava/lang/CharSequence;

    sget-object v0, Lcom/nothing/cardwidget/utils/DateFormatUtils;->INSTANCE:Lcom/nothing/cardwidget/utils/DateFormatUtils;

    iget-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->format:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/utils/DateFormatUtils;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mHasSeconds:Z

    return-void
.end method

.method private final createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const-string v0, "{\n            Calendar.g\u2026Zone(timeZone))\n        }"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v0, "{\n            Calendar.getInstance()\n        }"

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    return-void
.end method

.method private final getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dtpg.getBestPattern(skeleton)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final init()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "hm"

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Hm"

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/AlarmManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/AlarmManager;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    new-instance v0, Ll2/a;

    iget-object v1, p0, Lcom/nothing/cardwidget/AodTextClock;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "AodTextClock"

    invoke-direct {v0, v1, p0, v3, v2}, Ll2/a;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->alarmTimeOut:Ll2/a;

    :cond_3
    return-void
.end method

.method private final is24HourModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final onTimeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    const-string v2, "mTime"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/AodTextClock;->autoLocaleEnable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/nothing/cardwidget/AodTextClock;->format:Ljava/lang/CharSequence;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call onTimeChanged, time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nothing/cardwidget/AodTextClock;->mTime:Ljava/util/Calendar;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AodTextClock"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final onVisibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/AodTextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mShouldRunTicker:Z

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mShouldRunTicker:Z

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->alarmTimeOut:Ll2/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ll2/a;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getFormat()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->format:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getFormat12Hour()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormat24Hour()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

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

    const-string v1, ", Pre text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodTextClock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/nothing/cardwidget/AodTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodTextClock;->onVisibilityChanged(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/AodTextClock;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/AodTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    :cond_0
    return-void
.end method

.method public final refreshTime()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setAutoLocaleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodTextClock;->autoLocaleEnable:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat12:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setContentDescriptionFormat24Hour(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mDescFormat24:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat12:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mFormat24:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/AodTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/AodTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock;->onTimeChanged()V

    return-void
.end method
