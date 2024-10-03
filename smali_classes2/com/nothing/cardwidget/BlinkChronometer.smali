.class public final Lcom/nothing/cardwidget/BlinkChronometer;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;,
        Lcom/nothing/cardwidget/BlinkChronometer$Companion;
    }
.end annotation


# static fields
.field private static final BLINK_INTERVAL:J = 0x320L

.field public static final Companion:Lcom/nothing/cardwidget/BlinkChronometer$Companion;

.field private static final ELAPSED_FORMAT_HHMMSS:Ljava/lang/String; = "%1$02d:%2$02d:%3$02d"

.field private static final HOUR_IN_SEC:I = 0xe10

.field public static final METHOD_PAUSE:Ljava/lang/String; = "pause"

.field public static final METHOD_SET_BASE:Ljava/lang/String; = "setBase"

.field public static final METHOD_SET_FORMAT:Ljava/lang/String; = "setFormat"

.field public static final METHOD_START:Ljava/lang/String; = "start"

.field public static final METHOD_STOP:Ljava/lang/String; = "stop"

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final NEGATIVE_DURATION_FORMAT:Ljava/lang/String; = "\\u2212%1$s"

.field private static final TAG:Ljava/lang/String; = "BlinkChronometer"


# instance fields
.field private base:J

.field private final blinkRunnable$delegate:Ln5/e;

.field private blinking:Z

.field private format:Ljava/lang/String;

.field private formatBuilder:Ljava/lang/StringBuilder;

.field private formatter:Ljava/util/Formatter;

