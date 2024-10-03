.class public final Lcom/nothing/launcher/card/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg2/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/h;->a:Landroid/content/Context;

    sget-object v0, Lg2/k;->g:Lg2/k$a;

    invoke-virtual {v0, p1}, Lg2/k$a;->a(Landroid/content/Context;)Lg2/k;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/h;->b:Lg2/k;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 3

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/card/h;->b(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {v2}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    iget-object p0, p0, Lcom/nothing/launcher/card/h;->a:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final b(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/nothing/cardservice/CardWidgetMetaInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/launcher/card/h;->b:Lg2/k;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lg2/k;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/card/h;->b:Lg2/k;

    invoke-virtual {v0, p1}, Lg2/k;->l(I)Lcom/nothing/cardservice/CardWidgetMetaInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    iget-object p0, p0, Lcom/nothing/launcher/card/h;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/h;->b:Lg2/k;

    invoke-virtual {p0}, Lg2/k;->n()Z

    move-result p0

    return p0
.end method
