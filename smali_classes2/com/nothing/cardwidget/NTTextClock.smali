.class public final Lcom/nothing/cardwidget/NTTextClock;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;,
        Lcom/nothing/cardwidget/NTTextClock$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/NTTextClock$Companion;

.field private static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field private static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private format:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/String;

.field private mDescFormat24:Ljava/lang/String;

.field private mFormat12:Ljava/lang/String;

.field private mFormat24:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

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

    new-instance v0, Lcom/nothing/cardwidget/NTTextClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/NTTextClock$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/NTTextClock;->Companion:Lcom/nothing/cardwidget/NTTextClock$Companion;

    const-string v0, "h:mm a"

    sput-object v0, Lcom/nothing/cardwidget/NTTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/nothing/cardwidget/NTTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;-><init>(Lcom/nothing/cardwidget/NTTextClock;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;-><init>(Lcom/nothing/cardwidget/NTTextClock;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->init()V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/NTTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/NTTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;

    invoke-direct {p3, p0}, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;-><init>(Lcom/nothing/cardwidget/NTTextClock;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/NTTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;

    invoke-direct {p3, p0}, Lcom/nothing/cardwidget/NTTextClock$mTicker$1;-><init>(Lcom/nothing/cardwidget/NTTextClock;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/NTTextClock;->mTicker:Ljava/lang/Runnable;

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

    iput-object p4, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

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

    iput-object p4, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

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

    iput-object p4, p0, Lcom/nothing/cardwidget/NTTextClock;->mTimeZone:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->init()V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/NTTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$chooseFormat(Lcom/nothing/cardwidget/NTTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    return-void
.end method

.method public static final synthetic access$createTime(Lcom/nothing/cardwidget/NTTextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/NTTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_FORMAT_12_HOUR$cp()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/NTTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FORMAT_24_HOUR$cp()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/NTTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic access$getMHasSeconds$p(Lcom/nothing/cardwidget/NTTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mHasSeconds:Z

    return p0
.end method

.method public static final synthetic access$getMShouldRunTicker$p(Lcom/nothing/cardwidget/NTTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mShouldRunTicker:Z

    return p0
.end method

.method public static final synthetic access$getMStopTicking$p(Lcom/nothing/cardwidget/NTTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mStopTicking:Z

    return p0
.end method

.method public static final synthetic access$getMTime$p(Lcom/nothing/cardwidget/NTTextClock;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method public static final synthetic access$getMTimeZone$p(Lcom/nothing/cardwidget/NTTextClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$onTimeChanged(Lcom/nothing/cardwidget/NTTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    return-void
.end method

.method private final chooseFormat()V
    .locals 4

    invoke-virtual {p0}, Lcom/nothing/cardwidget/NTTextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nothing/cardwidget/NTTextClock;->Companion:Lcom/nothing/cardwidget/NTTextClock$Companion;

    iget-object v1, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Lcom/nothing/cardwidget/NTTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nothing/cardwidget/NTTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/NTTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/NTTextClock;->format:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat24:Ljava/lang/String;

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat12:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nothing/cardwidget/NTTextClock;->Companion:Lcom/nothing/cardwidget/NTTextClock$Companion;

    iget-object v1, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Lcom/nothing/cardwidget/NTTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nothing/cardwidget/NTTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/NTTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/NTTextClock;->format:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat12:Ljava/lang/String;

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat24:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/nothing/cardwidget/NTTextClock$Companion;->access$abc(Lcom/nothing/cardwidget/NTTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mHasSeconds:Z

    sget-object v1, Lcom/nothing/cardwidget/utils/DateFormatUtils;->INSTANCE:Lcom/nothing/cardwidget/utils/DateFormatUtils;

    iget-object v2, p0, Lcom/nothing/cardwidget/NTTextClock;->format:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/utils/DateFormatUtils;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nothing/cardwidget/NTTextClock;->mHasSeconds:Z

    iget-boolean v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mShouldRunTicker:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
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

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mTime:Ljava/util/Calendar;

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
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "hm"

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/NTTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Hm"

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/NTTextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/NTTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    return-void
.end method

.method private final onTimeChanged()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    const-string v2, "mTime"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock;->format:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock;->mTime:Ljava/util/Calendar;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nothing/cardwidget/NTTextClock;->mTime:Ljava/util/Calendar;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final registerObserver()V
    .locals 4

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;-><init>(Lcom/nothing/cardwidget/NTTextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nothing/cardwidget/NTTextClock;->mShowCurrentUserTime:Z

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
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

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final unregisterObserver()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private final unregisterReceiver()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public final disableClockTick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mStopTicking:Z

    return-void
.end method

.method public final getFormat()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->format:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getFormat12Hour()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormat24Hour()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    return-object p0
.end method

.method public final is24HourModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/nothing/cardwidget/NTTextClock;->mRegistered:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->registerReceiver()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->registerObserver()V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/NTTextClock;->createTime(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/NTTextClock;->onVisibilityAggregated(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->unregisterObserver()V

    iput-boolean v1, p0, Lcom/nothing/cardwidget/NTTextClock;->mRegistered:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/NTTextClock;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public onHostVisibilityChange(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/NTTextClock;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTTextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mShouldRunTicker:Z

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mShouldRunTicker:Z

    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final refreshTime()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

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
    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat12:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setContentDescriptionFormat24Hour(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mDescFormat24:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

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
    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat12:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

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
    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mFormat24:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    return-void
.end method

.method public final setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->unregisterObserver()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->registerObserver()V

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/NTTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock;->onTimeChanged()V

    return-void
.end method
