.class public Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;
.super Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/searchlauncher/SmartspaceQsbWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartSpaceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;-><init>()V

    const-string v0, "smart_space_widget_id"

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 0

    invoke-static {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->lambda$createHost$0(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createHost$0(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 1

    new-instance v0, Lcom/android/searchlauncher/d;

    invoke-direct {v0, p0}, Lcom/android/searchlauncher/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected createBindOptions()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createBindOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attached-launcher-identifier"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.apps.gsa.widget.PREINSTALLED"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createHost()Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
    .locals 3

    new-instance v0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/searchlauncher/e;->a:Lcom/android/searchlauncher/e;

    const/16 v2, 0x403

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;)V

    return-object v0
.end method

.method protected getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    invoke-static {p1}, Lcom/android/searchlauncher/SmartspaceQsbWidget;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
