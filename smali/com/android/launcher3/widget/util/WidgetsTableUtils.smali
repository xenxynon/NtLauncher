.class public final Lcom/android/launcher3/widget/util/WidgetsTableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lf0/a;->g:Lf0/a;

    sput-object v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->lambda$groupWidgetItemsUsingRowPxWithoutReordering$1(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->lambda$static$0(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result p0

    return p0
.end method

.method public static groupWidgetItemsUsingRowPxWithReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/DeviceProfile;",
            "II)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/DeviceProfile;",
            "II)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    div-int v4, p3, v4

    mul-int/lit8 v5, p4, 0x2

    sub-int/2addr v4, v5

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/WidgetItem;->hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lf0/b;

    invoke-direct {v5, p1, p2, v4}, Lf0/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, p2, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static synthetic lambda$groupWidgetItemsUsingRowPxWithoutReordering$1(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z
    .locals 0

    invoke-static {p0, p1, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-ne v0, v3, :cond_4

    iget p0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget p1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-le p0, p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-le v0, v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
