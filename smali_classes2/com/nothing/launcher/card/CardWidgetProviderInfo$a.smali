.class public final Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/card/CardWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;-><init>(Lkotlin/jvm/internal/i;)V

    invoke-static {p0, p2}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->X(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/nothing/cardservice/CardWidgetMetaInfo;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    const-string v1, "getIDP(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->Y(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "getApplicationInfo(cardI\u2026plicationInfoFlags.of(0))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->Z(Lcom/nothing/launcher/card/CardWidgetProviderInfo;I)V

    :cond_1
    move-object p2, p0

    :goto_0
    return-object p2
.end method
