.class Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field private final mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Lcom/android/launcher3/widget/LauncherWidgetHolder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/IntConsumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    iput-object p3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    return-void
.end method


# virtual methods
.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearViews()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    return-void
.end method

.method public onAppWidgetRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p2    # Landroid/appwidget/AppWidgetProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method protected onProvidersChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
