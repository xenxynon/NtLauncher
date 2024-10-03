.class public abstract Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/launcher/widget/a;


# instance fields
.field private mBgCornerRadius:F

.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    sget-object v0, Ly2/c;->a:Ly2/c;

    invoke-virtual {v0}, Ly2/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mBgCornerRadius:F

    return p0
.end method

.method private enforceRoundedCorners()V
    .locals 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_a

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-nez v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v1, v1, Lg3/b;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getClipToOutline()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mBgCornerRadius:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetView:Background view has config outline provider, update the radius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mBgCornerRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AERO-5645"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v3}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidateOutline()V

    return-void

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void
.end method

.method private resetRoundedCorners()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public applyDisplaySpan(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->applyDisplaySpan(II)V

    return-void
.end method

.method public beginDeferringUpdates()V
    .locals 0

    return-void
.end method

.method public endDeferringUpdates()V
    .locals 0

    return-void
.end method

.method public getEnforcedCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public hasEnforcedCornerRadius()Z
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getClipToOutline()Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/android/launcher3/widget/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v0

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->enforceRoundedCorners()V

    :cond_0
    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