.field private final formatterArgs:[Ljava/lang/Object;

.field private formatterLocale:Ljava/util/Locale;

.field private isCountDown:Z

.field private isLogged:Z

.field private isRunning:Z

.field private isStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private now:J

.field private onChronometerTickListener:Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;

.field private originText:Ljava/lang/CharSequence;

.field private prevText:Ljava/lang/CharSequence;

.field private final recycleStrBuilder:Ljava/lang/StringBuilder;

.field private showingText:Ljava/lang/CharSequence;

.field private startBlink:Z

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/BlinkChronometer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/BlinkChronometer$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/BlinkChronometer;->Companion:Lcom/nothing/cardwidget/BlinkChronometer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/BlinkChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/BlinkChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatterArgs:[Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->recycleStrBuilder:Ljava/lang/StringBuilder;

    new-instance p1, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;-><init>(Lcom/nothing/cardwidget/BlinkChronometer;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->blinkRunnable$delegate:Ln5/e;

    new-instance p1, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;-><init>(Lcom/nothing/cardwidget/BlinkChronometer;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->base:J

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/BlinkChronometer;->updateText(J)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/BlinkChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$isRunning$p(Lcom/nothing/cardwidget/BlinkChronometer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isRunning:Z

    return p0
.end method

.method public static final synthetic access$makeTextBlink(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->makeTextBlink()V

    return-void
.end method

.method public static final synthetic access$updateText(Lcom/nothing/cardwidget/BlinkChronometer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/BlinkChronometer;->updateText(J)V

    return-void
.end method

.method private final formatDuration(J)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p0, p1

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    const/16 p1, 0xe10

    const/4 p2, 0x0

    if-lt p0, p1, :cond_1

    div-int/lit16 p1, p0, 0xe10

    mul-int/lit16 v0, p1, 0xe10

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_2

    div-int/lit8 v0, p0, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p0, v1

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_3

    new-instance v2, Landroid/icu/util/Measure;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v3, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, p1, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v0, :cond_4

    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, v0, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sget-object p1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    new-array p1, p2, [Landroid/icu/util/Measure;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Landroid/icu/util/Measure;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/icu/util/Measure;

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getInstance(Locale.getDe\u2026.toTypedArray<Measure>())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0xe10

    cmp-long p0, p2, v0

    const-wide/16 v0, 0x0

    if-ltz p0, :cond_0

    const/16 p0, 0xe10

    int-to-long v2, p0

    div-long v4, p2, v2

    mul-long/2addr v2, v4

    sub-long/2addr p2, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    const-wide/16 v2, 0x3c

    cmp-long p0, p2, v2

    if-ltz p0, :cond_1

    const/16 p0, 0x3c

    int-to-long v0, p0

    div-long v2, p2, v0

    mul-long/2addr v0, v2

    sub-long/2addr p2, v0

    move-wide v0, v2

    :cond_1
    const/4 p0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, p0

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p0

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p0

    const-string p0, "%1$02d:%2$02d:%3$02d"

    invoke-virtual {v2, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "f.format(ELAPSED_FORMAT_\u2026utes, seconds).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getBlinkRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->blinkRunnable$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final initBlinkText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->originText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->showingText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->prevText:Ljava/lang/CharSequence;

    return-void
.end method

.method private final makeTextBlink()V
    .locals 3

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->swapShowingText()V

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->showingText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->getBlinkRunnable()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic pause$default(Lcom/nothing/cardwidget/BlinkChronometer;Ljava/lang/CharSequence;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/BlinkChronometer;->pause(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private final swapShowingText()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->showingText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->prevText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->showingText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->prevText:Ljava/lang/CharSequence;

    return-void
.end method

.method private final updateBlinkState()V
    .locals 3

    iget-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->startBlink:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->blinking:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->makeTextBlink()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->getBlinkRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->originText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop blinking! originText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->originText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlinkChronometer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->blinking:Z

    :cond_3
    return-void
.end method

.method private final updateRunning()V
    .locals 4

    iget-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isRunning:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/nothing/cardwidget/BlinkChronometer;->updateText(J)V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->dispatchChronometerTick()V

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->mTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isRunning:Z

    :cond_2
    return-void
.end method

.method private final declared-synchronized updateText(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->now:J

    iget-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isCountDown:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->base:J

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->base:J

    sub-long v0, p1, v0

    :goto_0
    const/16 p1, 0x3e8

    int-to-long p1, p1

    div-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    neg-long v0, v0

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v3, p0, Lcom/nothing/cardwidget/BlinkChronometer;->recycleStrBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v0, v1}, Lcom/nothing/cardwidget/BlinkChronometer;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    const-string v1, "\\u2212%1$s"

    new-array v3, p2, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "Formatter(Locale.getDefa\u2026_FORMAT, text).toString()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->format:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatter:Ljava/util/Formatter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatterLocale:Ljava/util/Locale;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatterLocale:Ljava/util/Locale;

    new-instance v1, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v3, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatter:Ljava/util/Formatter;

    :cond_4
    iget-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatterArgs:[Ljava/lang/Object;

    aput-object v0, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatter:Ljava/util/Formatter;

    invoke-static {p1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->format:Ljava/lang/String;

    iget-object v2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatterArgs:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-boolean p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isLogged:Z

    if-nez p1, :cond_5

    const-string p1, "BlinkChronometer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal format string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isLogged:Z

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final dispatchChronometerTick()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->onChronometerTickListener:Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;->onChronometerTick(Lcom/nothing/cardwidget/BlinkChronometer;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class p0, Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BlinkChronometer::class.java.name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetContentDescriptionOverride"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    iget-wide v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->now:J

    iget-wide v2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->base:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/nothing/cardwidget/BlinkChronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOnChronometerTickListener()Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->onChronometerTickListener:Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;

    return-object p0
.end method

.method public final isCountDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isCountDown:Z

    return p0
.end method

.method public final isTheFinalCountDown()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://youtu.be/9jK-NcRmVcw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x81000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->visible:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateBlinkState()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->visible:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateBlinkState()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method

.method public final pause(Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->stop()V

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/nothing/cardwidget/BlinkChronometer;->startBlink:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/BlinkChronometer;->initBlinkText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateBlinkState()V

    :cond_1
    return-void
.end method

.method public final setBase(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->base:J

    invoke-virtual {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->dispatchChronometerTick()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/BlinkChronometer;->updateText(J)V

    return-void
.end method

.method public final setCountDown(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isCountDown:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nothing/cardwidget/BlinkChronometer;->updateText(J)V

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->format:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->formatBuilder:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final setOnChronometerTickListener(Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->onChronometerTickListener:Lcom/nothing/cardwidget/BlinkChronometer$OnChronometerTickListener;

    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isStarted:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->startBlink:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateBlinkState()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->isStarted:Z

    iput-boolean v0, p0, Lcom/nothing/cardwidget/BlinkChronometer;->startBlink:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateBlinkState()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->updateRunning()V

    return-void
.end method
