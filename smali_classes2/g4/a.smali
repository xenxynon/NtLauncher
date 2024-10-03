.class public final Lg4/a;
.super Lcom/android/launcher3/model/WidgetItem;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/content/pm/PackageManager;)V
    .locals 1

    const-string v0, "cardWidgetMetaInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lg4/a;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 0

    iget-object p0, p0, Lg4/a;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    return-object p0
.end method

.method public hasPreviewLayout()Z
    .locals 0

    iget-object p0, p0, Lg4/a;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1

    const-string v0, "otherItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lg4/a;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/model/WidgetItem;->hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isShortcut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
