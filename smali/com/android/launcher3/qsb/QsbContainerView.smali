.class public Lcom/android/launcher3/qsb/QsbContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;,
        Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;,
        Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;,
        Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/qsb/QsbContainerView;->containsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static containsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SEARCH_PROVIDER_PACKAGE_NAME"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v1, Landroid/app/SearchManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
