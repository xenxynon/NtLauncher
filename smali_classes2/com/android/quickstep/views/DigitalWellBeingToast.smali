.class public final Lcom/android/quickstep/views/DigitalWellBeingToast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/DigitalWellBeingToast$SPLIT_BANNER_CONFIG;
    }
.end annotation


# static fields
.field static final MINUTE_MS:I = 0xea60

.field static final OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

.field private static final SPLIT_BANNER_FULLSCREEN:I = 0x0

.field private static final SPLIT_GRID_BANNER_LARGE:I = 0x1

.field private static final SPLIT_GRID_BANNER_SMALL:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_LEFT_ICON_ONLY:F = 0.4f

.field private static final THRESHOLD_RIGHT_ICON_ONLY:F = 0.6f


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mAppRemainingTimeMs:J

.field private mAppUsageLimitTimeMs:J

.field private mBanner:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBannerOffsetPercentage:F

.field private mHasLimit:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mSplitBannerConfig:I

.field private mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSplitOffsetTranslationX:F

.field private mSplitOffsetTranslationY:F

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.APP_USAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

    const-class v0, Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iput-object p2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/DigitalWellBeingToast;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/DigitalWellBeingToast;->lambda$initialize$0(JJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quickstep/views/DigitalWellBeingToast;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    return p0
.end method

.method public static synthetic b(Lcom/android/quickstep/views/DigitalWellBeingToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->lambda$initialize$1()V

    return-void
.end method

.method private getContentDescriptionForTask(Lcom/android/systemui/shared/recents/model/Task;JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    cmp-long p2, p4, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const p3, 0x7f120259

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-direct {p0, p4, p5, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText(JZ)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private getReadableDuration(Ljava/time/Duration;Landroid/icu/text/MeasureFormat$FormatWidth;IZ)Ljava/lang/String;
    .locals 4
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/time/Duration;->minusHours(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p3, p4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p3, p4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    :goto_0
    invoke-static {p0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    new-array p1, v2, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p3, p4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-lez v1, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    :goto_1
    invoke-static {p0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    new-array p1, v2, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p3, p4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    :goto_2
    invoke-static {p0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    new-array p1, v2, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p3, p4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getText(JZ)Ljava/lang/String;
    .locals 4

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    add-long/2addr p1, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    :cond_0
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    const v0, 0x7f12024a

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getReadableDuration(Ljava/time/Duration;Landroid/icu/text/MeasureFormat$FormatWidth;IZ)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_3

    iget p2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const p2, 0x7f120272

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initialize$0(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setLimit(JJ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setNoLimit()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$initialize$1()V
    .locals 11

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getTotalUsageLimit()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getUsageRemaining()J

    move-result-wide v1

    :cond_1
    move-wide v9, v1

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    new-instance v1, Lcom/android/quickstep/views/e;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/quickstep/views/e;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;JJ)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private replaceBanner(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->resetOldBanner()V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBanner(Landroid/view/View;)V

    return-void
.end method

.method private resetOldBanner()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    const v1, 0x7f0e006f

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setBanner(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setupAndAddBanner()V

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerOutline()V

    :cond_0
    return-void
.end method

.method private setBannerOutline()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/views/DigitalWellBeingToast$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast$1;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setLimit(JJ)V
    .locals 7

    iput-wide p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppUsageLimitTimeMs:J

    iput-wide p3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const v3, 0x7f0e006f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0802bc

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/quickstep/views/c;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/c;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->replaceBanner(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getContentDescriptionForTask(Lcom/android/systemui/shared/recents/model/Task;JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNoLimit()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->replaceBanner(Landroid/view/View;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppUsageLimitTimeMs:J

    iput-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    return-void
.end method

.method private setupAndAddBanner()V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v6

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v7

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v9, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-interface/range {v2 .. v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationX:F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationY()V

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationX()V

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateTranslationX()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationX:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasLimit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    return p0
.end method

.method public initialize(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    iput-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppUsageLimitTimeMs:J

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance p1, Lcom/android/quickstep/views/d;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/d;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V

    invoke-static {p1}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openAppUsageSettings(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/quickstep/views/DigitalWellBeingToast;->OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v4, v2, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open app usage settings for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setBannerColorTint(IF)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method setBannerVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 4

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    const/4 v3, 0x2

    if-ne p1, v2, :cond_2

    iget p1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto :goto_0

    :cond_2
    iget p1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    const v1, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    :goto_0
    move v0, v3

    :cond_3
    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    return-void
.end method

.method updateBannerOffset(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationY()V

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method
