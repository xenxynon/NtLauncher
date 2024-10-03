.class public final Lz4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/i;

.field private static final b:Ln5/e;

.field private static final c:Ljava/util/Comparator;
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

    new-instance v0, Lz4/i;

    invoke-direct {v0}, Lz4/i;-><init>()V

    sput-object v0, Lz4/i;->a:Lz4/i;

    sget-object v0, Lz4/i$a;->g:Lz4/i$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lz4/i;->b:Ln5/e;

    sget-object v0, Lz4/h;->g:Lz4/h;

    sput-object v0, Lz4/i;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 0

    invoke-static {p0, p1}, Lz4/i;->b(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result p0

    return p0
.end method

.method private static final b(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 5

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget p1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    if-ne v1, p0, :cond_3

    return v4

    :cond_3
    if-ne v0, p0, :cond_4

    if-eq v1, p0, :cond_4

    return v3

    :cond_4
    const/4 p0, 0x4

    if-eq v0, p0, :cond_5

    if-ne v1, p0, :cond_5

    return v4

    :cond_5
    if-ne v0, p0, :cond_6

    if-eq v1, p0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method private final d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/widgets/l;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz4/i;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final g(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/WidgetItem;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    iget v4, v1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    iget v4, v1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    iget v2, v2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne v4, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ltz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v4, v3, :cond_7

    if-ge v4, v1, :cond_5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    if-ne v4, v1, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "widgetItemsTableClone.st\u2026lect(Collectors.toList())"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final c(Lcom/nothing/launcher/widgets/b;)Lcom/nothing/launcher/widgets/l;
    .locals 4

    const-string v0, "pkgItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz4/i;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nothing/launcher/widgets/l;

    invoke-virtual {v1}, Lcom/nothing/launcher/widgets/l;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/nothing/launcher/widgets/l;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nothing/launcher/widgets/a;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/nothing/launcher/widgets/l;

    return-object v0
.end method

.method public final e(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "profile"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "widgetItem"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher3/model/WidgetItem;->isShortcut()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07059a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_0
    iget p0, p3, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    add-int/lit8 p0, p0, -0x1

    iget-object p1, p2, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr p0, v0

    iget v0, p3, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    add-int/lit8 v0, v0, -0x1

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, p1

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    check-cast p2, Lj3/a;

    invoke-virtual {p2, p1}, Lj3/a;->o(Landroid/graphics/Point;)V

    iget v1, p3, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p0

    invoke-virtual {p2}, Lj3/a;->u()I

    move-result p0

    invoke-static {v1, p0}, Le6/e;->e(II)I

    move-result p0

    new-instance p2, Landroid/util/Size;

    iget p3, p3, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p3, p1

    add-int/2addr p3, v0

    invoke-direct {p2, p0, p3}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "widgetItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lz4/i;->c:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.android.launcher3.model.WidgetItem>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/d0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lz4/i;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
