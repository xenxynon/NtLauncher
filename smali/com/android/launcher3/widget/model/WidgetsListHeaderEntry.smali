.class public final Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
.super Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
.source "SourceFile"


# static fields
.field private static final SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUBTITLE_SEARCH:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsSearchEntry:Z

.field private final mIsWidgetListShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ld0/b;->a:Ld0/b;

    sput-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_SEARCH:Ljava/util/function/BiFunction;

    sget-object v0, Ld0/a;->a:Ld0/a;

    sput-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean p4, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    iput-boolean p5, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->lambda$static$3(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->lambda$static$2(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->lambda$static$1(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;"
        }
    .end annotation

    new-instance v6, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method

.method public static createForSearch(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;"
        }
    .end annotation

    new-instance v6, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method

.method public static synthetic d(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->lambda$static$0(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$static$1(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Ld0/c;->a:Ld0/c;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ", "

    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$static$2(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_1

    instance-of p0, p0, Lg4/a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$static$3(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 5

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ld0/d;->a:Ld0/d;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v3, 0x7f12028f

    const v4, 0x7f120248

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    invoke-static {p0, v3, v0}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, p1}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f12028e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    invoke-static {p0, v3, v0}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0, v4, p1}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-object v2, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    iget-boolean v2, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    iget-boolean p1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_SEARCH:Ljava/util/function/BiFunction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;

    :goto_0
    invoke-interface {v0, p1, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isSearchEntry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    return p0
.end method

.method public isWidgetListShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7

    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v0
.end method
