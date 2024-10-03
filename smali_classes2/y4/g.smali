.class public final Ly4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly4/g;

    invoke-direct {v0}, Ly4/g;-><init>()V

    sput-object v0, Ly4/g;->a:Ly4/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Landroid/content/ComponentName;IZ)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "provider"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "addway"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string p2, "launcher_addwgt"

    goto :goto_0

    :cond_0
    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string p2, "launcher_removewgt"

    :goto_0
    invoke-virtual {p1, p2, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_1
    return-void
.end method

.method private final e(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->addWay:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p2, p1, p3}, Ly4/g;->d(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method static synthetic f(Ly4/g;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ly4/g;->e(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 1

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ly4/g;->e(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/launcher/card/s;)V
    .locals 1

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardWidgetInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ly4/g;->e(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final c(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ly4/g;->d(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public final g(Landroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ly4/g;->f(Ly4/g;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;ZILjava/lang/Object;)V

    return-void
.end method
