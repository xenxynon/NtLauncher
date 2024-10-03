.class public final Lz2/d;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d$a;,
        Lz2/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceRes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public static final synthetic b(Lz2/d;Landroid/content/ComponentName;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout;->allocateWidgetIdAndInsert(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lz2/d;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout;->confirmComponentValid(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lz2/d;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout;->mapToOldWidgetIfNeed(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/DefaultLayoutParser;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v0

    const-string v1, "super.getLayoutElementsMap()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lz2/d$a;

    invoke-direct {v1, p0}, Lz2/d$a;-><init>(Lz2/d;)V

    const-string v2, "nothingwidget"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lz2/d$b;

    invoke-direct {v1, p0}, Lz2/d$b;-><init>(Lz2/d;)V

    const-string p0, "nothingfolder"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
