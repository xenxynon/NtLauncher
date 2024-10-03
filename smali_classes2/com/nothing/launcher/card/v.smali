.class public final Lcom/nothing/launcher/card/v;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

.field private final b:I

.field private c:Lcom/nothing/cardhost/e;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
    .locals 1

    const-string v0, "cardWidgetMetaInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/v;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->e0()I

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/card/v;->b:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->k0()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->l0()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->i0()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const/16 p1, -0x69

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-void
.end method


# virtual methods
.method public final getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p1, v0, p0}, Lu2/b;->d(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final h()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/v;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method public final i()Lcom/nothing/cardhost/e;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/v;->c:Lcom/nothing/cardhost/e;

    return-object p0
.end method

.method public final j()Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/v;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    return-object p0
.end method

.method public final k()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
    .locals 1

    new-instance v0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    iget-object p0, p0, Lcom/nothing/launcher/card/v;->a:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;-><init>(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V

    return-object v0
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/v;->d:Landroid/os/Bundle;

    return-void
.end method

.method public final m(Lcom/nothing/cardhost/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/v;->c:Lcom/nothing/cardhost/e;

    return-void
.end method
