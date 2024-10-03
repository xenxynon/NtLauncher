.class final Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field private final mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mProvidersChangedListener:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/IntConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mProvidersChangedListener:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    return-void
.end method


# virtual methods
.method public onAppWidgetRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p2    # Landroid/appwidget/AppWidgetProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method protected onProvidersChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;->mProvidersChangedListener:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-interface {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    return-void
.end method
