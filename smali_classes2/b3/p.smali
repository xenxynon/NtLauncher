.class public final Lb3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidget"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p4}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f0b02e9

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setId(I)V

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "widgetManager.getAppWidgetOptions(appWidgetId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p5}, Lb3/p;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-virtual {p1, p5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static final c(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;I)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_0
    return-void
.end method

.method public static final d(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb3/p;->c(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;I)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result p0

    return p0
.end method
